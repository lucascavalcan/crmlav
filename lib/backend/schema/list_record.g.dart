// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ListRecord> _$listRecordSerializer = new _$ListRecordSerializer();

class _$ListRecordSerializer implements StructuredSerializer<ListRecord> {
  @override
  final Iterable<Type> types = const [ListRecord, _$ListRecord];
  @override
  final String wireName = 'ListRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ListRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.board;
    if (value != null) {
      result
        ..add('Board')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.taskList;
    if (value != null) {
      result
        ..add('Task_list')
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
  ListRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ListRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Board':
          result.board = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Task_list':
          result.taskList.replace(serializers.deserialize(value,
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

class _$ListRecord extends ListRecord {
  @override
  final DocumentReference<Object?>? board;
  @override
  final BuiltList<DocumentReference<Object?>>? taskList;
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

  factory _$ListRecord([void Function(ListRecordBuilder)? updates]) =>
      (new ListRecordBuilder()..update(updates))._build();

  _$ListRecord._(
      {this.board,
      this.taskList,
      this.name,
      this.creator,
      this.modifiedDate,
      this.createdDate,
      this.slug,
      this.ffRef})
      : super._();

  @override
  ListRecord rebuild(void Function(ListRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListRecordBuilder toBuilder() => new ListRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListRecord &&
        board == other.board &&
        taskList == other.taskList &&
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
                        $jc($jc($jc(0, board.hashCode), taskList.hashCode),
                            name.hashCode),
                        creator.hashCode),
                    modifiedDate.hashCode),
                createdDate.hashCode),
            slug.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListRecord')
          ..add('board', board)
          ..add('taskList', taskList)
          ..add('name', name)
          ..add('creator', creator)
          ..add('modifiedDate', modifiedDate)
          ..add('createdDate', createdDate)
          ..add('slug', slug)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ListRecordBuilder implements Builder<ListRecord, ListRecordBuilder> {
  _$ListRecord? _$v;

  DocumentReference<Object?>? _board;
  DocumentReference<Object?>? get board => _$this._board;
  set board(DocumentReference<Object?>? board) => _$this._board = board;

  ListBuilder<DocumentReference<Object?>>? _taskList;
  ListBuilder<DocumentReference<Object?>> get taskList =>
      _$this._taskList ??= new ListBuilder<DocumentReference<Object?>>();
  set taskList(ListBuilder<DocumentReference<Object?>>? taskList) =>
      _$this._taskList = taskList;

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

  ListRecordBuilder() {
    ListRecord._initializeBuilder(this);
  }

  ListRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _board = $v.board;
      _taskList = $v.taskList?.toBuilder();
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
  void replace(ListRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListRecord;
  }

  @override
  void update(void Function(ListRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListRecord build() => _build();

  _$ListRecord _build() {
    _$ListRecord _$result;
    try {
      _$result = _$v ??
          new _$ListRecord._(
              board: board,
              taskList: _taskList?.build(),
              name: name,
              creator: creator,
              modifiedDate: modifiedDate,
              createdDate: createdDate,
              slug: slug,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'taskList';
        _taskList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
