// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cities_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CitiesRecord> _$citiesRecordSerializer =
    new _$CitiesRecordSerializer();

class _$CitiesRecordSerializer implements StructuredSerializer<CitiesRecord> {
  @override
  final Iterable<Type> types = const [CitiesRecord, _$CitiesRecord];
  @override
  final String wireName = 'CitiesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CitiesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.cityPhoto;
    if (value != null) {
      result
        ..add('cityPhoto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cityName;
    if (value != null) {
      result
        ..add('cityName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cityDescription;
    if (value != null) {
      result
        ..add('cityDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.founded;
    if (value != null) {
      result
        ..add('founded')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cityPopulation;
    if (value != null) {
      result
        ..add('cityPopulation')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.index;
    if (value != null) {
      result
        ..add('index')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.userLiked;
    if (value != null) {
      result
        ..add('userLiked')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.userDisliked;
    if (value != null) {
      result
        ..add('userDisliked')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
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
  CitiesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CitiesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'cityPhoto':
          result.cityPhoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cityName':
          result.cityName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cityDescription':
          result.cityDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'founded':
          result.founded = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'cityPopulation':
          result.cityPopulation = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'index':
          result.index = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'userLiked':
          result.userLiked.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'userDisliked':
          result.userDisliked.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
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

class _$CitiesRecord extends CitiesRecord {
  @override
  final String? cityPhoto;
  @override
  final String? cityName;
  @override
  final String? cityDescription;
  @override
  final int? founded;
  @override
  final int? cityPopulation;
  @override
  final int? index;
  @override
  final BuiltList<DocumentReference<Object?>>? userLiked;
  @override
  final BuiltList<DocumentReference<Object?>>? userDisliked;
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CitiesRecord([void Function(CitiesRecordBuilder)? updates]) =>
      (new CitiesRecordBuilder()..update(updates))._build();

  _$CitiesRecord._(
      {this.cityPhoto,
      this.cityName,
      this.cityDescription,
      this.founded,
      this.cityPopulation,
      this.index,
      this.userLiked,
      this.userDisliked,
      this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.ffRef})
      : super._();

  @override
  CitiesRecord rebuild(void Function(CitiesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CitiesRecordBuilder toBuilder() => new CitiesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CitiesRecord &&
        cityPhoto == other.cityPhoto &&
        cityName == other.cityName &&
        cityDescription == other.cityDescription &&
        founded == other.founded &&
        cityPopulation == other.cityPopulation &&
        index == other.index &&
        userLiked == other.userLiked &&
        userDisliked == other.userDisliked &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
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
                                                                cityPhoto
                                                                    .hashCode),
                                                            cityName.hashCode),
                                                        cityDescription
                                                            .hashCode),
                                                    founded.hashCode),
                                                cityPopulation.hashCode),
                                            index.hashCode),
                                        userLiked.hashCode),
                                    userDisliked.hashCode),
                                email.hashCode),
                            displayName.hashCode),
                        photoUrl.hashCode),
                    uid.hashCode),
                createdTime.hashCode),
            phoneNumber.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CitiesRecord')
          ..add('cityPhoto', cityPhoto)
          ..add('cityName', cityName)
          ..add('cityDescription', cityDescription)
          ..add('founded', founded)
          ..add('cityPopulation', cityPopulation)
          ..add('index', index)
          ..add('userLiked', userLiked)
          ..add('userDisliked', userDisliked)
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CitiesRecordBuilder
    implements Builder<CitiesRecord, CitiesRecordBuilder> {
  _$CitiesRecord? _$v;

  String? _cityPhoto;
  String? get cityPhoto => _$this._cityPhoto;
  set cityPhoto(String? cityPhoto) => _$this._cityPhoto = cityPhoto;

  String? _cityName;
  String? get cityName => _$this._cityName;
  set cityName(String? cityName) => _$this._cityName = cityName;

  String? _cityDescription;
  String? get cityDescription => _$this._cityDescription;
  set cityDescription(String? cityDescription) =>
      _$this._cityDescription = cityDescription;

  int? _founded;
  int? get founded => _$this._founded;
  set founded(int? founded) => _$this._founded = founded;

  int? _cityPopulation;
  int? get cityPopulation => _$this._cityPopulation;
  set cityPopulation(int? cityPopulation) =>
      _$this._cityPopulation = cityPopulation;

  int? _index;
  int? get index => _$this._index;
  set index(int? index) => _$this._index = index;

  ListBuilder<DocumentReference<Object?>>? _userLiked;
  ListBuilder<DocumentReference<Object?>> get userLiked =>
      _$this._userLiked ??= new ListBuilder<DocumentReference<Object?>>();
  set userLiked(ListBuilder<DocumentReference<Object?>>? userLiked) =>
      _$this._userLiked = userLiked;

  ListBuilder<DocumentReference<Object?>>? _userDisliked;
  ListBuilder<DocumentReference<Object?>> get userDisliked =>
      _$this._userDisliked ??= new ListBuilder<DocumentReference<Object?>>();
  set userDisliked(ListBuilder<DocumentReference<Object?>>? userDisliked) =>
      _$this._userDisliked = userDisliked;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CitiesRecordBuilder() {
    CitiesRecord._initializeBuilder(this);
  }

  CitiesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cityPhoto = $v.cityPhoto;
      _cityName = $v.cityName;
      _cityDescription = $v.cityDescription;
      _founded = $v.founded;
      _cityPopulation = $v.cityPopulation;
      _index = $v.index;
      _userLiked = $v.userLiked?.toBuilder();
      _userDisliked = $v.userDisliked?.toBuilder();
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CitiesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CitiesRecord;
  }

  @override
  void update(void Function(CitiesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CitiesRecord build() => _build();

  _$CitiesRecord _build() {
    _$CitiesRecord _$result;
    try {
      _$result = _$v ??
          new _$CitiesRecord._(
              cityPhoto: cityPhoto,
              cityName: cityName,
              cityDescription: cityDescription,
              founded: founded,
              cityPopulation: cityPopulation,
              index: index,
              userLiked: _userLiked?.build(),
              userDisliked: _userDisliked?.build(),
              email: email,
              displayName: displayName,
              photoUrl: photoUrl,
              uid: uid,
              createdTime: createdTime,
              phoneNumber: phoneNumber,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userLiked';
        _userLiked?.build();
        _$failedField = 'userDisliked';
        _userDisliked?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CitiesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
