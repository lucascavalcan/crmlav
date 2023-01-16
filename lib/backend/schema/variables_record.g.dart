// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variables_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VariablesRecord> _$variablesRecordSerializer =
    new _$VariablesRecordSerializer();

class _$VariablesRecordSerializer
    implements StructuredSerializer<VariablesRecord> {
  @override
  final Iterable<Type> types = const [VariablesRecord, _$VariablesRecord];
  @override
  final String wireName = 'VariablesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, VariablesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
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
  VariablesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VariablesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
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

class _$VariablesRecord extends VariablesRecord {
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

  factory _$VariablesRecord([void Function(VariablesRecordBuilder)? updates]) =>
      (new VariablesRecordBuilder()..update(updates))._build();

  _$VariablesRecord._(
      {this.creator,
      this.modifiedDate,
      this.createdDate,
      this.slug,
      this.ffRef})
      : super._();

  @override
  VariablesRecord rebuild(void Function(VariablesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VariablesRecordBuilder toBuilder() =>
      new VariablesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VariablesRecord &&
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
            $jc($jc($jc(0, creator.hashCode), modifiedDate.hashCode),
                createdDate.hashCode),
            slug.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VariablesRecord')
          ..add('creator', creator)
          ..add('modifiedDate', modifiedDate)
          ..add('createdDate', createdDate)
          ..add('slug', slug)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class VariablesRecordBuilder
    implements Builder<VariablesRecord, VariablesRecordBuilder> {
  _$VariablesRecord? _$v;

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

  VariablesRecordBuilder() {
    VariablesRecord._initializeBuilder(this);
  }

  VariablesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(VariablesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VariablesRecord;
  }

  @override
  void update(void Function(VariablesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VariablesRecord build() => _build();

  _$VariablesRecord _build() {
    final _$result = _$v ??
        new _$VariablesRecord._(
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
