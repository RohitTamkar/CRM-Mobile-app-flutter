import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LeadTaskRecord extends FirestoreRecord {
  LeadTaskRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "leadsCustomerName" field.
  String? _leadsCustomerName;
  String get leadsCustomerName => _leadsCustomerName ?? '';
  bool hasLeadsCustomerName() => _leadsCustomerName != null;

  // "locationCheckIn" field.
  String? _locationCheckIn;
  String get locationCheckIn => _locationCheckIn ?? '';
  bool hasLocationCheckIn() => _locationCheckIn != null;

  // "locationCheckOut" field.
  String? _locationCheckOut;
  String get locationCheckOut => _locationCheckOut ?? '';
  bool hasLocationCheckOut() => _locationCheckOut != null;

  // "timeIn" field.
  int? _timeIn;
  int get timeIn => _timeIn ?? 0;
  bool hasTimeIn() => _timeIn != null;

  // "timeOut" field.
  int? _timeOut;
  int get timeOut => _timeOut ?? 0;
  bool hasTimeOut() => _timeOut != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "note" field.
  String? _note;
  String get note => _note ?? '';
  bool hasNote() => _note != null;

  // "travelMode" field.
  String? _travelMode;
  String get travelMode => _travelMode ?? '';
  bool hasTravelMode() => _travelMode != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "currentTime" field.
  int? _currentTime;
  int get currentTime => _currentTime ?? 0;
  bool hasCurrentTime() => _currentTime != null;

  // "leadRefM" field.
  String? _leadRefM;
  String get leadRefM => _leadRefM ?? '';
  bool hasLeadRefM() => _leadRefM != null;

  // "locationCheckIn1" field.
  String? _locationCheckIn1;
  String get locationCheckIn1 => _locationCheckIn1 ?? '';
  bool hasLocationCheckIn1() => _locationCheckIn1 != null;

  // "locationCheckOut1" field.
  String? _locationCheckOut1;
  String get locationCheckOut1 => _locationCheckOut1 ?? '';
  bool hasLocationCheckOut1() => _locationCheckOut1 != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _leadsCustomerName = snapshotData['leadsCustomerName'] as String?;
    _locationCheckIn = snapshotData['locationCheckIn'] as String?;
    _locationCheckOut = snapshotData['locationCheckOut'] as String?;
    _timeIn = castToType<int>(snapshotData['timeIn']);
    _timeOut = castToType<int>(snapshotData['timeOut']);
    _id = snapshotData['id'] as String?;
    _note = snapshotData['note'] as String?;
    _travelMode = snapshotData['travelMode'] as String?;
    _address = snapshotData['address'] as String?;
    _currentTime = castToType<int>(snapshotData['currentTime']);
    _leadRefM = snapshotData['leadRefM'] as String?;
    _locationCheckIn1 = snapshotData['locationCheckIn1'] as String?;
    _locationCheckOut1 = snapshotData['locationCheckOut1'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('LEAD_TASK')
          : FirebaseFirestore.instance.collectionGroup('LEAD_TASK');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('LEAD_TASK').doc(id);

  static Stream<LeadTaskRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LeadTaskRecord.fromSnapshot(s));

  static Future<LeadTaskRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LeadTaskRecord.fromSnapshot(s));

  static LeadTaskRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LeadTaskRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LeadTaskRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LeadTaskRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LeadTaskRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LeadTaskRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createLeadTaskRecordData({
  String? leadsCustomerName,
  String? locationCheckIn,
  String? locationCheckOut,
  int? timeIn,
  int? timeOut,
  String? id,
  String? note,
  String? travelMode,
  String? address,
  int? currentTime,
  String? leadRefM,
  String? locationCheckIn1,
  String? locationCheckOut1,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'leadsCustomerName': leadsCustomerName,
      'locationCheckIn': locationCheckIn,
      'locationCheckOut': locationCheckOut,
      'timeIn': timeIn,
      'timeOut': timeOut,
      'id': id,
      'note': note,
      'travelMode': travelMode,
      'address': address,
      'currentTime': currentTime,
      'leadRefM': leadRefM,
      'locationCheckIn1': locationCheckIn1,
      'locationCheckOut1': locationCheckOut1,
    }.withoutNulls,
  );

  return firestoreData;
}

class LeadTaskRecordDocumentEquality implements Equality<LeadTaskRecord> {
  const LeadTaskRecordDocumentEquality();

  @override
  bool equals(LeadTaskRecord? e1, LeadTaskRecord? e2) {
    return e1?.leadsCustomerName == e2?.leadsCustomerName &&
        e1?.locationCheckIn == e2?.locationCheckIn &&
        e1?.locationCheckOut == e2?.locationCheckOut &&
        e1?.timeIn == e2?.timeIn &&
        e1?.timeOut == e2?.timeOut &&
        e1?.id == e2?.id &&
        e1?.note == e2?.note &&
        e1?.travelMode == e2?.travelMode &&
        e1?.address == e2?.address &&
        e1?.currentTime == e2?.currentTime &&
        e1?.leadRefM == e2?.leadRefM &&
        e1?.locationCheckIn1 == e2?.locationCheckIn1 &&
        e1?.locationCheckOut1 == e2?.locationCheckOut1;
  }

  @override
  int hash(LeadTaskRecord? e) => const ListEquality().hash([
        e?.leadsCustomerName,
        e?.locationCheckIn,
        e?.locationCheckOut,
        e?.timeIn,
        e?.timeOut,
        e?.id,
        e?.note,
        e?.travelMode,
        e?.address,
        e?.currentTime,
        e?.leadRefM,
        e?.locationCheckIn1,
        e?.locationCheckOut1
      ]);

  @override
  bool isValidKey(Object? o) => o is LeadTaskRecord;
}
