// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduling_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SchedulingRecord> _$schedulingRecordSerializer =
    new _$SchedulingRecordSerializer();

class _$SchedulingRecordSerializer
    implements StructuredSerializer<SchedulingRecord> {
  @override
  final Iterable<Type> types = const [SchedulingRecord, _$SchedulingRecord];
  @override
  final String wireName = 'SchedulingRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SchedulingRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.scheduler;
    if (value != null) {
      result
        ..add('scheduler')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.consultant;
    if (value != null) {
      result
        ..add('consultant')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.colorName;
    if (value != null) {
      result
        ..add('color_name')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Color)));
    }
    value = object.colorHex;
    if (value != null) {
      result
        ..add('color_hex')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateEnd;
    if (value != null) {
      result
        ..add('date_end')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.dateStart;
    if (value != null) {
      result
        ..add('date_start')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.interviewDone;
    if (value != null) {
      result
        ..add('interview_done')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.nameLead;
    if (value != null) {
      result
        ..add('name_lead')
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
    value = object.numberOfInterviews;
    if (value != null) {
      result
        ..add('number_of_interviews')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  SchedulingRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SchedulingRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'scheduler':
          result.scheduler = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'consultant':
          result.consultant = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'color_name':
          result.colorName = serializers.deserialize(value,
              specifiedType: const FullType(Color)) as Color?;
          break;
        case 'color_hex':
          result.colorHex = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'date_end':
          result.dateEnd = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'date_start':
          result.dateStart = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'interview_done':
          result.interviewDone = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'name_lead':
          result.nameLead = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'observations':
          result.observations = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'number_of_interviews':
          result.numberOfInterviews = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$SchedulingRecord extends SchedulingRecord {
  @override
  final String? scheduler;
  @override
  final String? consultant;
  @override
  final Color? colorName;
  @override
  final String? colorHex;
  @override
  final DateTime? dateEnd;
  @override
  final DateTime? dateStart;
  @override
  final bool? interviewDone;
  @override
  final String? nameLead;
  @override
  final String? observations;
  @override
  final int? numberOfInterviews;
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

  factory _$SchedulingRecord(
          [void Function(SchedulingRecordBuilder)? updates]) =>
      (new SchedulingRecordBuilder()..update(updates))._build();

  _$SchedulingRecord._(
      {this.scheduler,
      this.consultant,
      this.colorName,
      this.colorHex,
      this.dateEnd,
      this.dateStart,
      this.interviewDone,
      this.nameLead,
      this.observations,
      this.numberOfInterviews,
      this.creator,
      this.modifiedDate,
      this.createdDate,
      this.slug,
      this.ffRef})
      : super._();

  @override
  SchedulingRecord rebuild(void Function(SchedulingRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SchedulingRecordBuilder toBuilder() =>
      new SchedulingRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SchedulingRecord &&
        scheduler == other.scheduler &&
        consultant == other.consultant &&
        colorName == other.colorName &&
        colorHex == other.colorHex &&
        dateEnd == other.dateEnd &&
        dateStart == other.dateStart &&
        interviewDone == other.interviewDone &&
        nameLead == other.nameLead &&
        observations == other.observations &&
        numberOfInterviews == other.numberOfInterviews &&
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
                                                                0,
                                                                scheduler
                                                                    .hashCode),
                                                            consultant
                                                                .hashCode),
                                                        colorName.hashCode),
                                                    colorHex.hashCode),
                                                dateEnd.hashCode),
                                            dateStart.hashCode),
                                        interviewDone.hashCode),
                                    nameLead.hashCode),
                                observations.hashCode),
                            numberOfInterviews.hashCode),
                        creator.hashCode),
                    modifiedDate.hashCode),
                createdDate.hashCode),
            slug.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SchedulingRecord')
          ..add('scheduler', scheduler)
          ..add('consultant', consultant)
          ..add('colorName', colorName)
          ..add('colorHex', colorHex)
          ..add('dateEnd', dateEnd)
          ..add('dateStart', dateStart)
          ..add('interviewDone', interviewDone)
          ..add('nameLead', nameLead)
          ..add('observations', observations)
          ..add('numberOfInterviews', numberOfInterviews)
          ..add('creator', creator)
          ..add('modifiedDate', modifiedDate)
          ..add('createdDate', createdDate)
          ..add('slug', slug)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SchedulingRecordBuilder
    implements Builder<SchedulingRecord, SchedulingRecordBuilder> {
  _$SchedulingRecord? _$v;

  String? _scheduler;
  String? get scheduler => _$this._scheduler;
  set scheduler(String? scheduler) => _$this._scheduler = scheduler;

  String? _consultant;
  String? get consultant => _$this._consultant;
  set consultant(String? consultant) => _$this._consultant = consultant;

  Color? _colorName;
  Color? get colorName => _$this._colorName;
  set colorName(Color? colorName) => _$this._colorName = colorName;

  String? _colorHex;
  String? get colorHex => _$this._colorHex;
  set colorHex(String? colorHex) => _$this._colorHex = colorHex;

  DateTime? _dateEnd;
  DateTime? get dateEnd => _$this._dateEnd;
  set dateEnd(DateTime? dateEnd) => _$this._dateEnd = dateEnd;

  DateTime? _dateStart;
  DateTime? get dateStart => _$this._dateStart;
  set dateStart(DateTime? dateStart) => _$this._dateStart = dateStart;

  bool? _interviewDone;
  bool? get interviewDone => _$this._interviewDone;
  set interviewDone(bool? interviewDone) =>
      _$this._interviewDone = interviewDone;

  String? _nameLead;
  String? get nameLead => _$this._nameLead;
  set nameLead(String? nameLead) => _$this._nameLead = nameLead;

  String? _observations;
  String? get observations => _$this._observations;
  set observations(String? observations) => _$this._observations = observations;

  int? _numberOfInterviews;
  int? get numberOfInterviews => _$this._numberOfInterviews;
  set numberOfInterviews(int? numberOfInterviews) =>
      _$this._numberOfInterviews = numberOfInterviews;

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

  SchedulingRecordBuilder() {
    SchedulingRecord._initializeBuilder(this);
  }

  SchedulingRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _scheduler = $v.scheduler;
      _consultant = $v.consultant;
      _colorName = $v.colorName;
      _colorHex = $v.colorHex;
      _dateEnd = $v.dateEnd;
      _dateStart = $v.dateStart;
      _interviewDone = $v.interviewDone;
      _nameLead = $v.nameLead;
      _observations = $v.observations;
      _numberOfInterviews = $v.numberOfInterviews;
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
  void replace(SchedulingRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SchedulingRecord;
  }

  @override
  void update(void Function(SchedulingRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SchedulingRecord build() => _build();

  _$SchedulingRecord _build() {
    final _$result = _$v ??
        new _$SchedulingRecord._(
            scheduler: scheduler,
            consultant: consultant,
            colorName: colorName,
            colorHex: colorHex,
            dateEnd: dateEnd,
            dateStart: dateStart,
            interviewDone: interviewDone,
            nameLead: nameLead,
            observations: observations,
            numberOfInterviews: numberOfInterviews,
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
