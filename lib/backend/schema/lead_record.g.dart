// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lead_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LeadRecord> _$leadRecordSerializer = new _$LeadRecordSerializer();

class _$LeadRecordSerializer implements StructuredSerializer<LeadRecord> {
  @override
  final Iterable<Type> types = const [LeadRecord, _$LeadRecord];
  @override
  final String wireName = 'LeadRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, LeadRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.isFranchiseNameFranchisee;
    if (value != null) {
      result
        ..add('is_franchise_name_franchisee')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.insurancePolicy;
    if (value != null) {
      result
        ..add('insurance_policy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.consultor;
    if (value != null) {
      result
        ..add('consultor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hired;
    if (value != null) {
      result
        ..add('hired')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.stampDate;
    if (value != null) {
      result
        ..add('stamp_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.contactDate;
    if (value != null) {
      result
        ..add('contact_date')
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
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.locomotionAvailability;
    if (value != null) {
      result
        ..add('locomotion_availability')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.company;
    if (value != null) {
      result
        ..add('company')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
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
    value = object.phase;
    if (value != null) {
      result
        ..add('phase')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.nationalityLead;
    if (value != null) {
      result
        ..add('nationality_lead')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fullName;
    if (value != null) {
      result
        ..add('full_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.number;
    if (value != null) {
      result
        ..add('number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.observations;
    if (value != null) {
      result
        ..add('observations')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.occupation;
    if (value != null) {
      result
        ..add('occupation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.proposal;
    if (value != null) {
      result
        ..add('proposal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.numberInterviews;
    if (value != null) {
      result
        ..add('number_interviews')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.disponibility;
    if (value != null) {
      result
        ..add('disponibility')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.fone;
    if (value != null) {
      result
        ..add('fone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fone1Proposal;
    if (value != null) {
      result
        ..add('fone1_proposal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fone2Proposal;
    if (value != null) {
      result
        ..add('fone2_proposal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.available140mil;
    if (value != null) {
      result
        ..add('available_140mil')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.knowledgeInLaundry;
    if (value != null) {
      result
        ..add('knowledge_in_laundry')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.currentResidence;
    if (value != null) {
      result
        ..add('current_residence')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.creator;
    if (value != null) {
      result
        ..add('creator')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.modifiedDate;
    if (value != null) {
      result
        ..add('modified_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.createdDate;
    if (value != null) {
      result
        ..add('created_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.slug;
    if (value != null) {
      result
        ..add('slug')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  LeadRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LeadRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'is_franchise_name_franchisee':
          result.isFranchiseNameFranchisee = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'insurance_policy':
          result.insurancePolicy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'consultor':
          result.consultor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'hired':
          result.hired = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'stamp_date':
          result.stampDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'contact_date':
          result.contactDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'birthday':
          result.birthday = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'locomotion_availability':
          result.locomotionAvailability = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'company':
          result.company = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'civil_status':
          result.civilStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phase':
          result.phase = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'nationality_lead':
          result.nationalityLead = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'full_name':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'observations':
          result.observations = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'occupation':
          result.occupation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'proposal':
          result.proposal = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'number_interviews':
          result.numberInterviews = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'disponibility':
          result.disponibility = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'fone':
          result.fone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fone1_proposal':
          result.fone1Proposal = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fone2_proposal':
          result.fone2Proposal = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'available_140mil':
          result.available140mil = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'knowledge_in_laundry':
          result.knowledgeInLaundry = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'current_residence':
          result.currentResidence = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'creator':
          result.creator = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'modified_date':
          result.modifiedDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'created_date':
          result.createdDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$LeadRecord extends LeadRecord {
  @override
  final String? isFranchiseNameFranchisee;
  @override
  final String? insurancePolicy;
  @override
  final String? city;
  @override
  final String? consultor;
  @override
  final bool? hired;
  @override
  final DateTime? stampDate;
  @override
  final DateTime? contactDate;
  @override
  final DateTime? birthday;
  @override
  final String? email;
  @override
  final String? locomotionAvailability;
  @override
  final String? company;
  @override
  final String? address;
  @override
  final String? civilStatus;
  @override
  final DocumentReference<Object?>? phase;
  @override
  final String? nationalityLead;
  @override
  final String? fullName;
  @override
  final String? number;
  @override
  final String? observations;
  @override
  final String? occupation;
  @override
  final DocumentReference<Object?>? proposal;
  @override
  final int? numberInterviews;
  @override
  final String? disponibility;
  @override
  final DocumentReference<Object?>? status;
  @override
  final String? fone;
  @override
  final String? fone1Proposal;
  @override
  final String? fone2Proposal;
  @override
  final bool? available140mil;
  @override
  final String? knowledgeInLaundry;
  @override
  final String? currentResidence;
  @override
  final DocumentReference<Object?>? creator;
  @override
  final DateTime? modifiedDate;
  @override
  final DateTime? createdDate;
  @override
  final String? slug;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LeadRecord([void Function(LeadRecordBuilder)? updates]) =>
      (new LeadRecordBuilder()..update(updates))._build();

  _$LeadRecord._(
      {this.isFranchiseNameFranchisee,
      this.insurancePolicy,
      this.city,
      this.consultor,
      this.hired,
      this.stampDate,
      this.contactDate,
      this.birthday,
      this.email,
      this.locomotionAvailability,
      this.company,
      this.address,
      this.civilStatus,
      this.phase,
      this.nationalityLead,
      this.fullName,
      this.number,
      this.observations,
      this.occupation,
      this.proposal,
      this.numberInterviews,
      this.disponibility,
      this.status,
      this.fone,
      this.fone1Proposal,
      this.fone2Proposal,
      this.available140mil,
      this.knowledgeInLaundry,
      this.currentResidence,
      this.creator,
      this.modifiedDate,
      this.createdDate,
      this.slug,
      this.ffRef})
      : super._();

  @override
  LeadRecord rebuild(void Function(LeadRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LeadRecordBuilder toBuilder() => new LeadRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LeadRecord &&
        isFranchiseNameFranchisee == other.isFranchiseNameFranchisee &&
        insurancePolicy == other.insurancePolicy &&
        city == other.city &&
        consultor == other.consultor &&
        hired == other.hired &&
        stampDate == other.stampDate &&
        contactDate == other.contactDate &&
        birthday == other.birthday &&
        email == other.email &&
        locomotionAvailability == other.locomotionAvailability &&
        company == other.company &&
        address == other.address &&
        civilStatus == other.civilStatus &&
        phase == other.phase &&
        nationalityLead == other.nationalityLead &&
        fullName == other.fullName &&
        number == other.number &&
        observations == other.observations &&
        occupation == other.occupation &&
        proposal == other.proposal &&
        numberInterviews == other.numberInterviews &&
        disponibility == other.disponibility &&
        status == other.status &&
        fone == other.fone &&
        fone1Proposal == other.fone1Proposal &&
        fone2Proposal == other.fone2Proposal &&
        available140mil == other.available140mil &&
        knowledgeInLaundry == other.knowledgeInLaundry &&
        currentResidence == other.currentResidence &&
        creator == other.creator &&
        modifiedDate == other.modifiedDate &&
        createdDate == other.createdDate &&
        slug == other.slug &&
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, isFranchiseNameFranchisee.hashCode), insurancePolicy.hashCode), city.hashCode), consultor.hashCode), hired.hashCode), stampDate.hashCode), contactDate.hashCode), birthday.hashCode), email.hashCode), locomotionAvailability.hashCode), company.hashCode), address.hashCode), civilStatus.hashCode), phase.hashCode), nationalityLead.hashCode),
                                                                                fullName.hashCode),
                                                                            number.hashCode),
                                                                        observations.hashCode),
                                                                    occupation.hashCode),
                                                                proposal.hashCode),
                                                            numberInterviews.hashCode),
                                                        disponibility.hashCode),
                                                    status.hashCode),
                                                fone.hashCode),
                                            fone1Proposal.hashCode),
                                        fone2Proposal.hashCode),
                                    available140mil.hashCode),
                                knowledgeInLaundry.hashCode),
                            currentResidence.hashCode),
                        creator.hashCode),
                    modifiedDate.hashCode),
                createdDate.hashCode),
            slug.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LeadRecord')
          ..add('isFranchiseNameFranchisee', isFranchiseNameFranchisee)
          ..add('insurancePolicy', insurancePolicy)
          ..add('city', city)
          ..add('consultor', consultor)
          ..add('hired', hired)
          ..add('stampDate', stampDate)
          ..add('contactDate', contactDate)
          ..add('birthday', birthday)
          ..add('email', email)
          ..add('locomotionAvailability', locomotionAvailability)
          ..add('company', company)
          ..add('address', address)
          ..add('civilStatus', civilStatus)
          ..add('phase', phase)
          ..add('nationalityLead', nationalityLead)
          ..add('fullName', fullName)
          ..add('number', number)
          ..add('observations', observations)
          ..add('occupation', occupation)
          ..add('proposal', proposal)
          ..add('numberInterviews', numberInterviews)
          ..add('disponibility', disponibility)
          ..add('status', status)
          ..add('fone', fone)
          ..add('fone1Proposal', fone1Proposal)
          ..add('fone2Proposal', fone2Proposal)
          ..add('available140mil', available140mil)
          ..add('knowledgeInLaundry', knowledgeInLaundry)
          ..add('currentResidence', currentResidence)
          ..add('creator', creator)
          ..add('modifiedDate', modifiedDate)
          ..add('createdDate', createdDate)
          ..add('slug', slug)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LeadRecordBuilder implements Builder<LeadRecord, LeadRecordBuilder> {
  _$LeadRecord? _$v;

  String? _isFranchiseNameFranchisee;
  String? get isFranchiseNameFranchisee => _$this._isFranchiseNameFranchisee;
  set isFranchiseNameFranchisee(String? isFranchiseNameFranchisee) =>
      _$this._isFranchiseNameFranchisee = isFranchiseNameFranchisee;

  String? _insurancePolicy;
  String? get insurancePolicy => _$this._insurancePolicy;
  set insurancePolicy(String? insurancePolicy) =>
      _$this._insurancePolicy = insurancePolicy;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _consultor;
  String? get consultor => _$this._consultor;
  set consultor(String? consultor) => _$this._consultor = consultor;

  bool? _hired;
  bool? get hired => _$this._hired;
  set hired(bool? hired) => _$this._hired = hired;

  DateTime? _stampDate;
  DateTime? get stampDate => _$this._stampDate;
  set stampDate(DateTime? stampDate) => _$this._stampDate = stampDate;

  DateTime? _contactDate;
  DateTime? get contactDate => _$this._contactDate;
  set contactDate(DateTime? contactDate) => _$this._contactDate = contactDate;

  DateTime? _birthday;
  DateTime? get birthday => _$this._birthday;
  set birthday(DateTime? birthday) => _$this._birthday = birthday;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _locomotionAvailability;
  String? get locomotionAvailability => _$this._locomotionAvailability;
  set locomotionAvailability(String? locomotionAvailability) =>
      _$this._locomotionAvailability = locomotionAvailability;

  String? _company;
  String? get company => _$this._company;
  set company(String? company) => _$this._company = company;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _civilStatus;
  String? get civilStatus => _$this._civilStatus;
  set civilStatus(String? civilStatus) => _$this._civilStatus = civilStatus;

  DocumentReference<Object?>? _phase;
  DocumentReference<Object?>? get phase => _$this._phase;
  set phase(DocumentReference<Object?>? phase) => _$this._phase = phase;

  String? _nationalityLead;
  String? get nationalityLead => _$this._nationalityLead;
  set nationalityLead(String? nationalityLead) =>
      _$this._nationalityLead = nationalityLead;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _number;
  String? get number => _$this._number;
  set number(String? number) => _$this._number = number;

  String? _observations;
  String? get observations => _$this._observations;
  set observations(String? observations) => _$this._observations = observations;

  String? _occupation;
  String? get occupation => _$this._occupation;
  set occupation(String? occupation) => _$this._occupation = occupation;

  DocumentReference<Object?>? _proposal;
  DocumentReference<Object?>? get proposal => _$this._proposal;
  set proposal(DocumentReference<Object?>? proposal) =>
      _$this._proposal = proposal;

  int? _numberInterviews;
  int? get numberInterviews => _$this._numberInterviews;
  set numberInterviews(int? numberInterviews) =>
      _$this._numberInterviews = numberInterviews;

  String? _disponibility;
  String? get disponibility => _$this._disponibility;
  set disponibility(String? disponibility) =>
      _$this._disponibility = disponibility;

  DocumentReference<Object?>? _status;
  DocumentReference<Object?>? get status => _$this._status;
  set status(DocumentReference<Object?>? status) => _$this._status = status;

  String? _fone;
  String? get fone => _$this._fone;
  set fone(String? fone) => _$this._fone = fone;

  String? _fone1Proposal;
  String? get fone1Proposal => _$this._fone1Proposal;
  set fone1Proposal(String? fone1Proposal) =>
      _$this._fone1Proposal = fone1Proposal;

  String? _fone2Proposal;
  String? get fone2Proposal => _$this._fone2Proposal;
  set fone2Proposal(String? fone2Proposal) =>
      _$this._fone2Proposal = fone2Proposal;

  bool? _available140mil;
  bool? get available140mil => _$this._available140mil;
  set available140mil(bool? available140mil) =>
      _$this._available140mil = available140mil;

  String? _knowledgeInLaundry;
  String? get knowledgeInLaundry => _$this._knowledgeInLaundry;
  set knowledgeInLaundry(String? knowledgeInLaundry) =>
      _$this._knowledgeInLaundry = knowledgeInLaundry;

  String? _currentResidence;
  String? get currentResidence => _$this._currentResidence;
  set currentResidence(String? currentResidence) =>
      _$this._currentResidence = currentResidence;

  DocumentReference<Object?>? _creator;
  DocumentReference<Object?>? get creator => _$this._creator;
  set creator(DocumentReference<Object?>? creator) => _$this._creator = creator;

  DateTime? _modifiedDate;
  DateTime? get modifiedDate => _$this._modifiedDate;
  set modifiedDate(DateTime? modifiedDate) =>
      _$this._modifiedDate = modifiedDate;

  DateTime? _createdDate;
  DateTime? get createdDate => _$this._createdDate;
  set createdDate(DateTime? createdDate) => _$this._createdDate = createdDate;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LeadRecordBuilder() {
    LeadRecord._initializeBuilder(this);
  }

  LeadRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isFranchiseNameFranchisee = $v.isFranchiseNameFranchisee;
      _insurancePolicy = $v.insurancePolicy;
      _city = $v.city;
      _consultor = $v.consultor;
      _hired = $v.hired;
      _stampDate = $v.stampDate;
      _contactDate = $v.contactDate;
      _birthday = $v.birthday;
      _email = $v.email;
      _locomotionAvailability = $v.locomotionAvailability;
      _company = $v.company;
      _address = $v.address;
      _civilStatus = $v.civilStatus;
      _phase = $v.phase;
      _nationalityLead = $v.nationalityLead;
      _fullName = $v.fullName;
      _number = $v.number;
      _observations = $v.observations;
      _occupation = $v.occupation;
      _proposal = $v.proposal;
      _numberInterviews = $v.numberInterviews;
      _disponibility = $v.disponibility;
      _status = $v.status;
      _fone = $v.fone;
      _fone1Proposal = $v.fone1Proposal;
      _fone2Proposal = $v.fone2Proposal;
      _available140mil = $v.available140mil;
      _knowledgeInLaundry = $v.knowledgeInLaundry;
      _currentResidence = $v.currentResidence;
      _creator = $v.creator;
      _modifiedDate = $v.modifiedDate;
      _createdDate = $v.createdDate;
      _slug = $v.slug;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LeadRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LeadRecord;
  }

  @override
  void update(void Function(LeadRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LeadRecord build() => _build();

  _$LeadRecord _build() {
    final _$result = _$v ??
        new _$LeadRecord._(
            isFranchiseNameFranchisee: isFranchiseNameFranchisee,
            insurancePolicy: insurancePolicy,
            city: city,
            consultor: consultor,
            hired: hired,
            stampDate: stampDate,
            contactDate: contactDate,
            birthday: birthday,
            email: email,
            locomotionAvailability: locomotionAvailability,
            company: company,
            address: address,
            civilStatus: civilStatus,
            phase: phase,
            nationalityLead: nationalityLead,
            fullName: fullName,
            number: number,
            observations: observations,
            occupation: occupation,
            proposal: proposal,
            numberInterviews: numberInterviews,
            disponibility: disponibility,
            status: status,
            fone: fone,
            fone1Proposal: fone1Proposal,
            fone2Proposal: fone2Proposal,
            available140mil: available140mil,
            knowledgeInLaundry: knowledgeInLaundry,
            currentResidence: currentResidence,
            creator: creator,
            modifiedDate: modifiedDate,
            createdDate: createdDate,
            slug: slug,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
