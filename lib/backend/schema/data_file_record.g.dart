// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_file_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DataFileRecord> _$dataFileRecordSerializer =
    new _$DataFileRecordSerializer();

class _$DataFileRecordSerializer
    implements StructuredSerializer<DataFileRecord> {
  @override
  final Iterable<Type> types = const [DataFileRecord, _$DataFileRecord];
  @override
  final String wireName = 'DataFileRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, DataFileRecord object,
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
    value = object.modifiedData;
    if (value != null) {
      result
        ..add('modified_data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.createdData;
    if (value != null) {
      result
        ..add('created_data')
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
  DataFileRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataFileRecordBuilder();

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
        case 'modified_data':
          result.modifiedData = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'created_data':
          result.createdData = serializers.deserialize(value,
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

class _$DataFileRecord extends DataFileRecord {
  @override
  final DocumentReference<Object?>? creator;
  @override
  final DateTime? modifiedData;
  @override
  final DateTime? createdData;
  @override
  final String? slug;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DataFileRecord([void Function(DataFileRecordBuilder)? updates]) =>
      (new DataFileRecordBuilder()..update(updates))._build();

  _$DataFileRecord._(
      {this.creator,
      this.modifiedData,
      this.createdData,
      this.slug,
      this.ffRef})
      : super._();

  @override
  DataFileRecord rebuild(void Function(DataFileRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataFileRecordBuilder toBuilder() =>
      new DataFileRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataFileRecord &&
        creator == other.creator &&
        modifiedData == other.modifiedData &&
        createdData == other.createdData &&
        slug == other.slug &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, creator.hashCode), modifiedData.hashCode),
                createdData.hashCode),
            slug.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DataFileRecord')
          ..add('creator', creator)
          ..add('modifiedData', modifiedData)
          ..add('createdData', createdData)
          ..add('slug', slug)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DataFileRecordBuilder
    implements Builder<DataFileRecord, DataFileRecordBuilder> {
  _$DataFileRecord? _$v;

  DocumentReference<Object?>? _creator;
  DocumentReference<Object?>? get creator => _$this._creator;
  set creator(DocumentReference<Object?>? creator) => _$this._creator = creator;

  DateTime? _modifiedData;
  DateTime? get modifiedData => _$this._modifiedData;
  set modifiedData(DateTime? modifiedData) =>
      _$this._modifiedData = modifiedData;

  DateTime? _createdData;
  DateTime? get createdData => _$this._createdData;
  set createdData(DateTime? createdData) => _$this._createdData = createdData;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DataFileRecordBuilder() {
    DataFileRecord._initializeBuilder(this);
  }

  DataFileRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _creator = $v.creator;
      _modifiedData = $v.modifiedData;
      _createdData = $v.createdData;
      _slug = $v.slug;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataFileRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DataFileRecord;
  }

  @override
  void update(void Function(DataFileRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DataFileRecord build() => _build();

  _$DataFileRecord _build() {
    final _$result = _$v ??
        new _$DataFileRecord._(
            creator: creator,
            modifiedData: modifiedData,
            createdData: createdData,
            slug: slug,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
