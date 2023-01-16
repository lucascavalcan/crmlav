// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phase_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PhaseRecord> _$phaseRecordSerializer = new _$PhaseRecordSerializer();

class _$PhaseRecordSerializer implements StructuredSerializer<PhaseRecord> {
  @override
  final Iterable<Type> types = const [PhaseRecord, _$PhaseRecord];
  @override
  final String wireName = 'PhaseRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PhaseRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.color;
    if (value != null) {
      result
        ..add('Color')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Color)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.proposal;
    if (value != null) {
      result
        ..add('Proposal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.creator;
    if (value != null) {
      result
        ..add('Creator')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.modifiedDate;
    if (value != null) {
      result
        ..add('Modified_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.createdDate;
    if (value != null) {
      result
        ..add('Created_date')
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
    value = object.funil;
    if (value != null) {
      result
        ..add('Funil')
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
  PhaseRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PhaseRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(Color)) as Color?;
          break;
        case 'Name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Proposal':
          result.proposal.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'Creator':
          result.creator = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Modified_date':
          result.modifiedDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Created_date':
          result.createdDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Funil':
          result.funil = serializers.deserialize(value,
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

class _$PhaseRecord extends PhaseRecord {
  @override
  final Color? color;
  @override
  final String? name;
  @override
  final BuiltList<DocumentReference<Object?>>? proposal;
  @override
  final DocumentReference<Object?>? creator;
  @override
  final DateTime? modifiedDate;
  @override
  final DateTime? createdDate;
  @override
  final String? slug;
  @override
  final DocumentReference<Object?>? funil;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PhaseRecord([void Function(PhaseRecordBuilder)? updates]) =>
      (new PhaseRecordBuilder()..update(updates))._build();

  _$PhaseRecord._(
      {this.color,
      this.name,
      this.proposal,
      this.creator,
      this.modifiedDate,
      this.createdDate,
      this.slug,
      this.funil,
      this.ffRef})
      : super._();

  @override
  PhaseRecord rebuild(void Function(PhaseRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PhaseRecordBuilder toBuilder() => new PhaseRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PhaseRecord &&
        color == other.color &&
        name == other.name &&
        proposal == other.proposal &&
        creator == other.creator &&
        modifiedDate == other.modifiedDate &&
        createdDate == other.createdDate &&
        slug == other.slug &&
        funil == other.funil &&
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
                            $jc($jc($jc(0, color.hashCode), name.hashCode),
                                proposal.hashCode),
                            creator.hashCode),
                        modifiedDate.hashCode),
                    createdDate.hashCode),
                slug.hashCode),
            funil.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PhaseRecord')
          ..add('color', color)
          ..add('name', name)
          ..add('proposal', proposal)
          ..add('creator', creator)
          ..add('modifiedDate', modifiedDate)
          ..add('createdDate', createdDate)
          ..add('slug', slug)
          ..add('funil', funil)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PhaseRecordBuilder implements Builder<PhaseRecord, PhaseRecordBuilder> {
  _$PhaseRecord? _$v;

  Color? _color;
  Color? get color => _$this._color;
  set color(Color? color) => _$this._color = color;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<DocumentReference<Object?>>? _proposal;
  ListBuilder<DocumentReference<Object?>> get proposal =>
      _$this._proposal ??= new ListBuilder<DocumentReference<Object?>>();
  set proposal(ListBuilder<DocumentReference<Object?>>? proposal) =>
      _$this._proposal = proposal;

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

  DocumentReference<Object?>? _funil;
  DocumentReference<Object?>? get funil => _$this._funil;
  set funil(DocumentReference<Object?>? funil) => _$this._funil = funil;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PhaseRecordBuilder() {
    PhaseRecord._initializeBuilder(this);
  }

  PhaseRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _color = $v.color;
      _name = $v.name;
      _proposal = $v.proposal?.toBuilder();
      _creator = $v.creator;
      _modifiedDate = $v.modifiedDate;
      _createdDate = $v.createdDate;
      _slug = $v.slug;
      _funil = $v.funil;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PhaseRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PhaseRecord;
  }

  @override
  void update(void Function(PhaseRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PhaseRecord build() => _build();

  _$PhaseRecord _build() {
    _$PhaseRecord _$result;
    try {
      _$result = _$v ??
          new _$PhaseRecord._(
              color: color,
              name: name,
              proposal: _proposal?.build(),
              creator: creator,
              modifiedDate: modifiedDate,
              createdDate: createdDate,
              slug: slug,
              funil: funil,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'proposal';
        _proposal?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PhaseRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
