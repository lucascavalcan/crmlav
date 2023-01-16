import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'scheduling_record.g.dart';

abstract class SchedulingRecord
    implements Built<SchedulingRecord, SchedulingRecordBuilder> {
  static Serializer<SchedulingRecord> get serializer =>
      _$schedulingRecordSerializer;

  String? get scheduler;

  String? get consultant;

  @BuiltValueField(wireName: 'color_name')
  Color? get colorName;

  @BuiltValueField(wireName: 'color_hex')
  String? get colorHex;

  @BuiltValueField(wireName: 'date_end')
  DateTime? get dateEnd;

  @BuiltValueField(wireName: 'date_start')
  DateTime? get dateStart;

  @BuiltValueField(wireName: 'interview_done')
  bool? get interviewDone;

  @BuiltValueField(wireName: 'name_lead')
  String? get nameLead;

  String? get observations;

  @BuiltValueField(wireName: 'number_of_interviews')
  int? get numberOfInterviews;

  DocumentReference? get creator;

  @BuiltValueField(wireName: 'modified_date')
  DateTime? get modifiedDate;

  @BuiltValueField(wireName: 'created_date')
  DateTime? get createdDate;

  String? get slug;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SchedulingRecordBuilder builder) => builder
    ..scheduler = ''
    ..consultant = ''
    ..colorHex = ''
    ..interviewDone = false
    ..nameLead = ''
    ..observations = ''
    ..numberOfInterviews = 0
    ..slug = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Scheduling');

  static Stream<SchedulingRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SchedulingRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SchedulingRecord._();
  factory SchedulingRecord([void Function(SchedulingRecordBuilder) updates]) =
      _$SchedulingRecord;

  static SchedulingRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSchedulingRecordData({
  String? scheduler,
  String? consultant,
  Color? colorName,
  String? colorHex,
  DateTime? dateEnd,
  DateTime? dateStart,
  bool? interviewDone,
  String? nameLead,
  String? observations,
  int? numberOfInterviews,
  DocumentReference? creator,
  DateTime? modifiedDate,
  DateTime? createdDate,
  String? slug,
}) {
  final firestoreData = serializers.toFirestore(
    SchedulingRecord.serializer,
    SchedulingRecord(
      (s) => s
        ..scheduler = scheduler
        ..consultant = consultant
        ..colorName = colorName
        ..colorHex = colorHex
        ..dateEnd = dateEnd
        ..dateStart = dateStart
        ..interviewDone = interviewDone
        ..nameLead = nameLead
        ..observations = observations
        ..numberOfInterviews = numberOfInterviews
        ..creator = creator
        ..modifiedDate = modifiedDate
        ..createdDate = createdDate
        ..slug = slug,
    ),
  );

  return firestoreData;
}
