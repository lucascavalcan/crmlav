// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TaskRecord> _$taskRecordSerializer = new _$TaskRecordSerializer();

class _$TaskRecordSerializer implements StructuredSerializer<TaskRecord> {
  @override
  final Iterable<Type> types = const [TaskRecord, _$TaskRecord];
  @override
  final String wireName = 'TaskRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TaskRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.cover;
    if (value != null) {
      result
        ..add('Cover')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.picture;
    if (value != null) {
      result
        ..add('Picture')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.task;
    if (value != null) {
      result
        ..add('Task')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.url;
    if (value != null) {
      result
        ..add('url')
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
        ..add('Slug')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.list;
    if (value != null) {
      result
        ..add('list')
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
  TaskRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TaskRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Cover':
          result.cover = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Picture':
          result.picture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Task':
          result.task = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
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
        case 'Slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'list':
          result.list = serializers.deserialize(value,
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

class _$TaskRecord extends TaskRecord {
  @override
  final bool? cover;
  @override
  final String? picture;
  @override
  final DocumentReference<Object?>? task;
  @override
  final String? url;
  @override
  final DocumentReference<Object?>? creator;
  @override
  final DateTime? modifiedDate;
  @override
  final DateTime? createdDate;
  @override
  final String? slug;
  @override
  final DocumentReference<Object?>? list;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TaskRecord([void Function(TaskRecordBuilder)? updates]) =>
      (new TaskRecordBuilder()..update(updates))._build();

  _$TaskRecord._(
      {this.cover,
      this.picture,
      this.task,
      this.url,
      this.creator,
      this.modifiedDate,
      this.createdDate,
      this.slug,
      this.list,
      this.ffRef})
      : super._();

  @override
  TaskRecord rebuild(void Function(TaskRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaskRecordBuilder toBuilder() => new TaskRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaskRecord &&
        cover == other.cover &&
        picture == other.picture &&
        task == other.task &&
        url == other.url &&
        creator == other.creator &&
        modifiedDate == other.modifiedDate &&
        createdDate == other.createdDate &&
        slug == other.slug &&
        list == other.list &&
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
                                    $jc($jc(0, cover.hashCode),
                                        picture.hashCode),
                                    task.hashCode),
                                url.hashCode),
                            creator.hashCode),
                        modifiedDate.hashCode),
                    createdDate.hashCode),
                slug.hashCode),
            list.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TaskRecord')
          ..add('cover', cover)
          ..add('picture', picture)
          ..add('task', task)
          ..add('url', url)
          ..add('creator', creator)
          ..add('modifiedDate', modifiedDate)
          ..add('createdDate', createdDate)
          ..add('slug', slug)
          ..add('list', list)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TaskRecordBuilder implements Builder<TaskRecord, TaskRecordBuilder> {
  _$TaskRecord? _$v;

  bool? _cover;
  bool? get cover => _$this._cover;
  set cover(bool? cover) => _$this._cover = cover;

  String? _picture;
  String? get picture => _$this._picture;
  set picture(String? picture) => _$this._picture = picture;

  DocumentReference<Object?>? _task;
  DocumentReference<Object?>? get task => _$this._task;
  set task(DocumentReference<Object?>? task) => _$this._task = task;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

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

  DocumentReference<Object?>? _list;
  DocumentReference<Object?>? get list => _$this._list;
  set list(DocumentReference<Object?>? list) => _$this._list = list;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TaskRecordBuilder() {
    TaskRecord._initializeBuilder(this);
  }

  TaskRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cover = $v.cover;
      _picture = $v.picture;
      _task = $v.task;
      _url = $v.url;
      _creator = $v.creator;
      _modifiedDate = $v.modifiedDate;
      _createdDate = $v.createdDate;
      _slug = $v.slug;
      _list = $v.list;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TaskRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TaskRecord;
  }

  @override
  void update(void Function(TaskRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TaskRecord build() => _build();

  _$TaskRecord _build() {
    final _$result = _$v ??
        new _$TaskRecord._(
            cover: cover,
            picture: picture,
            task: task,
            url: url,
            creator: creator,
            modifiedDate: modifiedDate,
            createdDate: createdDate,
            slug: slug,
            list: list,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
