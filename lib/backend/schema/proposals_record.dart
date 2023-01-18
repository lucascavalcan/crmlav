// ignore_for_file: unnecessary_import

import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'proposals_record.g.dart';

abstract class ProposalsRecord
    implements Built<ProposalsRecord, ProposalsRecordBuilder> {
  static Serializer<ProposalsRecord> get serializer =>
      _$proposalsRecordSerializer;

  String? get agency;

  BuiltList<String>? get notes;

  @BuiltValueField(wireName: 'insurance_policy')
  String? get insurancePolicy;

  BuiltList<DateTime>? get file;

  @BuiltValueField(wireName: 'neighborhood_store')
  String? get neighborhoodStore;

  @BuiltValueField(wireName: 'city_store')
  String? get cityStore;

  String? get cep;

  String? get complement;

  String? get bank;

  String? get cnpj;

  DocumentReference? get consultant;

  int? get account;

  @BuiltValueField(wireName: 'cpf_franchisee')
  String? get cpfFranchisee;

  String? get code;

  @BuiltValueField(wireName: 'cof_date')
  DateTime? get cofDate;

  @BuiltValueField(wireName: 'send_date')
  DateTime? get sendDate;

  @BuiltValueField(wireName: 'openening_date')
  DateTime? get openeningDate;

  DateTime? get birthday;

  @BuiltValueField(wireName: 'contract_date')
  DateTime? get contractDate;

  String? get description;

  @BuiltValueField(wireName: 'email_franchisee')
  String? get emailFranchisee;

  @BuiltValueField(wireName: 'email_locator')
  String? get emailLocator;

  @BuiltValueField(wireName: 'lesse_company')
  String? get lesseCompany;

  @BuiltValueField(wireName: 'store_address')
  String? get storeAddress;

  @BuiltValueField(wireName: 'franchisee_address')
  String? get franchiseeAddress;

  @BuiltValueField(wireName: 'civil_status')
  String? get civilStatus;

  String? get franchisee;

  @BuiltValueField(wireName: 'gateway_code')
  String? get gatewayCode;

  @BuiltValueField(wireName: 'opening_time')
  DateTime? get openingTime;

  @BuiltValueField(wireName: 'municipal_registration')
  int? get municipalRegistration;

  @BuiltValueField(wireName: 'loc_equipment')
  String? get locEquipment;

  String? get login;

  String? get logo;

  @BuiltValueField(wireName: 'brand_machines')
  String? get brandMachines;

  @BuiltValueField(wireName: 'release_method')
  String? get releaseMethod;

  String? get nationality;

  @BuiltValueField(wireName: 'company_name')
  String? get companyName;

  @BuiltValueField(wireName: 'locator_name')
  String? get locatorName;

  @BuiltValueField(wireName: 'fantasy_name')
  String? get fantasyName;

  int? get number;

  @BuiltValueField(wireName: 'store_address_number')
  int? get storeAddressNumber;

  @BuiltValueField(wireName: 'franchisee_address_number')
  int? get franchiseeAddressNumber;

  @BuiltValueField(wireName: 'issuing_agency')
  String? get issuingAgency;

  int? get request;

  String? get pendencies;

  @BuiltValueField(wireName: 'franchisee_occupation')
  String? get franchiseeOccupation;

  @BuiltValueField(wireName: 'corporate_name')
  String? get corporateName;

  bool? get received;

  @BuiltValueField(wireName: 'restart_totem')
  String? get restartTotem;

  @BuiltValueField(wireName: 'rg_franchisee')
  String? get rgFranchisee;

  String? get insurer;

  @BuiltValueField(wireName: 'password_site')
  String? get passwordSite;

  @BuiltValueField(wireName: 'serial_pinpad')
  String? get serialPinpad;

  @BuiltValueField(wireName: 'site_twonhall')
  String? get siteTwonhall;

  @BuiltValueField(wireName: 'status_store')
  String? get statusStore;

  int? get stonecode;

  @BuiltValueField(wireName: 'phone_number01')
  String? get phoneNumber01;

  @BuiltValueField(wireName: 'phone_number02')
  String? get phoneNumber02;

  @BuiltValueField(wireName: 'phone_number_locator')
  String? get phoneNumberLocator;

  @BuiltValueField(wireName: 'machine_type')
  String? get machineType;

  @BuiltValueField(wireName: 'proposed_title')
  String? get proposedTitle;

  String? get uf;

  @BuiltValueField(wireName: 'proposed_estimated_value')
  double? get proposedEstimatedValue;

  DocumentReference? get phase;

  DocumentReference? get funil;

  DocumentReference? get lead;

  @BuiltValueField(wireName: 'name_lead')
  DocumentReference? get nameLead;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProposalsRecordBuilder builder) => builder
    ..agency = ''
    ..notes = ListBuilder()
    ..insurancePolicy = ''
    ..file = ListBuilder()
    ..neighborhoodStore = ''
    ..cityStore = ''
    ..cep = ''
    ..complement = ''
    ..bank = ''
    ..cnpj = ''
    ..account = 0
    ..cpfFranchisee = ''
    ..code = ''
    ..description = ''
    ..emailFranchisee = ''
    ..emailLocator = ''
    ..lesseCompany = ''
    ..storeAddress = ''
    ..franchiseeAddress = ''
    ..civilStatus = ''
    ..franchisee = ''
    ..gatewayCode = ''
    ..municipalRegistration = 0
    ..locEquipment = ''
    ..login = ''
    ..logo = ''
    ..brandMachines = ''
    ..releaseMethod = ''
    ..nationality = ''
    ..companyName = ''
    ..locatorName = ''
    ..fantasyName = ''
    ..number = 0
    ..storeAddressNumber = 0
    ..franchiseeAddressNumber = 0
    ..issuingAgency = ''
    ..request = 0
    ..pendencies = ''
    ..franchiseeOccupation = ''
    ..corporateName = ''
    ..received = false
    ..restartTotem = ''
    ..rgFranchisee = ''
    ..insurer = ''
    ..passwordSite = ''
    ..serialPinpad = ''
    ..siteTwonhall = ''
    ..statusStore = ''
    ..stonecode = 0
    ..phoneNumber01 = ''
    ..phoneNumber02 = ''
    ..phoneNumberLocator = ''
    ..machineType = ''
    ..proposedTitle = ''
    ..uf = ''
    ..proposedEstimatedValue = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('proposals');

  static Stream<ProposalsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProposalsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProposalsRecord._();
  factory ProposalsRecord([void Function(ProposalsRecordBuilder) updates]) =
      _$ProposalsRecord;

  static ProposalsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProposalsRecordData({
  String? agency,
  String? insurancePolicy,
  String? neighborhoodStore,
  String? cityStore,
  String? cep,
  String? complement,
  String? bank,
  String? cnpj,
  DocumentReference? consultant,
  int? account,
  String? cpfFranchisee,
  String? code,
  DateTime? cofDate,
  DateTime? sendDate,
  DateTime? openeningDate,
  DateTime? birthday,
  DateTime? contractDate,
  String? description,
  String? emailFranchisee,
  String? emailLocator,
  String? lesseCompany,
  String? storeAddress,
  String? franchiseeAddress,
  String? civilStatus,
  String? franchisee,
  String? gatewayCode,
  DateTime? openingTime,
  int? municipalRegistration,
  String? locEquipment,
  String? login,
  String? logo,
  String? brandMachines,
  String? releaseMethod,
  String? nationality,
  String? companyName,
  String? locatorName,
  String? fantasyName,
  int? number,
  int? storeAddressNumber,
  int? franchiseeAddressNumber,
  String? issuingAgency,
  int? request,
  String? pendencies,
  String? franchiseeOccupation,
  String? corporateName,
  bool? received,
  String? restartTotem,
  String? rgFranchisee,
  String? insurer,
  String? passwordSite,
  String? serialPinpad,
  String? siteTwonhall,
  String? statusStore,
  int? stonecode,
  String? phoneNumber01,
  String? phoneNumber02,
  String? phoneNumberLocator,
  String? machineType,
  String? proposedTitle,
  String? uf,
  double? proposedEstimatedValue,
  DocumentReference? phase,
  DocumentReference? funil,
  DocumentReference? lead,
  DocumentReference? nameLead,
}) {
  final firestoreData = serializers.toFirestore(
    ProposalsRecord.serializer,
    ProposalsRecord(
      (p) => p
        ..agency = agency
        ..notes = null
        ..insurancePolicy = insurancePolicy
        ..file = null
        ..neighborhoodStore = neighborhoodStore
        ..cityStore = cityStore
        ..cep = cep
        ..complement = complement
        ..bank = bank
        ..cnpj = cnpj
        ..consultant = consultant
        ..account = account
        ..cpfFranchisee = cpfFranchisee
        ..code = code
        ..cofDate = cofDate
        ..sendDate = sendDate
        ..openeningDate = openeningDate
        ..birthday = birthday
        ..contractDate = contractDate
        ..description = description
        ..emailFranchisee = emailFranchisee
        ..emailLocator = emailLocator
        ..lesseCompany = lesseCompany
        ..storeAddress = storeAddress
        ..franchiseeAddress = franchiseeAddress
        ..civilStatus = civilStatus
        ..franchisee = franchisee
        ..gatewayCode = gatewayCode
        ..openingTime = openingTime
        ..municipalRegistration = municipalRegistration
        ..locEquipment = locEquipment
        ..login = login
        ..logo = logo
        ..brandMachines = brandMachines
        ..releaseMethod = releaseMethod
        ..nationality = nationality
        ..companyName = companyName
        ..locatorName = locatorName
        ..fantasyName = fantasyName
        ..number = number
        ..storeAddressNumber = storeAddressNumber
        ..franchiseeAddressNumber = franchiseeAddressNumber
        ..issuingAgency = issuingAgency
        ..request = request
        ..pendencies = pendencies
        ..franchiseeOccupation = franchiseeOccupation
        ..corporateName = corporateName
        ..received = received
        ..restartTotem = restartTotem
        ..rgFranchisee = rgFranchisee
        ..insurer = insurer
        ..passwordSite = passwordSite
        ..serialPinpad = serialPinpad
        ..siteTwonhall = siteTwonhall
        ..statusStore = statusStore
        ..stonecode = stonecode
        ..phoneNumber01 = phoneNumber01
        ..phoneNumber02 = phoneNumber02
        ..phoneNumberLocator = phoneNumberLocator
        ..machineType = machineType
        ..proposedTitle = proposedTitle
        ..uf = uf
        ..proposedEstimatedValue = proposedEstimatedValue
        ..phase = phase
        ..funil = funil
        ..lead = lead
        ..nameLead = nameLead,
    ),
  );

  return firestoreData;
}
