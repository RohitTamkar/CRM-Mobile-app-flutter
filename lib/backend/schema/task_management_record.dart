import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TaskManagementRecord extends FirestoreRecord {
  TaskManagementRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "assignedBy" field.
  String? _assignedBy;
  String get assignedBy => _assignedBy ?? '';
  bool hasAssignedBy() => _assignedBy != null;

  // "assignedByName" field.
  String? _assignedByName;
  String get assignedByName => _assignedByName ?? '';
  bool hasAssignedByName() => _assignedByName != null;

  // "assignedTo" field.
  String? _assignedTo;
  String get assignedTo => _assignedTo ?? '';
  bool hasAssignedTo() => _assignedTo != null;

  // "assignedToDepartment" field.
  String? _assignedToDepartment;
  String get assignedToDepartment => _assignedToDepartment ?? '';
  bool hasAssignedToDepartment() => _assignedToDepartment != null;

  // "assignedToName" field.
  String? _assignedToName;
  String get assignedToName => _assignedToName ?? '';
  bool hasAssignedToName() => _assignedToName != null;

  // "createdAt" field.
  int? _createdAt;
  int get createdAt => _createdAt ?? 0;
  bool hasCreatedAt() => _createdAt != null;

  // "createdBy" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  bool hasCreatedBy() => _createdBy != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "outletId" field.
  String? _outletId;
  String get outletId => _outletId ?? '';
  bool hasOutletId() => _outletId != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "taskType" field.
  String? _taskType;
  String get taskType => _taskType ?? '';
  bool hasTaskType() => _taskType != null;

  // "isOpen" field.
  bool? _isOpen;
  bool get isOpen => _isOpen ?? false;
  bool hasIsOpen() => _isOpen != null;

  // "isDeleted" field.
  bool? _isDeleted;
  bool get isDeleted => _isDeleted ?? false;
  bool hasIsDeleted() => _isDeleted != null;

  // "outletTimeZone" field.
  String? _outletTimeZone;
  String get outletTimeZone => _outletTimeZone ?? '';
  bool hasOutletTimeZone() => _outletTimeZone != null;

  // "priority" field.
  String? _priority;
  String get priority => _priority ?? '';
  bool hasPriority() => _priority != null;

  // "priorityRank" field.
  int? _priorityRank;
  int get priorityRank => _priorityRank ?? 0;
  bool hasPriorityRank() => _priorityRank != null;

  // "progressPercent" field.
  double? _progressPercent;
  double get progressPercent => _progressPercent ?? 0.0;
  bool hasProgressPercent() => _progressPercent != null;

  // "assignedAt" field.
  int? _assignedAt;
  int get assignedAt => _assignedAt ?? 0;
  bool hasAssignedAt() => _assignedAt != null;

  // "dueAt" field.
  int? _dueAt;
  int get dueAt => _dueAt ?? 0;
  bool hasDueAt() => _dueAt != null;

  // "taskNumber" field.
  String? _taskNumber;
  String get taskNumber => _taskNumber ?? '';
  bool hasTaskNumber() => _taskNumber != null;

  // "updatedAt" field.
  int? _updatedAt;
  int get updatedAt => _updatedAt ?? 0;
  bool hasUpdatedAt() => _updatedAt != null;

  // "updatedBy" field.
  String? _updatedBy;
  String get updatedBy => _updatedBy ?? '';
  bool hasUpdatedBy() => _updatedBy != null;

  // "version" field.
  int? _version;
  int get version => _version ?? 0;
  bool hasVersion() => _version != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "sourceType" field.
  String? _sourceType;
  String get sourceType => _sourceType ?? '';
  bool hasSourceType() => _sourceType != null;

  // "sourceId" field.
  String? _sourceId;
  String get sourceId => _sourceId ?? '';
  bool hasSourceId() => _sourceId != null;

  // "dueTime" field.
  int? _dueTime;
  int get dueTime => _dueTime ?? 0;
  bool hasDueTime() => _dueTime != null;

  // "taskDate" field.
  int? _taskDate;
  int get taskDate => _taskDate ?? 0;
  bool hasTaskDate() => _taskDate != null;

  // "dueDate" field.
  int? _dueDate;
  int get dueDate => _dueDate ?? 0;
  bool hasDueDate() => _dueDate != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _assignedBy = snapshotData['assignedBy'] as String?;
    _assignedByName = snapshotData['assignedByName'] as String?;
    _assignedTo = snapshotData['assignedTo'] as String?;
    _assignedToDepartment = snapshotData['assignedToDepartment'] as String?;
    _assignedToName = snapshotData['assignedToName'] as String?;
    _createdAt = castToType<int>(snapshotData['createdAt']);
    _createdBy = snapshotData['createdBy'] as String?;
    _description = snapshotData['description'] as String?;
    _outletId = snapshotData['outletId'] as String?;
    _status = snapshotData['status'] as String?;
    _title = snapshotData['title'] as String?;
    _taskType = snapshotData['taskType'] as String?;
    _isOpen = snapshotData['isOpen'] as bool?;
    _isDeleted = snapshotData['isDeleted'] as bool?;
    _outletTimeZone = snapshotData['outletTimeZone'] as String?;
    _priority = snapshotData['priority'] as String?;
    _priorityRank = castToType<int>(snapshotData['priorityRank']);
    _progressPercent = castToType<double>(snapshotData['progressPercent']);
    _assignedAt = castToType<int>(snapshotData['assignedAt']);
    _dueAt = castToType<int>(snapshotData['dueAt']);
    _taskNumber = snapshotData['taskNumber'] as String?;
    _updatedAt = castToType<int>(snapshotData['updatedAt']);
    _updatedBy = snapshotData['updatedBy'] as String?;
    _version = castToType<int>(snapshotData['version']);
    _id = snapshotData['id'] as String?;
    _sourceType = snapshotData['sourceType'] as String?;
    _sourceId = snapshotData['sourceId'] as String?;
    _dueTime = castToType<int>(snapshotData['dueTime']);
    _taskDate = castToType<int>(snapshotData['taskDate']);
    _dueDate = castToType<int>(snapshotData['dueDate']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('TASK_MANAGEMENT')
          : FirebaseFirestore.instance.collectionGroup('TASK_MANAGEMENT');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('TASK_MANAGEMENT').doc(id);

  static Stream<TaskManagementRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TaskManagementRecord.fromSnapshot(s));

  static Future<TaskManagementRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TaskManagementRecord.fromSnapshot(s));

  static TaskManagementRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TaskManagementRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TaskManagementRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TaskManagementRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TaskManagementRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TaskManagementRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createTaskManagementRecordData({
  String? assignedBy,
  String? assignedByName,
  String? assignedTo,
  String? assignedToDepartment,
  String? assignedToName,
  int? createdAt,
  String? createdBy,
  String? description,
  String? outletId,
  String? status,
  String? title,
  String? taskType,
  bool? isOpen,
  bool? isDeleted,
  String? outletTimeZone,
  String? priority,
  int? priorityRank,
  double? progressPercent,
  int? assignedAt,
  int? dueAt,
  String? taskNumber,
  int? updatedAt,
  String? updatedBy,
  int? version,
  String? id,
  String? sourceType,
  String? sourceId,
  int? dueTime,
  int? taskDate,
  int? dueDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'assignedBy': assignedBy,
      'assignedByName': assignedByName,
      'assignedTo': assignedTo,
      'assignedToDepartment': assignedToDepartment,
      'assignedToName': assignedToName,
      'createdAt': createdAt,
      'createdBy': createdBy,
      'description': description,
      'outletId': outletId,
      'status': status,
      'title': title,
      'taskType': taskType,
      'isOpen': isOpen,
      'isDeleted': isDeleted,
      'outletTimeZone': outletTimeZone,
      'priority': priority,
      'priorityRank': priorityRank,
      'progressPercent': progressPercent,
      'assignedAt': assignedAt,
      'dueAt': dueAt,
      'taskNumber': taskNumber,
      'updatedAt': updatedAt,
      'updatedBy': updatedBy,
      'version': version,
      'id': id,
      'sourceType': sourceType,
      'sourceId': sourceId,
      'dueTime': dueTime,
      'taskDate': taskDate,
      'dueDate': dueDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class TaskManagementRecordDocumentEquality
    implements Equality<TaskManagementRecord> {
  const TaskManagementRecordDocumentEquality();

  @override
  bool equals(TaskManagementRecord? e1, TaskManagementRecord? e2) {
    return e1?.assignedBy == e2?.assignedBy &&
        e1?.assignedByName == e2?.assignedByName &&
        e1?.assignedTo == e2?.assignedTo &&
        e1?.assignedToDepartment == e2?.assignedToDepartment &&
        e1?.assignedToName == e2?.assignedToName &&
        e1?.createdAt == e2?.createdAt &&
        e1?.createdBy == e2?.createdBy &&
        e1?.description == e2?.description &&
        e1?.outletId == e2?.outletId &&
        e1?.status == e2?.status &&
        e1?.title == e2?.title &&
        e1?.taskType == e2?.taskType &&
        e1?.isOpen == e2?.isOpen &&
        e1?.isDeleted == e2?.isDeleted &&
        e1?.outletTimeZone == e2?.outletTimeZone &&
        e1?.priority == e2?.priority &&
        e1?.priorityRank == e2?.priorityRank &&
        e1?.progressPercent == e2?.progressPercent &&
        e1?.assignedAt == e2?.assignedAt &&
        e1?.dueAt == e2?.dueAt &&
        e1?.taskNumber == e2?.taskNumber &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.updatedBy == e2?.updatedBy &&
        e1?.version == e2?.version &&
        e1?.id == e2?.id &&
        e1?.sourceType == e2?.sourceType &&
        e1?.sourceId == e2?.sourceId &&
        e1?.dueTime == e2?.dueTime &&
        e1?.taskDate == e2?.taskDate &&
        e1?.dueDate == e2?.dueDate;
  }

  @override
  int hash(TaskManagementRecord? e) => const ListEquality().hash([
        e?.assignedBy,
        e?.assignedByName,
        e?.assignedTo,
        e?.assignedToDepartment,
        e?.assignedToName,
        e?.createdAt,
        e?.createdBy,
        e?.description,
        e?.outletId,
        e?.status,
        e?.title,
        e?.taskType,
        e?.isOpen,
        e?.isDeleted,
        e?.outletTimeZone,
        e?.priority,
        e?.priorityRank,
        e?.progressPercent,
        e?.assignedAt,
        e?.dueAt,
        e?.taskNumber,
        e?.updatedAt,
        e?.updatedBy,
        e?.version,
        e?.id,
        e?.sourceType,
        e?.sourceId,
        e?.dueTime,
        e?.taskDate,
        e?.dueDate
      ]);

  @override
  bool isValidKey(Object? o) => o is TaskManagementRecord;
}
