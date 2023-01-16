import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'task_record.g.dart';

abstract class TaskRecord implements Built<TaskRecord, TaskRecordBuilder> {
  static Serializer<TaskRecord> get serializer => _$taskRecordSerializer;

  @BuiltValueField(wireName: 'Cover')
  bool? get cover;

  @BuiltValueField(wireName: 'Picture')
  String? get picture;

  @BuiltValueField(wireName: 'Task')
  DocumentReference? get task;

  String? get url;

  @BuiltValueField(wireName: 'Creator')
  DocumentReference? get creator;

  @BuiltValueField(wireName: 'Modified_date')
  DateTime? get modifiedDate;

  @BuiltValueField(wireName: 'Created_date')
  DateTime? get createdDate;

  @BuiltValueField(wireName: 'Slug')
  String? get slug;

  DocumentReference? get list;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TaskRecordBuilder builder) => builder
    ..cover = false
    ..picture = ''
    ..url = ''
    ..slug = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Task');

  static Stream<TaskRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TaskRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TaskRecord._();
  factory TaskRecord([void Function(TaskRecordBuilder) updates]) = _$TaskRecord;

  static TaskRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTaskRecordData({
  bool? cover,
  String? picture,
  DocumentReference? task,
  String? url,
  DocumentReference? creator,
  DateTime? modifiedDate,
  DateTime? createdDate,
  String? slug,
  DocumentReference? list,
}) {
  final firestoreData = serializers.toFirestore(
    TaskRecord.serializer,
    TaskRecord(
      (t) => t
        ..cover = cover
        ..picture = picture
        ..task = task
        ..url = url
        ..creator = creator
        ..modifiedDate = modifiedDate
        ..createdDate = createdDate
        ..slug = slug
        ..list = list,
    ),
  );

  return firestoreData;
}
