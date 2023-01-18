// ignore_for_file: unnecessary_import

import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'board_record.g.dart';

abstract class BoardRecord implements Built<BoardRecord, BoardRecordBuilder> {
  static Serializer<BoardRecord> get serializer => _$boardRecordSerializer;

  @BuiltValueField(wireName: 'Creator')
  DocumentReference? get creator;

  @BuiltValueField(wireName: 'modified_date')
  DateTime? get modifiedDate;

  @BuiltValueField(wireName: 'cretaed_date')
  DateTime? get cretaedDate;

  String? get slug;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BoardRecordBuilder builder) =>
      builder..slug = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Board');

  static Stream<BoardRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BoardRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BoardRecord._();
  factory BoardRecord([void Function(BoardRecordBuilder) updates]) =
      _$BoardRecord;

  static BoardRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBoardRecordData({
  DocumentReference? creator,
  DateTime? modifiedDate,
  DateTime? cretaedDate,
  String? slug,
}) {
  final firestoreData = serializers.toFirestore(
    BoardRecord.serializer,
    BoardRecord(
      (b) => b
        ..creator = creator
        ..modifiedDate = modifiedDate
        ..cretaedDate = cretaedDate
        ..slug = slug,
    ),
  );

  return firestoreData;
}
