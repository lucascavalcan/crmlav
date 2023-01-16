// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'magic_user_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MagicUserRecord> _$magicUserRecordSerializer =
    new _$MagicUserRecordSerializer();

class _$MagicUserRecordSerializer
    implements StructuredSerializer<MagicUserRecord> {
  @override
  final Iterable<Type> types = const [MagicUserRecord, _$MagicUserRecord];
  @override
  final String wireName = 'MagicUserRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MagicUserRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.linkOpened;
    if (value != null) {
      result
        ..add('link_opened')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
        ..add('Slug')
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
  MagicUserRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MagicUserRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'link_opened':
          result.linkOpened = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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
        case 'Slug':
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

class _$MagicUserRecord extends MagicUserRecord {
  @override
  final String? email;
  @override
  final bool? linkOpened;
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

  factory _$MagicUserRecord([void Function(MagicUserRecordBuilder)? updates]) =>
      (new MagicUserRecordBuilder()..update(updates))._build();

  _$MagicUserRecord._(
      {this.email,
      this.linkOpened,
      this.creator,
      this.modifiedDate,
      this.createdDate,
      this.slug,
      this.ffRef})
      : super._();

  @override
  MagicUserRecord rebuild(void Function(MagicUserRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MagicUserRecordBuilder toBuilder() =>
      new MagicUserRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MagicUserRecord &&
        email == other.email &&
        linkOpened == other.linkOpened &&
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
                    $jc($jc($jc(0, email.hashCode), linkOpened.hashCode),
                        creator.hashCode),
                    modifiedDate.hashCode),
                createdDate.hashCode),
            slug.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MagicUserRecord')
          ..add('email', email)
          ..add('linkOpened', linkOpened)
          ..add('creator', creator)
          ..add('modifiedDate', modifiedDate)
          ..add('createdDate', createdDate)
          ..add('slug', slug)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MagicUserRecordBuilder
    implements Builder<MagicUserRecord, MagicUserRecordBuilder> {
  _$MagicUserRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  bool? _linkOpened;
  bool? get linkOpened => _$this._linkOpened;
  set linkOpened(bool? linkOpened) => _$this._linkOpened = linkOpened;

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

  MagicUserRecordBuilder() {
    MagicUserRecord._initializeBuilder(this);
  }

  MagicUserRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _linkOpened = $v.linkOpened;
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
  void replace(MagicUserRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MagicUserRecord;
  }

  @override
  void update(void Function(MagicUserRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MagicUserRecord build() => _build();

  _$MagicUserRecord _build() {
    final _$result = _$v ??
        new _$MagicUserRecord._(
            email: email,
            linkOpened: linkOpened,
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
