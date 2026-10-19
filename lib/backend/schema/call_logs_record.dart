import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CallLogsRecord extends FirestoreRecord {
  CallLogsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "createdAt" field.
  int? _createdAt;
  int get createdAt => _createdAt ?? 0;
  bool hasCreatedAt() => _createdAt != null;

  // "department" field.
  String? _department;
  String get department => _department ?? '';
  bool hasDepartment() => _department != null;

  // "direction" field.
  String? _direction;
  String get direction => _direction ?? '';
  bool hasDirection() => _direction != null;

  // "number" field.
  String? _number;
  String get number => _number ?? '';
  bool hasNumber() => _number != null;

  // "receiverMobileNo" field.
  String? _receiverMobileNo;
  String get receiverMobileNo => _receiverMobileNo ?? '';
  bool hasReceiverMobileNo() => _receiverMobileNo != null;

  // "receiverName" field.
  String? _receiverName;
  String get receiverName => _receiverName ?? '';
  bool hasReceiverName() => _receiverName != null;

  // "durationSeconds" field.
  int? _durationSeconds;
  int get durationSeconds => _durationSeconds ?? 0;
  bool hasDurationSeconds() => _durationSeconds != null;

  // "timestamp" field.
  int? _timestamp;
  int get timestamp => _timestamp ?? 0;
  bool hasTimestamp() => _timestamp != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdAt = castToType<int>(snapshotData['createdAt']);
    _department = snapshotData['department'] as String?;
    _direction = snapshotData['direction'] as String?;
    _number = snapshotData['number'] as String?;
    _receiverMobileNo = snapshotData['receiverMobileNo'] as String?;
    _receiverName = snapshotData['receiverName'] as String?;
    _durationSeconds = castToType<int>(snapshotData['durationSeconds']);
    _timestamp = castToType<int>(snapshotData['timestamp']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('CALL_LOGS')
          : FirebaseFirestore.instance.collectionGroup('CALL_LOGS');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('CALL_LOGS').doc(id);

  static Stream<CallLogsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CallLogsRecord.fromSnapshot(s));

  static Future<CallLogsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CallLogsRecord.fromSnapshot(s));

  static CallLogsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CallLogsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CallLogsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CallLogsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CallLogsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CallLogsRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createCallLogsRecordData({
  int? createdAt,
  String? department,
  String? direction,
  String? number,
  String? receiverMobileNo,
  String? receiverName,
  int? durationSeconds,
  int? timestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdAt': createdAt,
      'department': department,
      'direction': direction,
      'number': number,
      'receiverMobileNo': receiverMobileNo,
      'receiverName': receiverName,
      'durationSeconds': durationSeconds,
      'timestamp': timestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class CallLogsRecordDocumentEquality implements Equality<CallLogsRecord> {
  const CallLogsRecordDocumentEquality();

  @override
  bool equals(CallLogsRecord? e1, CallLogsRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.department == e2?.department &&
        e1?.direction == e2?.direction &&
        e1?.number == e2?.number &&
        e1?.receiverMobileNo == e2?.receiverMobileNo &&
        e1?.receiverName == e2?.receiverName &&
        e1?.durationSeconds == e2?.durationSeconds &&
        e1?.timestamp == e2?.timestamp;
  }

  @override
  int hash(CallLogsRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.department,
        e?.direction,
        e?.number,
        e?.receiverMobileNo,
        e?.receiverName,
        e?.durationSeconds,
        e?.timestamp
      ]);

  @override
  bool isValidKey(Object? o) => o is CallLogsRecord;
}
