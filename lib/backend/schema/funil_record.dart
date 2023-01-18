// ignore_for_file: unnecessary_import

import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'funil_record.g.dart';

abstract class FunilRecord implements Built<FunilRecord, FunilRecordBuilder> {
  static Serializer<FunilRecord> get serializer => _$funilRecordSerializer;

  @BuiltValueField(wireName: 'Phase')
  BuiltList<DocumentReference>? get phase;

  @BuiltValueField(wireName: 'Members')
  BuiltList<DocumentReference>? get members;

  @BuiltValueField(wireName: 'Name')
  String? get name;

  @BuiltValueField(wireName: 'Creator')
  DocumentReference? get creator;

  @BuiltValueField(wireName: 'Modified_date')
  DateTime? get modifiedDate;

  @BuiltValueField(wireName: 'Created_date')
  DateTime? get createdDate;

  String? get slug;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FunilRecordBuilder builder) => builder
    ..phase = ListBuilder()
    ..members = ListBuilder()
    ..name = ''
    ..slug = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Funil');

  static Stream<FunilRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FunilRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FunilRecord._();
  factory FunilRecord([void Function(FunilRecordBuilder) updates]) =
      _$FunilRecord;

  static FunilRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFunilRecordData({
  String? name,
  DocumentReference? creator,
  DateTime? modifiedDate,
  DateTime? createdDate,
  String? slug,
}) {
  final firestoreData = serializers.toFirestore(
    FunilRecord.serializer,
    FunilRecord(
      (f) => f
        ..phase = null
        ..members = null
        ..name = name
        ..creator = creator
        ..modifiedDate = modifiedDate
        ..createdDate = createdDate
        ..slug = slug,
    ),
  );

  return firestoreData;
}
