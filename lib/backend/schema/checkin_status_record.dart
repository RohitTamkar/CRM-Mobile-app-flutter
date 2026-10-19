import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CheckinStatusRecord extends FirestoreRecord {
  CheckinStatusRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "assignedTo" field.
  String? _assignedTo;
  String get assignedTo => _assignedTo ?? '';
  bool hasAssignedTo() => _assignedTo != null;

  // "dayId" field.
  String? _dayId;
  String get dayId => _dayId ?? '';
  bool hasDayId() => _dayId != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  // "updatedDate" field.
  int? _updatedDate;
  int get updatedDate => _updatedDate ?? 0;
  bool hasUpdatedDate() => _updatedDate != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "outletId" field.
  String? _outletId;
  String get outletId => _outletId ?? '';
  bool hasOutletId() => _outletId != null;

  // "leadMRefId" field.
  String? _leadMRefId;
  String get leadMRefId => _leadMRefId ?? '';
  bool hasLeadMRefId() => _leadMRefId != null;

  // "travelKm" field.
  double? _travelKm;
  double get travelKm => _travelKm ?? 0.0;
  bool hasTravelKm() => _travelKm != null;

  // "startingPoint" field.
  LatLng? _startingPoint;
  LatLng? get startingPoint => _startingPoint;
  bool hasStartingPoint() => _startingPoint != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _assignedTo = snapshotData['assignedTo'] as String?;
    _dayId = snapshotData['dayId'] as String?;
    _status = snapshotData['status'] as bool?;
    _updatedDate = castToType<int>(snapshotData['updatedDate']);
    _id = snapshotData['id'] as String?;
    _outletId = snapshotData['outletId'] as String?;
    _leadMRefId = snapshotData['leadMRefId'] as String?;
    _travelKm = castToType<double>(snapshotData['travelKm']);
    _startingPoint = snapshotData['startingPoint'] as LatLng?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('CHECKIN_STATUS')
          : FirebaseFirestore.instance.collectionGroup('CHECKIN_STATUS');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('CHECKIN_STATUS').doc(id);

  static Stream<CheckinStatusRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CheckinStatusRecord.fromSnapshot(s));

  static Future<CheckinStatusRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CheckinStatusRecord.fromSnapshot(s));

  static CheckinStatusRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CheckinStatusRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CheckinStatusRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CheckinStatusRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CheckinStatusRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CheckinStatusRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createCheckinStatusRecordData({
  String? assignedTo,
  String? dayId,
  bool? status,
  int? updatedDate,
  String? id,
  String? outletId,
  String? leadMRefId,
  double? travelKm,
  LatLng? startingPoint,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'assignedTo': assignedTo,
      'dayId': dayId,
      'status': status,
      'updatedDate': updatedDate,
      'id': id,
      'outletId': outletId,
      'leadMRefId': leadMRefId,
      'travelKm': travelKm,
      'startingPoint': startingPoint,
    }.withoutNulls,
  );

  return firestoreData;
}

class CheckinStatusRecordDocumentEquality
    implements Equality<CheckinStatusRecord> {
  const CheckinStatusRecordDocumentEquality();

  @override
  bool equals(CheckinStatusRecord? e1, CheckinStatusRecord? e2) {
    return e1?.assignedTo == e2?.assignedTo &&
        e1?.dayId == e2?.dayId &&
        e1?.status == e2?.status &&
        e1?.updatedDate == e2?.updatedDate &&
        e1?.id == e2?.id &&
        e1?.outletId == e2?.outletId &&
        e1?.leadMRefId == e2?.leadMRefId &&
        e1?.travelKm == e2?.travelKm &&
        e1?.startingPoint == e2?.startingPoint;
  }

  @override
  int hash(CheckinStatusRecord? e) => const ListEquality().hash([
        e?.assignedTo,
        e?.dayId,
        e?.status,
        e?.updatedDate,
        e?.id,
        e?.outletId,
        e?.leadMRefId,
        e?.travelKm,
        e?.startingPoint
      ]);

  @override
  bool isValidKey(Object? o) => o is CheckinStatusRecord;
}
