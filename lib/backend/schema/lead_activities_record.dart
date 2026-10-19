import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LeadActivitiesRecord extends FirestoreRecord {
  LeadActivitiesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "leadRefId" field.
  String? _leadRefId;
  String get leadRefId => _leadRefId ?? '';
  bool hasLeadRefId() => _leadRefId != null;

  // "scheduledDate" field.
  int? _scheduledDate;
  int get scheduledDate => _scheduledDate ?? 0;
  bool hasScheduledDate() => _scheduledDate != null;

  // "scheduledTime" field.
  int? _scheduledTime;
  int get scheduledTime => _scheduledTime ?? 0;
  bool hasScheduledTime() => _scheduledTime != null;

  // "createdDateInMili" field.
  int? _createdDateInMili;
  int get createdDateInMili => _createdDateInMili ?? 0;
  bool hasCreatedDateInMili() => _createdDateInMili != null;

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "assignedTo" field.
  String? _assignedTo;
  String get assignedTo => _assignedTo ?? '';
  bool hasAssignedTo() => _assignedTo != null;

  // "leadName" field.
  String? _leadName;
  String get leadName => _leadName ?? '';
  bool hasLeadName() => _leadName != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "mode" field.
  String? _mode;
  String get mode => _mode ?? '';
  bool hasMode() => _mode != null;

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "ImgUrlList" field.
  List<String>? _imgUrlList;
  List<String> get imgUrlList => _imgUrlList ?? const [];
  bool hasImgUrlList() => _imgUrlList != null;

  // "solution" field.
  String? _solution;
  String get solution => _solution ?? '';
  bool hasSolution() => _solution != null;

  // "checkinLocation" field.
  LatLng? _checkinLocation;
  LatLng? get checkinLocation => _checkinLocation;
  bool hasCheckinLocation() => _checkinLocation != null;

  // "checkoutLocation" field.
  LatLng? _checkoutLocation;
  LatLng? get checkoutLocation => _checkoutLocation;
  bool hasCheckoutLocation() => _checkoutLocation != null;

  // "stage" field.
  String? _stage;
  String get stage => _stage ?? '';
  bool hasStage() => _stage != null;

  // "travelMode" field.
  String? _travelMode;
  String get travelMode => _travelMode ?? '';
  bool hasTravelMode() => _travelMode != null;

  // "remark" field.
  String? _remark;
  String get remark => _remark ?? '';
  bool hasRemark() => _remark != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _leadRefId = snapshotData['leadRefId'] as String?;
    _scheduledDate = castToType<int>(snapshotData['scheduledDate']);
    _scheduledTime = castToType<int>(snapshotData['scheduledTime']);
    _createdDateInMili = castToType<int>(snapshotData['createdDateInMili']);
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _description = snapshotData['description'] as String?;
    _assignedTo = snapshotData['assignedTo'] as String?;
    _leadName = snapshotData['leadName'] as String?;
    _type = snapshotData['type'] as String?;
    _status = snapshotData['status'] as String?;
    _mode = snapshotData['mode'] as String?;
    _imageUrl = snapshotData['imageUrl'] as String?;
    _imgUrlList = getDataList(snapshotData['ImgUrlList']);
    _solution = snapshotData['solution'] as String?;
    _checkinLocation = snapshotData['checkinLocation'] as LatLng?;
    _checkoutLocation = snapshotData['checkoutLocation'] as LatLng?;
    _stage = snapshotData['stage'] as String?;
    _travelMode = snapshotData['travelMode'] as String?;
    _remark = snapshotData['remark'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('LEAD_ACTIVITIES')
          : FirebaseFirestore.instance.collectionGroup('LEAD_ACTIVITIES');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('LEAD_ACTIVITIES').doc(id);

  static Stream<LeadActivitiesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LeadActivitiesRecord.fromSnapshot(s));

  static Future<LeadActivitiesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LeadActivitiesRecord.fromSnapshot(s));

  static LeadActivitiesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LeadActivitiesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LeadActivitiesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LeadActivitiesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LeadActivitiesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LeadActivitiesRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createLeadActivitiesRecordData({
  String? id,
  String? leadRefId,
  int? scheduledDate,
  int? scheduledTime,
  int? createdDateInMili,
  DateTime? createdDate,
  String? description,
  String? assignedTo,
  String? leadName,
  String? type,
  String? status,
  String? mode,
  String? imageUrl,
  String? solution,
  LatLng? checkinLocation,
  LatLng? checkoutLocation,
  String? stage,
  String? travelMode,
  String? remark,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'leadRefId': leadRefId,
      'scheduledDate': scheduledDate,
      'scheduledTime': scheduledTime,
      'createdDateInMili': createdDateInMili,
      'createdDate': createdDate,
      'description': description,
      'assignedTo': assignedTo,
      'leadName': leadName,
      'type': type,
      'status': status,
      'mode': mode,
      'imageUrl': imageUrl,
      'solution': solution,
      'checkinLocation': checkinLocation,
      'checkoutLocation': checkoutLocation,
      'stage': stage,
      'travelMode': travelMode,
      'remark': remark,
    }.withoutNulls,
  );

  return firestoreData;
}

class LeadActivitiesRecordDocumentEquality
    implements Equality<LeadActivitiesRecord> {
  const LeadActivitiesRecordDocumentEquality();

  @override
  bool equals(LeadActivitiesRecord? e1, LeadActivitiesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.id == e2?.id &&
        e1?.leadRefId == e2?.leadRefId &&
        e1?.scheduledDate == e2?.scheduledDate &&
        e1?.scheduledTime == e2?.scheduledTime &&
        e1?.createdDateInMili == e2?.createdDateInMili &&
        e1?.createdDate == e2?.createdDate &&
        e1?.description == e2?.description &&
        e1?.assignedTo == e2?.assignedTo &&
        e1?.leadName == e2?.leadName &&
        e1?.type == e2?.type &&
        e1?.status == e2?.status &&
        e1?.mode == e2?.mode &&
        e1?.imageUrl == e2?.imageUrl &&
        listEquality.equals(e1?.imgUrlList, e2?.imgUrlList) &&
        e1?.solution == e2?.solution &&
        e1?.checkinLocation == e2?.checkinLocation &&
        e1?.checkoutLocation == e2?.checkoutLocation &&
        e1?.stage == e2?.stage &&
        e1?.travelMode == e2?.travelMode &&
        e1?.remark == e2?.remark;
  }

  @override
  int hash(LeadActivitiesRecord? e) => const ListEquality().hash([
        e?.id,
        e?.leadRefId,
        e?.scheduledDate,
        e?.scheduledTime,
        e?.createdDateInMili,
        e?.createdDate,
        e?.description,
        e?.assignedTo,
        e?.leadName,
        e?.type,
        e?.status,
        e?.mode,
        e?.imageUrl,
        const ListEquality().hash(e?.imgUrlList),
        e?.solution,
        e?.checkinLocation,
        e?.checkoutLocation,
        e?.stage,
        e?.travelMode,
        e?.remark
      ]);

  @override
  bool isValidKey(Object? o) => o is LeadActivitiesRecord;
}
