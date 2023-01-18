// ignore_for_file: unnecessary_import

import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'phase_record.g.dart';

abstract class PhaseRecord implements Built<PhaseRecord, PhaseRecordBuilder> {
  static Serializer<PhaseRecord> get serializer => _$phaseRecordSerializer;

  @BuiltValueField(wireName: 'Color')
  Color? get color;

  @BuiltValueField(wireName: 'Name')
  String? get name;

  @BuiltValueField(wireName: 'Proposal')
  BuiltList<DocumentReference>? get proposal;

  @BuiltValueField(wireName: 'Creator')
  DocumentReference? get creator;

  @BuiltValueField(wireName: 'Modified_date')
  DateTime? get modifiedDate;

  @BuiltValueField(wireName: 'Created_date')
  DateTime? get createdDate;

  String? get slug;

  @BuiltValueField(wireName: 'Funil')
  DocumentReference? get funil;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PhaseRecordBuilder builder) => builder
    ..name = ''
    ..proposal = ListBuilder()
    ..slug = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('phase');

  static Stream<PhaseRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PhaseRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PhaseRecord._();
  factory PhaseRecord([void Function(PhaseRecordBuilder) updates]) =
      _$PhaseRecord;

  static PhaseRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPhaseRecordData({
  Color? color,
  String? name,
  DocumentReference? creator,
  DateTime? modifiedDate,
  DateTime? createdDate,
  String? slug,
  DocumentReference? funil,
}) {
  final firestoreData = serializers.toFirestore(
    PhaseRecord.serializer,
    PhaseRecord(
      (p) => p
        ..color = color
        ..name = name
        ..proposal = null
        ..creator = creator
        ..modifiedDate = modifiedDate
        ..createdDate = createdDate
        ..slug = slug
        ..funil = funil,
    ),
  );

  return firestoreData;
}
