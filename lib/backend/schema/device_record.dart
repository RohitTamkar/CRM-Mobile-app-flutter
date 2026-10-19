import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeviceRecord extends FirestoreRecord {
  DeviceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "deviceId" field.
  String? _deviceId;
  String get deviceId => _deviceId ?? '';
  bool hasDeviceId() => _deviceId != null;

  // "active" field.
  bool? _active;
  bool get active => _active ?? false;
  bool hasActive() => _active != null;

  // "board" field.
  String? _board;
  String get board => _board ?? '';
  bool hasBoard() => _board != null;

  // "brand" field.
  String? _brand;
  String get brand => _brand ?? '';
  bool hasBrand() => _brand != null;

  // "connectedToNetwork" field.
  bool? _connectedToNetwork;
  bool get connectedToNetwork => _connectedToNetwork ?? false;
  bool hasConnectedToNetwork() => _connectedToNetwork != null;

  // "createdDate" field.
  int? _createdDate;
  int get createdDate => _createdDate ?? 0;
  bool hasCreatedDate() => _createdDate != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "manufacture" field.
  String? _manufacture;
  String get manufacture => _manufacture ?? '';
  bool hasManufacture() => _manufacture != null;

  // "model" field.
  String? _model;
  String get model => _model ?? '';
  bool hasModel() => _model != null;

  // "serial" field.
  String? _serial;
  String get serial => _serial ?? '';
  bool hasSerial() => _serial != null;

  // "posModel" field.
  String? _posModel;
  String get posModel => _posModel ?? '';
  bool hasPosModel() => _posModel != null;

  // "posSerial" field.
  String? _posSerial;
  String get posSerial => _posSerial ?? '';
  bool hasPosSerial() => _posSerial != null;

  // "outletRef" field.
  DocumentReference? _outletRef;
  DocumentReference? get outletRef => _outletRef;
  bool hasOutletRef() => _outletRef != null;

  // "versionCode" field.
  String? _versionCode;
  String get versionCode => _versionCode ?? '';
  bool hasVersionCode() => _versionCode != null;

  // "updatedDate" field.
  int? _updatedDate;
  int get updatedDate => _updatedDate ?? 0;
  bool hasUpdatedDate() => _updatedDate != null;

  // "versionName" field.
  String? _versionName;
  String get versionName => _versionName ?? '';
  bool hasVersionName() => _versionName != null;

  // "outletId" field.
  String? _outletId;
  String get outletId => _outletId ?? '';
  bool hasOutletId() => _outletId != null;

  // "outletName" field.
  String? _outletName;
  String get outletName => _outletName ?? '';
  bool hasOutletName() => _outletName != null;

  // "branch" field.
  String? _branch;
  String get branch => _branch ?? '';
  bool hasBranch() => _branch != null;

  // "code" field.
  int? _code;
  int get code => _code ?? 0;
  bool hasCode() => _code != null;

  // "roundOff" field.
  double? _roundOff;
  double get roundOff => _roundOff ?? 0.0;
  bool hasRoundOff() => _roundOff != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "updatedBy" field.
  DocumentReference? _updatedBy;
  DocumentReference? get updatedBy => _updatedBy;
  bool hasUpdatedBy() => _updatedBy != null;

  // "createdBy" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  // "loggedIn" field.
  bool? _loggedIn;
  bool get loggedIn => _loggedIn ?? false;
  bool hasLoggedIn() => _loggedIn != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "latitude" field.
  double? _latitude;
  double get latitude => _latitude ?? 0.0;
  bool hasLatitude() => _latitude != null;

  // "longitude" field.
  double? _longitude;
  double get longitude => _longitude ?? 0.0;
  bool hasLongitude() => _longitude != null;

  // "latLong" field.
  LatLng? _latLong;
  LatLng? get latLong => _latLong;
  bool hasLatLong() => _latLong != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _deviceId = snapshotData['deviceId'] as String?;
    _active = snapshotData['active'] as bool?;
    _board = snapshotData['board'] as String?;
    _brand = snapshotData['brand'] as String?;
    _connectedToNetwork = snapshotData['connectedToNetwork'] as bool?;
    _createdDate = castToType<int>(snapshotData['createdDate']);
    _address = snapshotData['address'] as String?;
    _manufacture = snapshotData['manufacture'] as String?;
    _model = snapshotData['model'] as String?;
    _serial = snapshotData['serial'] as String?;
    _posModel = snapshotData['posModel'] as String?;
    _posSerial = snapshotData['posSerial'] as String?;
    _outletRef = snapshotData['outletRef'] as DocumentReference?;
    _versionCode = snapshotData['versionCode'] as String?;
    _updatedDate = castToType<int>(snapshotData['updatedDate']);
    _versionName = snapshotData['versionName'] as String?;
    _outletId = snapshotData['outletId'] as String?;
    _outletName = snapshotData['outletName'] as String?;
    _branch = snapshotData['branch'] as String?;
    _code = castToType<int>(snapshotData['code']);
    _roundOff = castToType<double>(snapshotData['roundOff']);
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _updatedBy = snapshotData['updatedBy'] as DocumentReference?;
    _createdBy = snapshotData['createdBy'] as DocumentReference?;
    _loggedIn = snapshotData['loggedIn'] as bool?;
    _userId = snapshotData['userId'] as String?;
    _latitude = castToType<double>(snapshotData['latitude']);
    _longitude = castToType<double>(snapshotData['longitude']);
    _latLong = snapshotData['latLong'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('DEVICE');

  static Stream<DeviceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DeviceRecord.fromSnapshot(s));

  static Future<DeviceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DeviceRecord.fromSnapshot(s));

  static DeviceRecord fromSnapshot(DocumentSnapshot snapshot) => DeviceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DeviceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DeviceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DeviceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DeviceRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createDeviceRecordData({
  String? id,
  String? deviceId,
  bool? active,
  String? board,
  String? brand,
  bool? connectedToNetwork,
  int? createdDate,
  String? address,
  String? manufacture,
  String? model,
  String? serial,
  String? posModel,
  String? posSerial,
  DocumentReference? outletRef,
  String? versionCode,
  int? updatedDate,
  String? versionName,
  String? outletId,
  String? outletName,
  String? branch,
  int? code,
  double? roundOff,
  DocumentReference? userRef,
  DocumentReference? updatedBy,
  DocumentReference? createdBy,
  bool? loggedIn,
  String? userId,
  double? latitude,
  double? longitude,
  LatLng? latLong,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'deviceId': deviceId,
      'active': active,
      'board': board,
      'brand': brand,
      'connectedToNetwork': connectedToNetwork,
      'createdDate': createdDate,
      'address': address,
      'manufacture': manufacture,
      'model': model,
      'serial': serial,
      'posModel': posModel,
      'posSerial': posSerial,
      'outletRef': outletRef,
      'versionCode': versionCode,
      'updatedDate': updatedDate,
      'versionName': versionName,
      'outletId': outletId,
      'outletName': outletName,
      'branch': branch,
      'code': code,
      'roundOff': roundOff,
      'userRef': userRef,
      'updatedBy': updatedBy,
      'createdBy': createdBy,
      'loggedIn': loggedIn,
      'userId': userId,
      'latitude': latitude,
      'longitude': longitude,
      'latLong': latLong,
    }.withoutNulls,
  );

  return firestoreData;
}

class DeviceRecordDocumentEquality implements Equality<DeviceRecord> {
  const DeviceRecordDocumentEquality();

  @override
  bool equals(DeviceRecord? e1, DeviceRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.deviceId == e2?.deviceId &&
        e1?.active == e2?.active &&
        e1?.board == e2?.board &&
        e1?.brand == e2?.brand &&
        e1?.connectedToNetwork == e2?.connectedToNetwork &&
        e1?.createdDate == e2?.createdDate &&
        e1?.address == e2?.address &&
        e1?.manufacture == e2?.manufacture &&
        e1?.model == e2?.model &&
        e1?.serial == e2?.serial &&
        e1?.posModel == e2?.posModel &&
        e1?.posSerial == e2?.posSerial &&
        e1?.outletRef == e2?.outletRef &&
        e1?.versionCode == e2?.versionCode &&
        e1?.updatedDate == e2?.updatedDate &&
        e1?.versionName == e2?.versionName &&
        e1?.outletId == e2?.outletId &&
        e1?.outletName == e2?.outletName &&
        e1?.branch == e2?.branch &&
        e1?.code == e2?.code &&
        e1?.roundOff == e2?.roundOff &&
        e1?.userRef == e2?.userRef &&
        e1?.updatedBy == e2?.updatedBy &&
        e1?.createdBy == e2?.createdBy &&
        e1?.loggedIn == e2?.loggedIn &&
        e1?.userId == e2?.userId &&
        e1?.latitude == e2?.latitude &&
        e1?.longitude == e2?.longitude &&
        e1?.latLong == e2?.latLong;
  }

  @override
  int hash(DeviceRecord? e) => const ListEquality().hash([
        e?.id,
        e?.deviceId,
        e?.active,
        e?.board,
        e?.brand,
        e?.connectedToNetwork,
        e?.createdDate,
        e?.address,
        e?.manufacture,
        e?.model,
        e?.serial,
        e?.posModel,
        e?.posSerial,
        e?.outletRef,
        e?.versionCode,
        e?.updatedDate,
        e?.versionName,
        e?.outletId,
        e?.outletName,
        e?.branch,
        e?.code,
        e?.roundOff,
        e?.userRef,
        e?.updatedBy,
        e?.createdBy,
        e?.loggedIn,
        e?.userId,
        e?.latitude,
        e?.longitude,
        e?.latLong
      ]);

  @override
  bool isValidKey(Object? o) => o is DeviceRecord;
}
