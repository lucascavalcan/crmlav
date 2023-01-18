// ignore_for_file: unnecessary_import

import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'data_file_record.g.dart';

abstract class DataFileRecord
    implements Built<DataFileRecord, DataFileRecordBuilder> {
  static Serializer<DataFileRecord> get serializer =>
      _$dataFileRecordSerializer;

  @BuiltValueField(wireName: 'Creator')
  DocumentReference? get creator;

  @BuiltValueField(wireName: 'modified_data')
  DateTime? get modifiedData;

  @BuiltValueField(wireName: 'created_data')
  DateTime? get createdData;

  String? get slug;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DataFileRecordBuilder builder) =>
      builder..slug = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Data_file');

  static Stream<DataFileRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DataFileRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DataFileRecord._();
  factory DataFileRecord([void Function(DataFileRecordBuilder) updates]) =
      _$DataFileRecord;

  static DataFileRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDataFileRecordData({
  DocumentReference? creator,
  DateTime? modifiedData,
  DateTime? createdData,
  String? slug,
}) {
  final firestoreData = serializers.toFirestore(
    DataFileRecord.serializer,
    DataFileRecord(
      (d) => d
        ..creator = creator
        ..modifiedData = modifiedData
        ..createdData = createdData
        ..slug = slug,
    ),
  );

  return firestoreData;
}
