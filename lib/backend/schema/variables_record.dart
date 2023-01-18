// ignore_for_file: unnecessary_import

import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'variables_record.g.dart';

abstract class VariablesRecord
    implements Built<VariablesRecord, VariablesRecordBuilder> {
  static Serializer<VariablesRecord> get serializer =>
      _$variablesRecordSerializer;

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

  static void _initializeBuilder(VariablesRecordBuilder builder) =>
      builder..slug = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Variables');

  static Stream<VariablesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VariablesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VariablesRecord._();
  factory VariablesRecord([void Function(VariablesRecordBuilder) updates]) =
      _$VariablesRecord;

  static VariablesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVariablesRecordData({
  DocumentReference? creator,
  DateTime? modifiedDate,
  DateTime? createdDate,
  String? slug,
}) {
  final firestoreData = serializers.toFirestore(
    VariablesRecord.serializer,
    VariablesRecord(
      (v) => v
        ..creator = creator
        ..modifiedDate = modifiedDate
        ..createdDate = createdDate
        ..slug = slug,
    ),
  );

  return firestoreData;
}
