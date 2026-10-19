import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServiceManagementRecord extends FirestoreRecord {
  ServiceManagementRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "customerName" field.
  String? _customerName;
  String get customerName => _customerName ?? '';
  bool hasCustomerName() => _customerName != null;

  // "mobile" field.
  String? _mobile;
  String get mobile => _mobile ?? '';
  bool hasMobile() => _mobile != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "outletName" field.
  String? _outletName;
  String get outletName => _outletName ?? '';
  bool hasOutletName() => _outletName != null;

  // "contactPerson" field.
  String? _contactPerson;
  String get contactPerson => _contactPerson ?? '';
  bool hasContactPerson() => _contactPerson != null;

  // "designation" field.
  String? _designation;
  String get designation => _designation ?? '';
  bool hasDesignation() => _designation != null;

  // "typeOfService" field.
  String? _typeOfService;
  String get typeOfService => _typeOfService ?? '';
  bool hasTypeOfService() => _typeOfService != null;

  // "machineModel" field.
  String? _machineModel;
  String get machineModel => _machineModel ?? '';
  bool hasMachineModel() => _machineModel != null;

  // "machineNumber" field.
  String? _machineNumber;
  String get machineNumber => _machineNumber ?? '';
  bool hasMachineNumber() => _machineNumber != null;

  // "travelMode" field.
  String? _travelMode;
  String get travelMode => _travelMode ?? '';
  bool hasTravelMode() => _travelMode != null;

  // "extraDetails" field.
  String? _extraDetails;
  String get extraDetails => _extraDetails ?? '';
  bool hasExtraDetails() => _extraDetails != null;

  // "contactPersonMobile" field.
  String? _contactPersonMobile;
  String get contactPersonMobile => _contactPersonMobile ?? '';
  bool hasContactPersonMobile() => _contactPersonMobile != null;

  // "checkInLocation" field.
  LatLng? _checkInLocation;
  LatLng? get checkInLocation => _checkInLocation;
  bool hasCheckInLocation() => _checkInLocation != null;

  // "checkOutLocation" field.
  LatLng? _checkOutLocation;
  LatLng? get checkOutLocation => _checkOutLocation;
  bool hasCheckOutLocation() => _checkOutLocation != null;

  // "checkInTime" field.
  int? _checkInTime;
  int get checkInTime => _checkInTime ?? 0;
  bool hasCheckInTime() => _checkInTime != null;

  // "checkOutTime" field.
  int? _checkOutTime;
  int get checkOutTime => _checkOutTime ?? 0;
  bool hasCheckOutTime() => _checkOutTime != null;

  // "createdDate" field.
  int? _createdDate;
  int get createdDate => _createdDate ?? 0;
  bool hasCreatedDate() => _createdDate != null;

  // "updatedDate" field.
  int? _updatedDate;
  int get updatedDate => _updatedDate ?? 0;
  bool hasUpdatedDate() => _updatedDate != null;

  // "currentTime" field.
  DateTime? _currentTime;
  DateTime? get currentTime => _currentTime;
  bool hasCurrentTime() => _currentTime != null;

  // "createdBy" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  // "userid" field.
  String? _userid;
  String get userid => _userid ?? '';
  bool hasUserid() => _userid != null;

  // "dayId" field.
  String? _dayId;
  String get dayId => _dayId ?? '';
  bool hasDayId() => _dayId != null;

  // "TransportName" field.
  String? _transportName;
  String get transportName => _transportName ?? '';
  bool hasTransportName() => _transportName != null;

  // "CourierAmount" field.
  String? _courierAmount;
  String get courierAmount => _courierAmount ?? '';
  bool hasCourierAmount() => _courierAmount != null;

  // "leadRefM" field.
  String? _leadRefM;
  String get leadRefM => _leadRefM ?? '';
  bool hasLeadRefM() => _leadRefM != null;

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

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _customerName = snapshotData['customerName'] as String?;
    _mobile = snapshotData['mobile'] as String?;
    _address = snapshotData['address'] as String?;
    _outletName = snapshotData['outletName'] as String?;
    _contactPerson = snapshotData['contactPerson'] as String?;
    _designation = snapshotData['designation'] as String?;
    _typeOfService = snapshotData['typeOfService'] as String?;
    _machineModel = snapshotData['machineModel'] as String?;
    _machineNumber = snapshotData['machineNumber'] as String?;
    _travelMode = snapshotData['travelMode'] as String?;
    _extraDetails = snapshotData['extraDetails'] as String?;
    _contactPersonMobile = snapshotData['contactPersonMobile'] as String?;
    _checkInLocation = snapshotData['checkInLocation'] as LatLng?;
    _checkOutLocation = snapshotData['checkOutLocation'] as LatLng?;
    _checkInTime = castToType<int>(snapshotData['checkInTime']);
    _checkOutTime = castToType<int>(snapshotData['checkOutTime']);
    _createdDate = castToType<int>(snapshotData['createdDate']);
    _updatedDate = castToType<int>(snapshotData['updatedDate']);
    _currentTime = snapshotData['currentTime'] as DateTime?;
    _createdBy = snapshotData['createdBy'] as DocumentReference?;
    _userid = snapshotData['userid'] as String?;
    _dayId = snapshotData['dayId'] as String?;
    _transportName = snapshotData['TransportName'] as String?;
    _courierAmount = snapshotData['CourierAmount'] as String?;
    _leadRefM = snapshotData['leadRefM'] as String?;
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
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('SERVICE_MANAGEMENT')
          : FirebaseFirestore.instance.collectionGroup('SERVICE_MANAGEMENT');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('SERVICE_MANAGEMENT').doc(id);

  static Stream<ServiceManagementRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ServiceManagementRecord.fromSnapshot(s));

  static Future<ServiceManagementRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ServiceManagementRecord.fromSnapshot(s));

  static ServiceManagementRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ServiceManagementRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ServiceManagementRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ServiceManagementRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ServiceManagementRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ServiceManagementRecord &&
      reference.path == other.reference.path;
}

Map<String, dynamic> createServiceManagementRecordData({
  String? id,
  String? customerName,
  String? mobile,
  String? address,
  String? outletName,
  String? contactPerson,
  String? designation,
  String? typeOfService,
  String? machineModel,
  String? machineNumber,
  String? travelMode,
  String? extraDetails,
  String? contactPersonMobile,
  LatLng? checkInLocation,
  LatLng? checkOutLocation,
  int? checkInTime,
  int? checkOutTime,
  int? createdDate,
  int? updatedDate,
  DateTime? currentTime,
  DocumentReference? createdBy,
  String? userid,
  String? dayId,
  String? transportName,
  String? courierAmount,
  String? leadRefM,
  LocationDetailsStruct? checkInLocationDetails,
  LocationDetailsStruct? checkOutLocationDetails,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'customerName': customerName,
      'mobile': mobile,
      'address': address,
      'outletName': outletName,
      'contactPerson': contactPerson,
      'designation': designation,
      'typeOfService': typeOfService,
      'machineModel': machineModel,
      'machineNumber': machineNumber,
      'travelMode': travelMode,
      'extraDetails': extraDetails,
      'contactPersonMobile': contactPersonMobile,
      'checkInLocation': checkInLocation,
      'checkOutLocation': checkOutLocation,
      'checkInTime': checkInTime,
      'checkOutTime': checkOutTime,
      'createdDate': createdDate,
      'updatedDate': updatedDate,
      'currentTime': currentTime,
      'createdBy': createdBy,
      'userid': userid,
      'dayId': dayId,
      'TransportName': transportName,
      'CourierAmount': courierAmount,
      'leadRefM': leadRefM,
      'checkInLocationDetails': LocationDetailsStruct().toMap(),
      'checkOutLocationDetails': LocationDetailsStruct().toMap(),
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

class ServiceManagementRecordDocumentEquality
    implements Equality<ServiceManagementRecord> {
  const ServiceManagementRecordDocumentEquality();

  @override
  bool equals(ServiceManagementRecord? e1, ServiceManagementRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.customerName == e2?.customerName &&
        e1?.mobile == e2?.mobile &&
        e1?.address == e2?.address &&
        e1?.outletName == e2?.outletName &&
        e1?.contactPerson == e2?.contactPerson &&
        e1?.designation == e2?.designation &&
        e1?.typeOfService == e2?.typeOfService &&
        e1?.machineModel == e2?.machineModel &&
        e1?.machineNumber == e2?.machineNumber &&
        e1?.travelMode == e2?.travelMode &&
        e1?.extraDetails == e2?.extraDetails &&
        e1?.contactPersonMobile == e2?.contactPersonMobile &&
        e1?.checkInLocation == e2?.checkInLocation &&
        e1?.checkOutLocation == e2?.checkOutLocation &&
        e1?.checkInTime == e2?.checkInTime &&
        e1?.checkOutTime == e2?.checkOutTime &&
        e1?.createdDate == e2?.createdDate &&
        e1?.updatedDate == e2?.updatedDate &&
        e1?.currentTime == e2?.currentTime &&
        e1?.createdBy == e2?.createdBy &&
        e1?.userid == e2?.userid &&
        e1?.dayId == e2?.dayId &&
        e1?.transportName == e2?.transportName &&
        e1?.courierAmount == e2?.courierAmount &&
        e1?.leadRefM == e2?.leadRefM &&
        e1?.checkInLocationDetails == e2?.checkInLocationDetails &&
        e1?.checkOutLocationDetails == e2?.checkOutLocationDetails;
  }

  @override
  int hash(ServiceManagementRecord? e) => const ListEquality().hash([
        e?.id,
        e?.customerName,
        e?.mobile,
        e?.address,
        e?.outletName,
        e?.contactPerson,
        e?.designation,
        e?.typeOfService,
        e?.machineModel,
        e?.machineNumber,
        e?.travelMode,
        e?.extraDetails,
        e?.contactPersonMobile,
        e?.checkInLocation,
        e?.checkOutLocation,
        e?.checkInTime,
        e?.checkOutTime,
        e?.createdDate,
        e?.updatedDate,
        e?.currentTime,
        e?.createdBy,
        e?.userid,
        e?.dayId,
        e?.transportName,
        e?.courierAmount,
        e?.leadRefM,
        e?.checkInLocationDetails,
        e?.checkOutLocationDetails
      ]);

  @override
  bool isValidKey(Object? o) => o is ServiceManagementRecord;
}
