// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'funil_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FunilRecord> _$funilRecordSerializer = new _$FunilRecordSerializer();

class _$FunilRecordSerializer implements StructuredSerializer<FunilRecord> {
  @override
  final Iterable<Type> types = const [FunilRecord, _$FunilRecord];
  @override
  final String wireName = 'FunilRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FunilRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.phase;
    if (value != null) {
      result
        ..add('Phase')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.members;
    if (value != null) {
      result
        ..add('Members')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  FunilRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FunilRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Phase':
          result.phase.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'Members':
          result.members.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'Name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$FunilRecord extends FunilRecord {
  @override
  final BuiltList<DocumentReference<Object?>>? phase;
  @override
  final BuiltList<DocumentReference<Object?>>? members;
  @override
  final String? name;
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

  factory _$FunilRecord([void Function(FunilRecordBuilder)? updates]) =>
      (new FunilRecordBuilder()..update(updates))._build();

  _$FunilRecord._(
      {this.phase,
      this.members,
      this.name,
      this.creator,
      this.modifiedDate,
      this.createdDate,
      this.slug,
      this.ffRef})
      : super._();

  @override
  FunilRecord rebuild(void Function(FunilRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FunilRecordBuilder toBuilder() => new FunilRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FunilRecord &&
        phase == other.phase &&
        members == other.members &&
        name == other.name &&
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
                        $jc($jc($jc(0, phase.hashCode), members.hashCode),
                            name.hashCode),
                        creator.hashCode),
                    modifiedDate.hashCode),
                createdDate.hashCode),
            slug.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FunilRecord')
          ..add('phase', phase)
          ..add('members', members)
          ..add('name', name)
          ..add('creator', creator)
          ..add('modifiedDate', modifiedDate)
          ..add('createdDate', createdDate)
          ..add('slug', slug)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FunilRecordBuilder implements Builder<FunilRecord, FunilRecordBuilder> {
  _$FunilRecord? _$v;

  ListBuilder<DocumentReference<Object?>>? _phase;
  ListBuilder<DocumentReference<Object?>> get phase =>
      _$this._phase ??= new ListBuilder<DocumentReference<Object?>>();
  set phase(ListBuilder<DocumentReference<Object?>>? phase) =>
      _$this._phase = phase;

  ListBuilder<DocumentReference<Object?>>? _members;
  ListBuilder<DocumentReference<Object?>> get members =>
      _$this._members ??= new ListBuilder<DocumentReference<Object?>>();
  set members(ListBuilder<DocumentReference<Object?>>? members) =>
      _$this._members = members;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

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

  FunilRecordBuilder() {
    FunilRecord._initializeBuilder(this);
  }

  FunilRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _phase = $v.phase?.toBuilder();
      _members = $v.members?.toBuilder();
      _name = $v.name;
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
  void replace(FunilRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FunilRecord;
  }

  @override
  void update(void Function(FunilRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FunilRecord build() => _build();

  _$FunilRecord _build() {
    _$FunilRecord _$result;
    try {
      _$result = _$v ??
          new _$FunilRecord._(
              phase: _phase?.build(),
              members: _members?.build(),
              name: name,
              creator: creator,
              modifiedDate: modifiedDate,
              createdDate: createdDate,
              slug: slug,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'phase';
        _phase?.build();
        _$failedField = 'members';
        _members?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FunilRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
