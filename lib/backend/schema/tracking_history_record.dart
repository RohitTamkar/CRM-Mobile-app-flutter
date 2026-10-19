import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrackingHistoryRecord extends FirestoreRecord {
  TrackingHistoryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "currentlocation" field.
  LatLng? _currentlocation;
  LatLng? get currentlocation => _currentlocation;
  bool hasCurrentlocation() => _currentlocation != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "mobile" field.
  String? _mobile;
  String get mobile => _mobile ?? '';
  bool hasMobile() => _mobile != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "userID" field.
  String? _userID;
  String get userID => _userID ?? '';
  bool hasUserID() => _userID != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _currentlocation = snapshotData['currentlocation'] as LatLng?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _name = snapshotData['name'] as String?;
    _mobile = snapshotData['mobile'] as String?;
    _address = snapshotData['address'] as String?;
    _userID = snapshotData['userID'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('TRACKING_HISTORY')
          : FirebaseFirestore.instance.collectionGroup('TRACKING_HISTORY');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('TRACKING_HISTORY').doc(id);

  static Stream<TrackingHistoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TrackingHistoryRecord.fromSnapshot(s));

  static Future<TrackingHistoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TrackingHistoryRecord.fromSnapshot(s));

  static TrackingHistoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TrackingHistoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TrackingHistoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TrackingHistoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TrackingHistoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TrackingHistoryRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createTrackingHistoryRecordData({
  LatLng? currentlocation,
  DateTime? timestamp,
  String? name,
  String? mobile,
  String? address,
  String? userID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'currentlocation': currentlocation,
      'timestamp': timestamp,
      'name': name,
      'mobile': mobile,
      'address': address,
      'userID': userID,
    }.withoutNulls,
  );

  return firestoreData;
}

class TrackingHistoryRecordDocumentEquality
    implements Equality<TrackingHistoryRecord> {
  const TrackingHistoryRecordDocumentEquality();

  @override
  bool equals(TrackingHistoryRecord? e1, TrackingHistoryRecord? e2) {
    return e1?.currentlocation == e2?.currentlocation &&
        e1?.timestamp == e2?.timestamp &&
        e1?.name == e2?.name &&
        e1?.mobile == e2?.mobile &&
        e1?.address == e2?.address &&
        e1?.userID == e2?.userID;
  }

  @override
  int hash(TrackingHistoryRecord? e) => const ListEquality().hash([
        e?.currentlocation,
        e?.timestamp,
        e?.name,
        e?.mobile,
        e?.address,
        e?.userID
      ]);

  @override
  bool isValidKey(Object? o) => o is TrackingHistoryRecord;
}
