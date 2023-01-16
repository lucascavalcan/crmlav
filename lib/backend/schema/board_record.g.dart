// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BoardRecord> _$boardRecordSerializer = new _$BoardRecordSerializer();

class _$BoardRecordSerializer implements StructuredSerializer<BoardRecord> {
  @override
  final Iterable<Type> types = const [BoardRecord, _$BoardRecord];
  @override
  final String wireName = 'BoardRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, BoardRecord object,
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
        ..add('modified_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.cretaedDate;
    if (value != null) {
      result
        ..add('cretaed_date')
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
  BoardRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BoardRecordBuilder();

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
        case 'modified_date':
          result.modifiedDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'cretaed_date':
          result.cretaedDate = serializers.deserialize(value,
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

class _$BoardRecord extends BoardRecord {
  @override
  final DocumentReference<Object?>? creator;
  @override
  final DateTime? modifiedDate;
  @override
  final DateTime? cretaedDate;
  @override
  final String? slug;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BoardRecord([void Function(BoardRecordBuilder)? updates]) =>
      (new BoardRecordBuilder()..update(updates))._build();

  _$BoardRecord._(
      {this.creator,
      this.modifiedDate,
      this.cretaedDate,
      this.slug,
      this.ffRef})
      : super._();

  @override
  BoardRecord rebuild(void Function(BoardRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BoardRecordBuilder toBuilder() => new BoardRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BoardRecord &&
        creator == other.creator &&
        modifiedDate == other.modifiedDate &&
        cretaedDate == other.cretaedDate &&
        slug == other.slug &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, creator.hashCode), modifiedDate.hashCode),
                cretaedDate.hashCode),
            slug.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BoardRecord')
          ..add('creator', creator)
          ..add('modifiedDate', modifiedDate)
          ..add('cretaedDate', cretaedDate)
          ..add('slug', slug)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BoardRecordBuilder implements Builder<BoardRecord, BoardRecordBuilder> {
  _$BoardRecord? _$v;

  DocumentReference<Object?>? _creator;
  DocumentReference<Object?>? get creator => _$this._creator;
  set creator(DocumentReference<Object?>? creator) => _$this._creator = creator;

  DateTime? _modifiedDate;
  DateTime? get modifiedDate => _$this._modifiedDate;
  set modifiedDate(DateTime? modifiedDate) =>
      _$this._modifiedDate = modifiedDate;

  DateTime? _cretaedDate;
  DateTime? get cretaedDate => _$this._cretaedDate;
  set cretaedDate(DateTime? cretaedDate) => _$this._cretaedDate = cretaedDate;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BoardRecordBuilder() {
    BoardRecord._initializeBuilder(this);
  }

  BoardRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _creator = $v.creator;
      _modifiedDate = $v.modifiedDate;
      _cretaedDate = $v.cretaedDate;
      _slug = $v.slug;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BoardRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BoardRecord;
  }

  @override
  void update(void Function(BoardRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BoardRecord build() => _build();

  _$BoardRecord _build() {
    final _$result = _$v ??
        new _$BoardRecord._(
            creator: creator,
            modifiedDate: modifiedDate,
            cretaedDate: cretaedDate,
            slug: slug,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
