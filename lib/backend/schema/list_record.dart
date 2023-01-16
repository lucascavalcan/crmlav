import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'list_record.g.dart';

abstract class ListRecord implements Built<ListRecord, ListRecordBuilder> {
  static Serializer<ListRecord> get serializer => _$listRecordSerializer;

  @BuiltValueField(wireName: 'Board')
  DocumentReference? get board;

  @BuiltValueField(wireName: 'Task_list')
  BuiltList<DocumentReference>? get taskList;

  @BuiltValueField(wireName: 'Name')
  String? get name;

  @BuiltValueField(wireName: 'Creator')
  DocumentReference? get creator;

  @BuiltValueField(wireName: 'Modified_date')
  DateTime? get modifiedDate;

  @BuiltValueField(wireName: 'Created_date')
  DateTime? get createdDate;

  @BuiltValueField(wireName: 'Slug')
  String? get slug;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ListRecordBuilder builder) => builder
    ..taskList = ListBuilder()
    ..name = ''
    ..slug = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('List');

  static Stream<ListRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ListRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ListRecord._();
  factory ListRecord([void Function(ListRecordBuilder) updates]) = _$ListRecord;

  static ListRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createListRecordData({
  DocumentReference? board,
  String? name,
  DocumentReference? creator,
  DateTime? modifiedDate,
  DateTime? createdDate,
  String? slug,
}) {
  final firestoreData = serializers.toFirestore(
    ListRecord.serializer,
    ListRecord(
      (l) => l
        ..board = board
        ..taskList = null
        ..name = name
        ..creator = creator
        ..modifiedDate = modifiedDate
        ..createdDate = createdDate
        ..slug = slug,
    ),
  );

  return firestoreData;
}
