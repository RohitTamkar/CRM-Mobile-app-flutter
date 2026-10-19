import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LeadDemoRecord extends FirestoreRecord {
  LeadDemoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "leadsCustomerName" field.
  String? _leadsCustomerName;
  String get leadsCustomerName => _leadsCustomerName ?? '';
  bool hasLeadsCustomerName() => _leadsCustomerName != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "currentTime" field.
  DateTime? _currentTime;
  DateTime? get currentTime => _currentTime;
  bool hasCurrentTime() => _currentTime != null;

  // "demoList" field.
  List<DemoListStruct>? _demoList;
  List<DemoListStruct> get demoList => _demoList ?? const [];
  bool hasDemoList() => _demoList != null;

  // "leadRefM" field.
  String? _leadRefM;
  String get leadRefM => _leadRefM ?? '';
  bool hasLeadRefM() => _leadRefM != null;

  // "createdDate" field.
  int? _createdDate;
  int get createdDate => _createdDate ?? 0;
  bool hasCreatedDate() => _createdDate != null;

  // "updatedDate" field.
  int? _updatedDate;
  int get updatedDate => _updatedDate ?? 0;
  bool hasUpdatedDate() => _updatedDate != null;

  // "mobile" field.
  String? _mobile;
  String get mobile => _mobile ?? '';
  bool hasMobile() => _mobile != null;

  // "source" field.
  String? _source;
  String get source => _source ?? '';
  bool hasSource() => _source != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "assignedTo" field.
  String? _assignedTo;
  String get assignedTo => _assignedTo ?? '';
  bool hasAssignedTo() => _assignedTo != null;

  // "requirement" field.
  String? _requirement;
  String get requirement => _requirement ?? '';
  bool hasRequirement() => _requirement != null;

  // "dayId" field.
  String? _dayId;
  String get dayId => _dayId ?? '';
  bool hasDayId() => _dayId != null;

  // "checkInLocationDetails" field.
  LocationDetailsStruct? _checkInLocationDetails;
  LocationDetailsStruct get checkInLocationDetails =>
      _checkInLocationDetails ?? LocationDetailsStruct();
  bool hasCheckInLocationDetails() => _checkInLocationDetails != null;

  // "checkOutLocationDetails" field.
  LocationDetailsStruct? _checkOutLocationDetails;
  LocationDetailsStruct get checkOutLocationDetails =>
      _checkOutLocationDetails ?? LocationDetailsStruct();
  bool hasCheckOutLocationDetails() => _checkOutLocationDetails != null;

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "imageUrlList" field.
  List<String>? _imageUrlList;
  List<String> get imageUrlList => _imageUrlList ?? const [];
  bool hasImageUrlList() => _imageUrlList != null;

  // "checkInLocation" field.
  LatLng? _checkInLocation;
  LatLng? get checkInLocation => _checkInLocation;
  bool hasCheckInLocation() => _checkInLocation != null;

  // "checkOutLocation" field.
  LatLng? _checkOutLocation;
  LatLng? get checkOutLocation => _checkOutLocation;
  bool hasCheckOutLocation() => _checkOutLocation != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _leadsCustomerName = snapshotData['leadsCustomerName'] as String?;
    _id = snapshotData['id'] as String?;
    _address = snapshotData['address'] as String?;
    _currentTime = snapshotData['currentTime'] as DateTime?;
    _demoList = getStructList(
      snapshotData['demoList'],
      DemoListStruct.fromMap,
    );
    _leadRefM = snapshotData['leadRefM'] as String?;
    _createdDate = castToType<int>(snapshotData['createdDate']);
    _updatedDate = castToType<int>(snapshotData['updatedDate']);
    _mobile = snapshotData['mobile'] as String?;
    _source = snapshotData['source'] as String?;
    _city = snapshotData['city'] as String?;
    _assignedTo = snapshotData['assignedTo'] as String?;
    _requirement = snapshotData['requirement'] as String?;
    _dayId = snapshotData['dayId'] as String?;
    _checkInLocationDetails =
        snapshotData['checkInLocationDetails'] is LocationDetailsStruct
            ? snapshotData['checkInLocationDetails']
            : LocationDetailsStruct.maybeFromMap(
                snapshotData['checkInLocationDetails']);
    _checkOutLocationDetails =
        snapshotData['checkOutLocationDetails'] is LocationDetailsStruct
            ? snapshotData['checkOutLocationDetails']
            : LocationDetailsStruct.maybeFromMap(
                snapshotData['checkOutLocationDetails']);
    _imageUrl = snapshotData['imageUrl'] as String?;
    _imageUrlList = getDataList(snapshotData['imageUrlList']);
    _checkInLocation = snapshotData['checkInLocation'] as LatLng?;
    _checkOutLocation = snapshotData['checkOutLocation'] as LatLng?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('LEAD_DEMO')
          : FirebaseFirestore.instance.collectionGroup('LEAD_DEMO');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('LEAD_DEMO').doc(id);

  static Stream<LeadDemoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LeadDemoRecord.fromSnapshot(s));

  static Future<LeadDemoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LeadDemoRecord.fromSnapshot(s));

  static LeadDemoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LeadDemoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LeadDemoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LeadDemoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LeadDemoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LeadDemoRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createLeadDemoRecordData({
  String? leadsCustomerName,
  String? id,
  String? address,
  DateTime? currentTime,
  String? leadRefM,
  int? createdDate,
  int? updatedDate,
  String? mobile,
  String? source,
  String? city,
  String? assignedTo,
  String? requirement,
  String? dayId,
  LocationDetailsStruct? checkInLocationDetails,
  LocationDetailsStruct? checkOutLocationDetails,
  String? imageUrl,
  LatLng? checkInLocation,
  LatLng? checkOutLocation,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'leadsCustomerName': leadsCustomerName,
      'id': id,
      'address': address,
      'currentTime': currentTime,
      'leadRefM': leadRefM,
      'createdDate': createdDate,
      'updatedDate': updatedDate,
      'mobile': mobile,
      'source': source,
      'city': city,
      'assignedTo': assignedTo,
      'requirement': requirement,
      'dayId': dayId,
      'checkInLocationDetails': LocationDetailsStruct().toMap(),
      'checkOutLocationDetails': LocationDetailsStruct().toMap(),
      'imageUrl': imageUrl,
      'checkInLocation': checkInLocation,
      'checkOutLocation': checkOutLocation,
    }.withoutNulls,
  );

  // Handle nested data for "checkInLocationDetails" field.
  addLocationDetailsStructData(
      firestoreData, checkInLocationDetails, 'checkInLocationDetails');

  // Handle nested data for "checkOutLocationDetails" field.
  addLocationDetailsStructData(
      firestoreData, checkOutLocationDetails, 'checkOutLocationDetails');

  return firestoreData;
}

class LeadDemoRecordDocumentEquality implements Equality<LeadDemoRecord> {
  const LeadDemoRecordDocumentEquality();

  @override
  bool equals(LeadDemoRecord? e1, LeadDemoRecord? e2) {
    const listEquality = ListEquality();
    return e1?.leadsCustomerName == e2?.leadsCustomerName &&
        e1?.id == e2?.id &&
        e1?.address == e2?.address &&
        e1?.currentTime == e2?.currentTime &&
        listEquality.equals(e1?.demoList, e2?.demoList) &&
        e1?.leadRefM == e2?.leadRefM &&
        e1?.createdDate == e2?.createdDate &&
        e1?.updatedDate == e2?.updatedDate &&
        e1?.mobile == e2?.mobile &&
        e1?.source == e2?.source &&
        e1?.city == e2?.city &&
        e1?.assignedTo == e2?.assignedTo &&
        e1?.requirement == e2?.requirement &&
        e1?.dayId == e2?.dayId &&
        e1?.checkInLocationDetails == e2?.checkInLocationDetails &&
        e1?.checkOutLocationDetails == e2?.checkOutLocationDetails &&
        e1?.imageUrl == e2?.imageUrl &&
        listEquality.equals(e1?.imageUrlList, e2?.imageUrlList) &&
        e1?.checkInLocation == e2?.checkInLocation &&
        e1?.checkOutLocation == e2?.checkOutLocation;
  }

  @override
  int hash(LeadDemoRecord? e) => const ListEquality().hash([
        e?.leadsCustomerName,
        e?.id,
        e?.address,
        e?.currentTime,
        const ListEquality().hash(e?.demoList),
        e?.leadRefM,
        e?.createdDate,
        e?.updatedDate,
        e?.mobile,
        e?.source,
        e?.city,
        e?.assignedTo,
        e?.requirement,
        e?.dayId,
        e?.checkInLocationDetails,
        e?.checkOutLocationDetails,
        e?.imageUrl,
        const ListEquality().hash(e?.imageUrlList),
        e?.checkInLocation,
        e?.checkOutLocation
      ]);

  @override
  bool isValidKey(Object? o) => o is LeadDemoRecord;
}
