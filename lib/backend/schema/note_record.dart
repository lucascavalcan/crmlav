import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'note_record.g.dart';

abstract class NoteRecord implements Built<NoteRecord, NoteRecordBuilder> {
  static Serializer<NoteRecord> get serializer => _$noteRecordSerializer;

  @BuiltValueField(wireName: 'Content')
  String? get content;

  @BuiltValueField(wireName: 'End')
  DateTime? get end;

  @BuiltValueField(wireName: 'Start')
  DateTime? get start;

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

  static void _initializeBuilder(NoteRecordBuilder builder) => builder
    ..content = ''
    ..slug = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Note');

  static Stream<NoteRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NoteRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NoteRecord._();
  factory NoteRecord([void Function(NoteRecordBuilder) updates]) = _$NoteRecord;

  static NoteRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNoteRecordData({
  String? content,
  DateTime? end,
  DateTime? start,
  DocumentReference? creator,
  DateTime? modifiedDate,
  DateTime? createdDate,
  String? slug,
}) {
  final firestoreData = serializers.toFirestore(
    NoteRecord.serializer,
    NoteRecord(
      (n) => n
        ..content = content
        ..end = end
        ..start = start
        ..creator = creator
        ..modifiedDate = modifiedDate
        ..createdDate = createdDate
        ..slug = slug,
    ),
  );

  return firestoreData;
}
