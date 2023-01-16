// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proposals_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProposalsRecord> _$proposalsRecordSerializer =
    new _$ProposalsRecordSerializer();

class _$ProposalsRecordSerializer
    implements StructuredSerializer<ProposalsRecord> {
  @override
  final Iterable<Type> types = const [ProposalsRecord, _$ProposalsRecord];
  @override
  final String wireName = 'ProposalsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProposalsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.agency;
    if (value != null) {
      result
        ..add('agency')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.notes;
    if (value != null) {
      result
        ..add('notes')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.insurancePolicy;
    if (value != null) {
      result
        ..add('insurance_policy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.file;
    if (value != null) {
      result
        ..add('file')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(DateTime)])));
    }
    value = object.neighborhoodStore;
    if (value != null) {
      result
        ..add('neighborhood_store')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cityStore;
    if (value != null) {
      result
        ..add('city_store')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cep;
    if (value != null) {
      result
        ..add('cep')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.complement;
    if (value != null) {
      result
        ..add('complement')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bank;
    if (value != null) {
      result
        ..add('bank')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cnpj;
    if (value != null) {
      result
        ..add('cnpj')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.consultant;
    if (value != null) {
      result
        ..add('consultant')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.account;
    if (value != null) {
      result
        ..add('account')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cpfFranchisee;
    if (value != null) {
      result
        ..add('cpf_franchisee')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cofDate;
    if (value != null) {
      result
        ..add('cof_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.sendDate;
    if (value != null) {
      result
        ..add('send_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.openeningDate;
    if (value != null) {
      result
        ..add('openening_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.birthday;
    if (value != null) {
      result
        ..add('birthday')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.contractDate;
    if (value != null) {
      result
        ..add('contract_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.emailFranchisee;
    if (value != null) {
      result
        ..add('email_franchisee')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.emailLocator;
    if (value != null) {
      result
        ..add('email_locator')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lesseCompany;
    if (value != null) {
      result
        ..add('lesse_company')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.storeAddress;
    if (value != null) {
      result
        ..add('store_address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.franchiseeAddress;
    if (value != null) {
      result
        ..add('franchisee_address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.civilStatus;
    if (value != null) {
      result
        ..add('civil_status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.franchisee;
    if (value != null) {
      result
        ..add('franchisee')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gatewayCode;
    if (value != null) {
      result
        ..add('gateway_code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.openingTime;
    if (value != null) {
      result
        ..add('opening_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.municipalRegistration;
    if (value != null) {
      result
        ..add('municipal_registration')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.locEquipment;
    if (value != null) {
      result
        ..add('loc_equipment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.login;
    if (value != null) {
      result
        ..add('login')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.logo;
    if (value != null) {
      result
        ..add('logo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.brandMachines;
    if (value != null) {
      result
        ..add('brand_machines')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.releaseMethod;
    if (value != null) {
      result
        ..add('release_method')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nationality;
    if (value != null) {
      result
        ..add('nationality')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.companyName;
    if (value != null) {
      result
        ..add('company_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.locatorName;
    if (value != null) {
      result
        ..add('locator_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fantasyName;
    if (value != null) {
      result
        ..add('fantasy_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.number;
    if (value != null) {
      result
        ..add('number')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.storeAddressNumber;
    if (value != null) {
      result
        ..add('store_address_number')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.franchiseeAddressNumber;
    if (value != null) {
      result
        ..add('franchisee_address_number')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.issuingAgency;
    if (value != null) {
      result
        ..add('issuing_agency')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.request;
    if (value != null) {
      result
        ..add('request')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.pendencies;
    if (value != null) {
      result
        ..add('pendencies')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.franchiseeOccupation;
    if (value != null) {
      result
        ..add('franchisee_occupation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.corporateName;
    if (value != null) {
      result
        ..add('corporate_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.received;
    if (value != null) {
      result
        ..add('received')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.restartTotem;
    if (value != null) {
      result
        ..add('restart_totem')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rgFranchisee;
    if (value != null) {
      result
        ..add('rg_franchisee')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.insurer;
    if (value != null) {
      result
        ..add('insurer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.passwordSite;
    if (value != null) {
      result
        ..add('password_site')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.serialPinpad;
    if (value != null) {
      result
        ..add('serial_pinpad')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.siteTwonhall;
    if (value != null) {
      result
        ..add('site_twonhall')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.statusStore;
    if (value != null) {
      result
        ..add('status_store')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.stonecode;
    if (value != null) {
      result
        ..add('stonecode')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.phoneNumber01;
    if (value != null) {
      result
        ..add('phone_number01')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber02;
    if (value != null) {
      result
        ..add('phone_number02')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumberLocator;
    if (value != null) {
      result
        ..add('phone_number_locator')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.machineType;
    if (value != null) {
      result
        ..add('machine_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.proposedTitle;
    if (value != null) {
      result
        ..add('proposed_title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uf;
    if (value != null) {
      result
        ..add('uf')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.proposedEstimatedValue;
    if (value != null) {
      result
        ..add('proposed_estimated_value')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.phase;
    if (value != null) {
      result
        ..add('phase')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.funil;
    if (value != null) {
      result
        ..add('funil')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.lead;
    if (value != null) {
      result
        ..add('lead')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.nameLead;
    if (value != null) {
      result
        ..add('name_lead')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ProposalsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProposalsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'agency':
          result.agency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'notes':
          result.notes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'insurance_policy':
          result.insurancePolicy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'file':
          result.file.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(DateTime)]))!
              as BuiltList<Object?>);
          break;
        case 'neighborhood_store':
          result.neighborhoodStore = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'city_store':
          result.cityStore = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cep':
          result.cep = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'complement':
          result.complement = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bank':
          result.bank = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cnpj':
          result.cnpj = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'consultant':
          result.consultant = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'account':
          result.account = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'cpf_franchisee':
          result.cpfFranchisee = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cof_date':
          result.cofDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'send_date':
          result.sendDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'openening_date':
          result.openeningDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'birthday':
          result.birthday = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'contract_date':
          result.contractDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email_franchisee':
          result.emailFranchisee = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email_locator':
          result.emailLocator = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lesse_company':
          result.lesseCompany = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'store_address':
          result.storeAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'franchisee_address':
          result.franchiseeAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'civil_status':
          result.civilStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'franchisee':
          result.franchisee = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gateway_code':
          result.gatewayCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'opening_time':
          result.openingTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'municipal_registration':
          result.municipalRegistration = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'loc_equipment':
          result.locEquipment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'login':
          result.login = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'logo':
          result.logo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'brand_machines':
          result.brandMachines = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'release_method':
          result.releaseMethod = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nationality':
          result.nationality = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'company_name':
          result.companyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'locator_name':
          result.locatorName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fantasy_name':
          result.fantasyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'store_address_number':
          result.storeAddressNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'franchisee_address_number':
          result.franchiseeAddressNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'issuing_agency':
          result.issuingAgency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'request':
          result.request = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'pendencies':
          result.pendencies = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'franchisee_occupation':
          result.franchiseeOccupation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'corporate_name':
          result.corporateName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'received':
          result.received = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'restart_totem':
          result.restartTotem = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'rg_franchisee':
          result.rgFranchisee = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'insurer':
          result.insurer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password_site':
          result.passwordSite = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'serial_pinpad':
          result.serialPinpad = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'site_twonhall':
          result.siteTwonhall = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status_store':
          result.statusStore = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'stonecode':
          result.stonecode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'phone_number01':
          result.phoneNumber01 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone_number02':
          result.phoneNumber02 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone_number_locator':
          result.phoneNumberLocator = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'machine_type':
          result.machineType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'proposed_title':
          result.proposedTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uf':
          result.uf = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'proposed_estimated_value':
          result.proposedEstimatedValue = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'phase':
          result.phase = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'funil':
          result.funil = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'lead':
          result.lead = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'name_lead':
          result.nameLead = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ProposalsRecord extends ProposalsRecord {
  @override
  final String? agency;
  @override
  final BuiltList<String>? notes;
  @override
  final String? insurancePolicy;
  @override
  final BuiltList<DateTime>? file;
  @override
  final String? neighborhoodStore;
  @override
  final String? cityStore;
  @override
  final String? cep;
  @override
  final String? complement;
  @override
  final String? bank;
  @override
  final String? cnpj;
  @override
  final DocumentReference<Object?>? consultant;
  @override
  final int? account;
  @override
  final String? cpfFranchisee;
  @override
  final String? code;
  @override
  final DateTime? cofDate;
  @override
  final DateTime? sendDate;
  @override
  final DateTime? openeningDate;
  @override
  final DateTime? birthday;
  @override
  final DateTime? contractDate;
  @override
  final String? description;
  @override
  final String? emailFranchisee;
  @override
  final String? emailLocator;
  @override
  final String? lesseCompany;
  @override
  final String? storeAddress;
  @override
  final String? franchiseeAddress;
  @override
  final String? civilStatus;
  @override
  final String? franchisee;
  @override
  final String? gatewayCode;
  @override
  final DateTime? openingTime;
  @override
  final int? municipalRegistration;
  @override
  final String? locEquipment;
  @override
  final String? login;
  @override
  final String? logo;
  @override
  final String? brandMachines;
  @override
  final String? releaseMethod;
  @override
  final String? nationality;
  @override
  final String? companyName;
  @override
  final String? locatorName;
  @override
  final String? fantasyName;
  @override
  final int? number;
  @override
  final int? storeAddressNumber;
  @override
  final int? franchiseeAddressNumber;
  @override
  final String? issuingAgency;
  @override
  final int? request;
  @override
  final String? pendencies;
  @override
  final String? franchiseeOccupation;
  @override
  final String? corporateName;
  @override
  final bool? received;
  @override
  final String? restartTotem;
  @override
  final String? rgFranchisee;
  @override
  final String? insurer;
  @override
  final String? passwordSite;
  @override
  final String? serialPinpad;
  @override
  final String? siteTwonhall;
  @override
  final String? statusStore;
  @override
  final int? stonecode;
  @override
  final String? phoneNumber01;
  @override
  final String? phoneNumber02;
  @override
  final String? phoneNumberLocator;
  @override
  final String? machineType;
  @override
  final String? proposedTitle;
  @override
  final String? uf;
  @override
  final double? proposedEstimatedValue;
  @override
  final DocumentReference<Object?>? phase;
  @override
  final DocumentReference<Object?>? funil;
  @override
  final DocumentReference<Object?>? lead;
  @override
  final DocumentReference<Object?>? nameLead;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProposalsRecord([void Function(ProposalsRecordBuilder)? updates]) =>
      (new ProposalsRecordBuilder()..update(updates))._build();

  _$ProposalsRecord._(
      {this.agency,
      this.notes,
      this.insurancePolicy,
      this.file,
      this.neighborhoodStore,
      this.cityStore,
      this.cep,
      this.complement,
      this.bank,
      this.cnpj,
      this.consultant,
      this.account,
      this.cpfFranchisee,
      this.code,
      this.cofDate,
      this.sendDate,
      this.openeningDate,
      this.birthday,
      this.contractDate,
      this.description,
      this.emailFranchisee,
      this.emailLocator,
      this.lesseCompany,
      this.storeAddress,
      this.franchiseeAddress,
      this.civilStatus,
      this.franchisee,
      this.gatewayCode,
      this.openingTime,
      this.municipalRegistration,
      this.locEquipment,
      this.login,
      this.logo,
      this.brandMachines,
      this.releaseMethod,
      this.nationality,
      this.companyName,
      this.locatorName,
      this.fantasyName,
      this.number,
      this.storeAddressNumber,
      this.franchiseeAddressNumber,
      this.issuingAgency,
      this.request,
      this.pendencies,
      this.franchiseeOccupation,
      this.corporateName,
      this.received,
      this.restartTotem,
      this.rgFranchisee,
      this.insurer,
      this.passwordSite,
      this.serialPinpad,
      this.siteTwonhall,
      this.statusStore,
      this.stonecode,
      this.phoneNumber01,
      this.phoneNumber02,
      this.phoneNumberLocator,
      this.machineType,
      this.proposedTitle,
      this.uf,
      this.proposedEstimatedValue,
      this.phase,
      this.funil,
      this.lead,
      this.nameLead,
      this.ffRef})
      : super._();

  @override
  ProposalsRecord rebuild(void Function(ProposalsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProposalsRecordBuilder toBuilder() =>
      new ProposalsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProposalsRecord &&
        agency == other.agency &&
        notes == other.notes &&
        insurancePolicy == other.insurancePolicy &&
        file == other.file &&
        neighborhoodStore == other.neighborhoodStore &&
        cityStore == other.cityStore &&
        cep == other.cep &&
        complement == other.complement &&
        bank == other.bank &&
        cnpj == other.cnpj &&
        consultant == other.consultant &&
        account == other.account &&
        cpfFranchisee == other.cpfFranchisee &&
        code == other.code &&
        cofDate == other.cofDate &&
        sendDate == other.sendDate &&
        openeningDate == other.openeningDate &&
        birthday == other.birthday &&
        contractDate == other.contractDate &&
        description == other.description &&
        emailFranchisee == other.emailFranchisee &&
        emailLocator == other.emailLocator &&
        lesseCompany == other.lesseCompany &&
        storeAddress == other.storeAddress &&
        franchiseeAddress == other.franchiseeAddress &&
        civilStatus == other.civilStatus &&
        franchisee == other.franchisee &&
        gatewayCode == other.gatewayCode &&
        openingTime == other.openingTime &&
        municipalRegistration == other.municipalRegistration &&
        locEquipment == other.locEquipment &&
        login == other.login &&
        logo == other.logo &&
        brandMachines == other.brandMachines &&
        releaseMethod == other.releaseMethod &&
        nationality == other.nationality &&
        companyName == other.companyName &&
        locatorName == other.locatorName &&
        fantasyName == other.fantasyName &&
        number == other.number &&
        storeAddressNumber == other.storeAddressNumber &&
        franchiseeAddressNumber == other.franchiseeAddressNumber &&
        issuingAgency == other.issuingAgency &&
        request == other.request &&
        pendencies == other.pendencies &&
        franchiseeOccupation == other.franchiseeOccupation &&
        corporateName == other.corporateName &&
        received == other.received &&
        restartTotem == other.restartTotem &&
        rgFranchisee == other.rgFranchisee &&
        insurer == other.insurer &&
        passwordSite == other.passwordSite &&
        serialPinpad == other.serialPinpad &&
        siteTwonhall == other.siteTwonhall &&
        statusStore == other.statusStore &&
        stonecode == other.stonecode &&
        phoneNumber01 == other.phoneNumber01 &&
        phoneNumber02 == other.phoneNumber02 &&
        phoneNumberLocator == other.phoneNumberLocator &&
        machineType == other.machineType &&
        proposedTitle == other.proposedTitle &&
        uf == other.uf &&
        proposedEstimatedValue == other.proposedEstimatedValue &&
        phase == other.phase &&
        funil == other.funil &&
        lead == other.lead &&
        nameLead == other.nameLead &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, agency.hashCode), notes.hashCode), insurancePolicy.hashCode), file.hashCode), neighborhoodStore.hashCode), cityStore.hashCode), cep.hashCode), complement.hashCode), bank.hashCode), cnpj.hashCode), consultant.hashCode), account.hashCode), cpfFranchisee.hashCode), code.hashCode), cofDate.hashCode), sendDate.hashCode), openeningDate.hashCode), birthday.hashCode), contractDate.hashCode), description.hashCode), emailFranchisee.hashCode), emailLocator.hashCode), lesseCompany.hashCode), storeAddress.hashCode), franchiseeAddress.hashCode), civilStatus.hashCode), franchisee.hashCode), gatewayCode.hashCode), openingTime.hashCode), municipalRegistration.hashCode), locEquipment.hashCode), login.hashCode), logo.hashCode), brandMachines.hashCode), releaseMethod.hashCode), nationality.hashCode), companyName.hashCode), locatorName.hashCode), fantasyName.hashCode), number.hashCode), storeAddressNumber.hashCode), franchiseeAddressNumber.hashCode), issuingAgency.hashCode), request.hashCode), pendencies.hashCode), franchiseeOccupation.hashCode), corporateName.hashCode), received.hashCode), restartTotem.hashCode),
                                                                                rgFranchisee.hashCode),
                                                                            insurer.hashCode),
                                                                        passwordSite.hashCode),
                                                                    serialPinpad.hashCode),
                                                                siteTwonhall.hashCode),
                                                            statusStore.hashCode),
                                                        stonecode.hashCode),
                                                    phoneNumber01.hashCode),
                                                phoneNumber02.hashCode),
                                            phoneNumberLocator.hashCode),
                                        machineType.hashCode),
                                    proposedTitle.hashCode),
                                uf.hashCode),
                            proposedEstimatedValue.hashCode),
                        phase.hashCode),
                    funil.hashCode),
                lead.hashCode),
            nameLead.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProposalsRecord')
          ..add('agency', agency)
          ..add('notes', notes)
          ..add('insurancePolicy', insurancePolicy)
          ..add('file', file)
          ..add('neighborhoodStore', neighborhoodStore)
          ..add('cityStore', cityStore)
          ..add('cep', cep)
          ..add('complement', complement)
          ..add('bank', bank)
          ..add('cnpj', cnpj)
          ..add('consultant', consultant)
          ..add('account', account)
          ..add('cpfFranchisee', cpfFranchisee)
          ..add('code', code)
          ..add('cofDate', cofDate)
          ..add('sendDate', sendDate)
          ..add('openeningDate', openeningDate)
          ..add('birthday', birthday)
          ..add('contractDate', contractDate)
          ..add('description', description)
          ..add('emailFranchisee', emailFranchisee)
          ..add('emailLocator', emailLocator)
          ..add('lesseCompany', lesseCompany)
          ..add('storeAddress', storeAddress)
          ..add('franchiseeAddress', franchiseeAddress)
          ..add('civilStatus', civilStatus)
          ..add('franchisee', franchisee)
          ..add('gatewayCode', gatewayCode)
          ..add('openingTime', openingTime)
          ..add('municipalRegistration', municipalRegistration)
          ..add('locEquipment', locEquipment)
          ..add('login', login)
          ..add('logo', logo)
          ..add('brandMachines', brandMachines)
          ..add('releaseMethod', releaseMethod)
          ..add('nationality', nationality)
          ..add('companyName', companyName)
          ..add('locatorName', locatorName)
          ..add('fantasyName', fantasyName)
          ..add('number', number)
          ..add('storeAddressNumber', storeAddressNumber)
          ..add('franchiseeAddressNumber', franchiseeAddressNumber)
          ..add('issuingAgency', issuingAgency)
          ..add('request', request)
          ..add('pendencies', pendencies)
          ..add('franchiseeOccupation', franchiseeOccupation)
          ..add('corporateName', corporateName)
          ..add('received', received)
          ..add('restartTotem', restartTotem)
          ..add('rgFranchisee', rgFranchisee)
          ..add('insurer', insurer)
          ..add('passwordSite', passwordSite)
          ..add('serialPinpad', serialPinpad)
          ..add('siteTwonhall', siteTwonhall)
          ..add('statusStore', statusStore)
          ..add('stonecode', stonecode)
          ..add('phoneNumber01', phoneNumber01)
          ..add('phoneNumber02', phoneNumber02)
          ..add('phoneNumberLocator', phoneNumberLocator)
          ..add('machineType', machineType)
          ..add('proposedTitle', proposedTitle)
          ..add('uf', uf)
          ..add('proposedEstimatedValue', proposedEstimatedValue)
          ..add('phase', phase)
          ..add('funil', funil)
          ..add('lead', lead)
          ..add('nameLead', nameLead)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProposalsRecordBuilder
    implements Builder<ProposalsRecord, ProposalsRecordBuilder> {
  _$ProposalsRecord? _$v;

  String? _agency;
  String? get agency => _$this._agency;
  set agency(String? agency) => _$this._agency = agency;

  ListBuilder<String>? _notes;
  ListBuilder<String> get notes => _$this._notes ??= new ListBuilder<String>();
  set notes(ListBuilder<String>? notes) => _$this._notes = notes;

  String? _insurancePolicy;
  String? get insurancePolicy => _$this._insurancePolicy;
  set insurancePolicy(String? insurancePolicy) =>
      _$this._insurancePolicy = insurancePolicy;

  ListBuilder<DateTime>? _file;
  ListBuilder<DateTime> get file =>
      _$this._file ??= new ListBuilder<DateTime>();
  set file(ListBuilder<DateTime>? file) => _$this._file = file;

  String? _neighborhoodStore;
  String? get neighborhoodStore => _$this._neighborhoodStore;
  set neighborhoodStore(String? neighborhoodStore) =>
      _$this._neighborhoodStore = neighborhoodStore;

  String? _cityStore;
  String? get cityStore => _$this._cityStore;
  set cityStore(String? cityStore) => _$this._cityStore = cityStore;

  String? _cep;
  String? get cep => _$this._cep;
  set cep(String? cep) => _$this._cep = cep;

  String? _complement;
  String? get complement => _$this._complement;
  set complement(String? complement) => _$this._complement = complement;

  String? _bank;
  String? get bank => _$this._bank;
  set bank(String? bank) => _$this._bank = bank;

  String? _cnpj;
  String? get cnpj => _$this._cnpj;
  set cnpj(String? cnpj) => _$this._cnpj = cnpj;

  DocumentReference<Object?>? _consultant;
  DocumentReference<Object?>? get consultant => _$this._consultant;
  set consultant(DocumentReference<Object?>? consultant) =>
      _$this._consultant = consultant;

  int? _account;
  int? get account => _$this._account;
  set account(int? account) => _$this._account = account;

  String? _cpfFranchisee;
  String? get cpfFranchisee => _$this._cpfFranchisee;
  set cpfFranchisee(String? cpfFranchisee) =>
      _$this._cpfFranchisee = cpfFranchisee;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  DateTime? _cofDate;
  DateTime? get cofDate => _$this._cofDate;
  set cofDate(DateTime? cofDate) => _$this._cofDate = cofDate;

  DateTime? _sendDate;
  DateTime? get sendDate => _$this._sendDate;
  set sendDate(DateTime? sendDate) => _$this._sendDate = sendDate;

  DateTime? _openeningDate;
  DateTime? get openeningDate => _$this._openeningDate;
  set openeningDate(DateTime? openeningDate) =>
      _$this._openeningDate = openeningDate;

  DateTime? _birthday;
  DateTime? get birthday => _$this._birthday;
  set birthday(DateTime? birthday) => _$this._birthday = birthday;

  DateTime? _contractDate;
  DateTime? get contractDate => _$this._contractDate;
  set contractDate(DateTime? contractDate) =>
      _$this._contractDate = contractDate;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _emailFranchisee;
  String? get emailFranchisee => _$this._emailFranchisee;
  set emailFranchisee(String? emailFranchisee) =>
      _$this._emailFranchisee = emailFranchisee;

  String? _emailLocator;
  String? get emailLocator => _$this._emailLocator;
  set emailLocator(String? emailLocator) => _$this._emailLocator = emailLocator;

  String? _lesseCompany;
  String? get lesseCompany => _$this._lesseCompany;
  set lesseCompany(String? lesseCompany) => _$this._lesseCompany = lesseCompany;

  String? _storeAddress;
  String? get storeAddress => _$this._storeAddress;
  set storeAddress(String? storeAddress) => _$this._storeAddress = storeAddress;

  String? _franchiseeAddress;
  String? get franchiseeAddress => _$this._franchiseeAddress;
  set franchiseeAddress(String? franchiseeAddress) =>
      _$this._franchiseeAddress = franchiseeAddress;

  String? _civilStatus;
  String? get civilStatus => _$this._civilStatus;
  set civilStatus(String? civilStatus) => _$this._civilStatus = civilStatus;

  String? _franchisee;
  String? get franchisee => _$this._franchisee;
  set franchisee(String? franchisee) => _$this._franchisee = franchisee;

  String? _gatewayCode;
  String? get gatewayCode => _$this._gatewayCode;
  set gatewayCode(String? gatewayCode) => _$this._gatewayCode = gatewayCode;

  DateTime? _openingTime;
  DateTime? get openingTime => _$this._openingTime;
  set openingTime(DateTime? openingTime) => _$this._openingTime = openingTime;

  int? _municipalRegistration;
  int? get municipalRegistration => _$this._municipalRegistration;
  set municipalRegistration(int? municipalRegistration) =>
      _$this._municipalRegistration = municipalRegistration;

  String? _locEquipment;
  String? get locEquipment => _$this._locEquipment;
  set locEquipment(String? locEquipment) => _$this._locEquipment = locEquipment;

  String? _login;
  String? get login => _$this._login;
  set login(String? login) => _$this._login = login;

  String? _logo;
  String? get logo => _$this._logo;
  set logo(String? logo) => _$this._logo = logo;

  String? _brandMachines;
  String? get brandMachines => _$this._brandMachines;
  set brandMachines(String? brandMachines) =>
      _$this._brandMachines = brandMachines;

  String? _releaseMethod;
  String? get releaseMethod => _$this._releaseMethod;
  set releaseMethod(String? releaseMethod) =>
      _$this._releaseMethod = releaseMethod;

  String? _nationality;
  String? get nationality => _$this._nationality;
  set nationality(String? nationality) => _$this._nationality = nationality;

  String? _companyName;
  String? get companyName => _$this._companyName;
  set companyName(String? companyName) => _$this._companyName = companyName;

  String? _locatorName;
  String? get locatorName => _$this._locatorName;
  set locatorName(String? locatorName) => _$this._locatorName = locatorName;

  String? _fantasyName;
  String? get fantasyName => _$this._fantasyName;
  set fantasyName(String? fantasyName) => _$this._fantasyName = fantasyName;

  int? _number;
  int? get number => _$this._number;
  set number(int? number) => _$this._number = number;

  int? _storeAddressNumber;
  int? get storeAddressNumber => _$this._storeAddressNumber;
  set storeAddressNumber(int? storeAddressNumber) =>
      _$this._storeAddressNumber = storeAddressNumber;

  int? _franchiseeAddressNumber;
  int? get franchiseeAddressNumber => _$this._franchiseeAddressNumber;
  set franchiseeAddressNumber(int? franchiseeAddressNumber) =>
      _$this._franchiseeAddressNumber = franchiseeAddressNumber;

  String? _issuingAgency;
  String? get issuingAgency => _$this._issuingAgency;
  set issuingAgency(String? issuingAgency) =>
      _$this._issuingAgency = issuingAgency;

  int? _request;
  int? get request => _$this._request;
  set request(int? request) => _$this._request = request;

  String? _pendencies;
  String? get pendencies => _$this._pendencies;
  set pendencies(String? pendencies) => _$this._pendencies = pendencies;

  String? _franchiseeOccupation;
  String? get franchiseeOccupation => _$this._franchiseeOccupation;
  set franchiseeOccupation(String? franchiseeOccupation) =>
      _$this._franchiseeOccupation = franchiseeOccupation;

  String? _corporateName;
  String? get corporateName => _$this._corporateName;
  set corporateName(String? corporateName) =>
      _$this._corporateName = corporateName;

  bool? _received;
  bool? get received => _$this._received;
  set received(bool? received) => _$this._received = received;

  String? _restartTotem;
  String? get restartTotem => _$this._restartTotem;
  set restartTotem(String? restartTotem) => _$this._restartTotem = restartTotem;

  String? _rgFranchisee;
  String? get rgFranchisee => _$this._rgFranchisee;
  set rgFranchisee(String? rgFranchisee) => _$this._rgFranchisee = rgFranchisee;

  String? _insurer;
  String? get insurer => _$this._insurer;
  set insurer(String? insurer) => _$this._insurer = insurer;

  String? _passwordSite;
  String? get passwordSite => _$this._passwordSite;
  set passwordSite(String? passwordSite) => _$this._passwordSite = passwordSite;

  String? _serialPinpad;
  String? get serialPinpad => _$this._serialPinpad;
  set serialPinpad(String? serialPinpad) => _$this._serialPinpad = serialPinpad;

  String? _siteTwonhall;
  String? get siteTwonhall => _$this._siteTwonhall;
  set siteTwonhall(String? siteTwonhall) => _$this._siteTwonhall = siteTwonhall;

  String? _statusStore;
  String? get statusStore => _$this._statusStore;
  set statusStore(String? statusStore) => _$this._statusStore = statusStore;

  int? _stonecode;
  int? get stonecode => _$this._stonecode;
  set stonecode(int? stonecode) => _$this._stonecode = stonecode;

  String? _phoneNumber01;
  String? get phoneNumber01 => _$this._phoneNumber01;
  set phoneNumber01(String? phoneNumber01) =>
      _$this._phoneNumber01 = phoneNumber01;

  String? _phoneNumber02;
  String? get phoneNumber02 => _$this._phoneNumber02;
  set phoneNumber02(String? phoneNumber02) =>
      _$this._phoneNumber02 = phoneNumber02;

  String? _phoneNumberLocator;
  String? get phoneNumberLocator => _$this._phoneNumberLocator;
  set phoneNumberLocator(String? phoneNumberLocator) =>
      _$this._phoneNumberLocator = phoneNumberLocator;

  String? _machineType;
  String? get machineType => _$this._machineType;
  set machineType(String? machineType) => _$this._machineType = machineType;

  String? _proposedTitle;
  String? get proposedTitle => _$this._proposedTitle;
  set proposedTitle(String? proposedTitle) =>
      _$this._proposedTitle = proposedTitle;

  String? _uf;
  String? get uf => _$this._uf;
  set uf(String? uf) => _$this._uf = uf;

  double? _proposedEstimatedValue;
  double? get proposedEstimatedValue => _$this._proposedEstimatedValue;
  set proposedEstimatedValue(double? proposedEstimatedValue) =>
      _$this._proposedEstimatedValue = proposedEstimatedValue;

  DocumentReference<Object?>? _phase;
  DocumentReference<Object?>? get phase => _$this._phase;
  set phase(DocumentReference<Object?>? phase) => _$this._phase = phase;

  DocumentReference<Object?>? _funil;
  DocumentReference<Object?>? get funil => _$this._funil;
  set funil(DocumentReference<Object?>? funil) => _$this._funil = funil;

  DocumentReference<Object?>? _lead;
  DocumentReference<Object?>? get lead => _$this._lead;
  set lead(DocumentReference<Object?>? lead) => _$this._lead = lead;

  DocumentReference<Object?>? _nameLead;
  DocumentReference<Object?>? get nameLead => _$this._nameLead;
  set nameLead(DocumentReference<Object?>? nameLead) =>
      _$this._nameLead = nameLead;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ProposalsRecordBuilder() {
    ProposalsRecord._initializeBuilder(this);
  }

  ProposalsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _agency = $v.agency;
      _notes = $v.notes?.toBuilder();
      _insurancePolicy = $v.insurancePolicy;
      _file = $v.file?.toBuilder();
      _neighborhoodStore = $v.neighborhoodStore;
      _cityStore = $v.cityStore;
      _cep = $v.cep;
      _complement = $v.complement;
      _bank = $v.bank;
      _cnpj = $v.cnpj;
      _consultant = $v.consultant;
      _account = $v.account;
      _cpfFranchisee = $v.cpfFranchisee;
      _code = $v.code;
      _cofDate = $v.cofDate;
      _sendDate = $v.sendDate;
      _openeningDate = $v.openeningDate;
      _birthday = $v.birthday;
      _contractDate = $v.contractDate;
      _description = $v.description;
      _emailFranchisee = $v.emailFranchisee;
      _emailLocator = $v.emailLocator;
      _lesseCompany = $v.lesseCompany;
      _storeAddress = $v.storeAddress;
      _franchiseeAddress = $v.franchiseeAddress;
      _civilStatus = $v.civilStatus;
      _franchisee = $v.franchisee;
      _gatewayCode = $v.gatewayCode;
      _openingTime = $v.openingTime;
      _municipalRegistration = $v.municipalRegistration;
      _locEquipment = $v.locEquipment;
      _login = $v.login;
      _logo = $v.logo;
      _brandMachines = $v.brandMachines;
      _releaseMethod = $v.releaseMethod;
      _nationality = $v.nationality;
      _companyName = $v.companyName;
      _locatorName = $v.locatorName;
      _fantasyName = $v.fantasyName;
      _number = $v.number;
      _storeAddressNumber = $v.storeAddressNumber;
      _franchiseeAddressNumber = $v.franchiseeAddressNumber;
      _issuingAgency = $v.issuingAgency;
      _request = $v.request;
      _pendencies = $v.pendencies;
      _franchiseeOccupation = $v.franchiseeOccupation;
      _corporateName = $v.corporateName;
      _received = $v.received;
      _restartTotem = $v.restartTotem;
      _rgFranchisee = $v.rgFranchisee;
      _insurer = $v.insurer;
      _passwordSite = $v.passwordSite;
      _serialPinpad = $v.serialPinpad;
      _siteTwonhall = $v.siteTwonhall;
      _statusStore = $v.statusStore;
      _stonecode = $v.stonecode;
      _phoneNumber01 = $v.phoneNumber01;
      _phoneNumber02 = $v.phoneNumber02;
      _phoneNumberLocator = $v.phoneNumberLocator;
      _machineType = $v.machineType;
      _proposedTitle = $v.proposedTitle;
      _uf = $v.uf;
      _proposedEstimatedValue = $v.proposedEstimatedValue;
      _phase = $v.phase;
      _funil = $v.funil;
      _lead = $v.lead;
      _nameLead = $v.nameLead;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProposalsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProposalsRecord;
  }

  @override
  void update(void Function(ProposalsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProposalsRecord build() => _build();

  _$ProposalsRecord _build() {
    _$ProposalsRecord _$result;
    try {
      _$result = _$v ??
          new _$ProposalsRecord._(
              agency: agency,
              notes: _notes?.build(),
              insurancePolicy: insurancePolicy,
              file: _file?.build(),
              neighborhoodStore: neighborhoodStore,
              cityStore: cityStore,
              cep: cep,
              complement: complement,
              bank: bank,
              cnpj: cnpj,
              consultant: consultant,
              account: account,
              cpfFranchisee: cpfFranchisee,
              code: code,
              cofDate: cofDate,
              sendDate: sendDate,
              openeningDate: openeningDate,
              birthday: birthday,
              contractDate: contractDate,
              description: description,
              emailFranchisee: emailFranchisee,
              emailLocator: emailLocator,
              lesseCompany: lesseCompany,
              storeAddress: storeAddress,
              franchiseeAddress: franchiseeAddress,
              civilStatus: civilStatus,
              franchisee: franchisee,
              gatewayCode: gatewayCode,
              openingTime: openingTime,
              municipalRegistration: municipalRegistration,
              locEquipment: locEquipment,
              login: login,
              logo: logo,
              brandMachines: brandMachines,
              releaseMethod: releaseMethod,
              nationality: nationality,
              companyName: companyName,
              locatorName: locatorName,
              fantasyName: fantasyName,
              number: number,
              storeAddressNumber: storeAddressNumber,
              franchiseeAddressNumber: franchiseeAddressNumber,
              issuingAgency: issuingAgency,
              request: request,
              pendencies: pendencies,
              franchiseeOccupation: franchiseeOccupation,
              corporateName: corporateName,
              received: received,
              restartTotem: restartTotem,
              rgFranchisee: rgFranchisee,
              insurer: insurer,
              passwordSite: passwordSite,
              serialPinpad: serialPinpad,
              siteTwonhall: siteTwonhall,
              statusStore: statusStore,
              stonecode: stonecode,
              phoneNumber01: phoneNumber01,
              phoneNumber02: phoneNumber02,
              phoneNumberLocator: phoneNumberLocator,
              machineType: machineType,
              proposedTitle: proposedTitle,
              uf: uf,
              proposedEstimatedValue: proposedEstimatedValue,
              phase: phase,
              funil: funil,
              lead: lead,
              nameLead: nameLead,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'notes';
        _notes?.build();

        _$failedField = 'file';
        _file?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ProposalsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
