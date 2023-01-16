import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'lead_record.g.dart';

abstract class LeadRecord implements Built<LeadRecord, LeadRecordBuilder> {
  static Serializer<LeadRecord> get serializer => _$leadRecordSerializer;

  @BuiltValueField(wireName: 'is_franchise_name_franchisee')
  String? get isFranchiseNameFranchisee;

  @BuiltValueField(wireName: 'insurance_policy')
  String? get insurancePolicy;

  String? get city;

  String? get consultor;

  bool? get hired;

  @BuiltValueField(wireName: 'stamp_date')
  DateTime? get stampDate;

  @BuiltValueField(wireName: 'contact_date')
  DateTime? get contactDate;

  DateTime? get birthday;

  String? get email;

  @BuiltValueField(wireName: 'locomotion_availability')
  String? get locomotionAvailability;

  String? get company;

  String? get address;

  @BuiltValueField(wireName: 'civil_status')
  String? get civilStatus;

  DocumentReference? get phase;

  @BuiltValueField(wireName: 'nationality_lead')
  String? get nationalityLead;

  @BuiltValueField(wireName: 'full_name')
  String? get fullName;

  String? get number;

  String? get observations;

  String? get occupation;

  DocumentReference? get proposal;

  @BuiltValueField(wireName: 'number_interviews')
  int? get numberInterviews;

  String? get disponibility;

  DocumentReference? get status;

  String? get fone;

  @BuiltValueField(wireName: 'fone1_proposal')
  String? get fone1Proposal;

  @BuiltValueField(wireName: 'fone2_proposal')
  String? get fone2Proposal;

  @BuiltValueField(wireName: 'available_140mil')
  bool? get available140mil;

  @BuiltValueField(wireName: 'knowledge_in_laundry')
  String? get knowledgeInLaundry;

  @BuiltValueField(wireName: 'current_residence')
  String? get currentResidence;

  DocumentReference? get creator;

  @BuiltValueField(wireName: 'modified_date')
  DateTime? get modifiedDate;

  @BuiltValueField(wireName: 'created_date')
  DateTime? get createdDate;

  String? get slug;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LeadRecordBuilder builder) => builder
    ..isFranchiseNameFranchisee = ''
    ..insurancePolicy = ''
    ..city = ''
    ..consultor = ''
    ..hired = false
    ..email = ''
    ..locomotionAvailability = ''
    ..company = ''
    ..address = ''
    ..civilStatus = ''
    ..nationalityLead = ''
    ..fullName = ''
    ..number = ''
    ..observations = ''
    ..occupation = ''
    ..numberInterviews = 0
    ..disponibility = ''
    ..fone = ''
    ..fone1Proposal = ''
    ..fone2Proposal = ''
    ..available140mil = false
    ..knowledgeInLaundry = ''
    ..currentResidence = ''
    ..slug = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Lead');

  static Stream<LeadRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LeadRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LeadRecord._();
  factory LeadRecord([void Function(LeadRecordBuilder) updates]) = _$LeadRecord;

  static LeadRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLeadRecordData({
  String? isFranchiseNameFranchisee,
  String? insurancePolicy,
  String? city,
  String? consultor,
  bool? hired,
  DateTime? stampDate,
  DateTime? contactDate,
  DateTime? birthday,
  String? email,
  String? locomotionAvailability,
  String? company,
  String? address,
  String? civilStatus,
  DocumentReference? phase,
  String? nationalityLead,
  String? fullName,
  String? number,
  String? observations,
  String? occupation,
  DocumentReference? proposal,
  int? numberInterviews,
  String? disponibility,
  DocumentReference? status,
  String? fone,
  String? fone1Proposal,
  String? fone2Proposal,
  bool? available140mil,
  String? knowledgeInLaundry,
  String? currentResidence,
  DocumentReference? creator,
  DateTime? modifiedDate,
  DateTime? createdDate,
  String? slug,
}) {
  final firestoreData = serializers.toFirestore(
    LeadRecord.serializer,
    LeadRecord(
      (l) => l
        ..isFranchiseNameFranchisee = isFranchiseNameFranchisee
        ..insurancePolicy = insurancePolicy
        ..city = city
        ..consultor = consultor
        ..hired = hired
        ..stampDate = stampDate
        ..contactDate = contactDate
        ..birthday = birthday
        ..email = email
        ..locomotionAvailability = locomotionAvailability
        ..company = company
        ..address = address
        ..civilStatus = civilStatus
        ..phase = phase
        ..nationalityLead = nationalityLead
        ..fullName = fullName
        ..number = number
        ..observations = observations
        ..occupation = occupation
        ..proposal = proposal
        ..numberInterviews = numberInterviews
        ..disponibility = disponibility
        ..status = status
        ..fone = fone
        ..fone1Proposal = fone1Proposal
        ..fone2Proposal = fone2Proposal
        ..available140mil = available140mil
        ..knowledgeInLaundry = knowledgeInLaundry
        ..currentResidence = currentResidence
        ..creator = creator
        ..modifiedDate = modifiedDate
        ..createdDate = createdDate
        ..slug = slug,
    ),
  );

  return firestoreData;
}
