import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'magic_user_record.g.dart';

abstract class MagicUserRecord
    implements Built<MagicUserRecord, MagicUserRecordBuilder> {
  static Serializer<MagicUserRecord> get serializer =>
      _$magicUserRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'link_opened')
  bool? get linkOpened;

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

  static void _initializeBuilder(MagicUserRecordBuilder builder) => builder
    ..email = ''
    ..linkOpened = false
    ..slug = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Magic_user');

  static Stream<MagicUserRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MagicUserRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MagicUserRecord._();
  factory MagicUserRecord([void Function(MagicUserRecordBuilder) updates]) =
      _$MagicUserRecord;

  static MagicUserRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMagicUserRecordData({
  String? email,
  bool? linkOpened,
  DocumentReference? creator,
  DateTime? modifiedDate,
  DateTime? createdDate,
  String? slug,
}) {
  final firestoreData = serializers.toFirestore(
    MagicUserRecord.serializer,
    MagicUserRecord(
      (m) => m
        ..email = email
        ..linkOpened = linkOpened
        ..creator = creator
        ..modifiedDate = modifiedDate
        ..createdDate = createdDate
        ..slug = slug,
    ),
  );

  return firestoreData;
}
