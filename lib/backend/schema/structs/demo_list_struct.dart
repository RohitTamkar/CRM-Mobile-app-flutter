// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DemoListStruct extends FFFirebaseStruct {
  DemoListStruct({
    int? checkInTime,
    int? checkOutTime,
    LatLng? checkInLocation,
    LatLng? checkOutLocation,
    String? note,
    String? travelMode,
    String? locationName,
    String? street,
    String? locality,
    String? subLocality,
    String? postalCode,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _checkInTime = checkInTime,
        _checkOutTime = checkOutTime,
        _checkInLocation = checkInLocation,
        _checkOutLocation = checkOutLocation,
        _note = note,
        _travelMode = travelMode,
        _locationName = locationName,
        _street = street,
        _locality = locality,
        _subLocality = subLocality,
        _postalCode = postalCode,
        super(firestoreUtilData);

  // "checkInTime" field.
  int? _checkInTime;
  int get checkInTime => _checkInTime ?? 0;
  set checkInTime(int? val) => _checkInTime = val;

  void incrementCheckInTime(int amount) => checkInTime = checkInTime + amount;

  bool hasCheckInTime() => _checkInTime != null;

  // "checkOutTime" field.
  int? _checkOutTime;
  int get checkOutTime => _checkOutTime ?? 0;
  set checkOutTime(int? val) => _checkOutTime = val;

  void incrementCheckOutTime(int amount) =>
      checkOutTime = checkOutTime + amount;

  bool hasCheckOutTime() => _checkOutTime != null;

  // "checkInLocation" field.
  LatLng? _checkInLocation;
  LatLng? get checkInLocation => _checkInLocation;
  set checkInLocation(LatLng? val) => _checkInLocation = val;

  bool hasCheckInLocation() => _checkInLocation != null;

  // "checkOutLocation" field.
  LatLng? _checkOutLocation;
  LatLng? get checkOutLocation => _checkOutLocation;
  set checkOutLocation(LatLng? val) => _checkOutLocation = val;

  bool hasCheckOutLocation() => _checkOutLocation != null;

  // "note" field.
  String? _note;
  String get note => _note ?? '';
  set note(String? val) => _note = val;

  bool hasNote() => _note != null;

  // "travelMode" field.
  String? _travelMode;
  String get travelMode => _travelMode ?? '';
  set travelMode(String? val) => _travelMode = val;

  bool hasTravelMode() => _travelMode != null;

  // "locationName" field.
  String? _locationName;
  String get locationName => _locationName ?? '';
  set locationName(String? val) => _locationName = val;

  bool hasLocationName() => _locationName != null;

  // "street" field.
  String? _street;
  String get street => _street ?? '';
  set street(String? val) => _street = val;

  bool hasStreet() => _street != null;

  // "locality" field.
  String? _locality;
  String get locality => _locality ?? '';
  set locality(String? val) => _locality = val;

  bool hasLocality() => _locality != null;

  // "subLocality" field.
  String? _subLocality;
  String get subLocality => _subLocality ?? '';
  set subLocality(String? val) => _subLocality = val;

  bool hasSubLocality() => _subLocality != null;

  // "postalCode" field.
  String? _postalCode;
  String get postalCode => _postalCode ?? '';
  set postalCode(String? val) => _postalCode = val;

  bool hasPostalCode() => _postalCode != null;

  static DemoListStruct fromMap(Map<String, dynamic> data) => DemoListStruct(
        checkInTime: castToType<int>(data['checkInTime']),
        checkOutTime: castToType<int>(data['checkOutTime']),
        checkInLocation: data['checkInLocation'] as LatLng?,
        checkOutLocation: data['checkOutLocation'] as LatLng?,
        note: data['note'] as String?,
        travelMode: data['travelMode'] as String?,
        locationName: data['locationName'] as String?,
        street: data['street'] as String?,
        locality: data['locality'] as String?,
        subLocality: data['subLocality'] as String?,
        postalCode: data['postalCode'] as String?,
      );

  static DemoListStruct? maybeFromMap(dynamic data) =>
      data is Map ? DemoListStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'checkInTime': _checkInTime,
        'checkOutTime': _checkOutTime,
        'checkInLocation': _checkInLocation,
        'checkOutLocation': _checkOutLocation,
        'note': _note,
        'travelMode': _travelMode,
        'locationName': _locationName,
        'street': _street,
        'locality': _locality,
        'subLocality': _subLocality,
        'postalCode': _postalCode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'checkInTime': serializeParam(
          _checkInTime,
          ParamType.int,
        ),
        'checkOutTime': serializeParam(
          _checkOutTime,
          ParamType.int,
        ),
        'checkInLocation': serializeParam(
          _checkInLocation,
          ParamType.LatLng,
        ),
        'checkOutLocation': serializeParam(
          _checkOutLocation,
          ParamType.LatLng,
        ),
        'note': serializeParam(
          _note,
          ParamType.String,
        ),
        'travelMode': serializeParam(
          _travelMode,
          ParamType.String,
        ),
        'locationName': serializeParam(
          _locationName,
          ParamType.String,
        ),
        'street': serializeParam(
          _street,
          ParamType.String,
        ),
        'locality': serializeParam(
          _locality,
          ParamType.String,
        ),
        'subLocality': serializeParam(
          _subLocality,
          ParamType.String,
        ),
        'postalCode': serializeParam(
          _postalCode,
          ParamType.String,
        ),
      }.withoutNulls;

  static DemoListStruct fromSerializableMap(Map<String, dynamic> data) =>
      DemoListStruct(
        checkInTime: deserializeParam(
          data['checkInTime'],
          ParamType.int,
          false,
        ),
        checkOutTime: deserializeParam(
          data['checkOutTime'],
          ParamType.int,
          false,
        ),
        checkInLocation: deserializeParam(
          data['checkInLocation'],
          ParamType.LatLng,
          false,
        ),
        checkOutLocation: deserializeParam(
          data['checkOutLocation'],
          ParamType.LatLng,
          false,
        ),
        note: deserializeParam(
          data['note'],
          ParamType.String,
          false,
        ),
        travelMode: deserializeParam(
          data['travelMode'],
          ParamType.String,
          false,
        ),
        locationName: deserializeParam(
          data['locationName'],
          ParamType.String,
          false,
        ),
        street: deserializeParam(
          data['street'],
          ParamType.String,
          false,
        ),
        locality: deserializeParam(
          data['locality'],
          ParamType.String,
          false,
        ),
        subLocality: deserializeParam(
          data['subLocality'],
          ParamType.String,
          false,
        ),
        postalCode: deserializeParam(
          data['postalCode'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DemoListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DemoListStruct &&
        checkInTime == other.checkInTime &&
        checkOutTime == other.checkOutTime &&
        checkInLocation == other.checkInLocation &&
        checkOutLocation == other.checkOutLocation &&
        note == other.note &&
        travelMode == other.travelMode &&
        locationName == other.locationName &&
        street == other.street &&
        locality == other.locality &&
        subLocality == other.subLocality &&
        postalCode == other.postalCode;
  }

  @override
  int get hashCode => const ListEquality().hash([
        checkInTime,
        checkOutTime,
        checkInLocation,
        checkOutLocation,
        note,
        travelMode,
        locationName,
        street,
        locality,
        subLocality,
        postalCode
      ]);
}

DemoListStruct createDemoListStruct({
  int? checkInTime,
  int? checkOutTime,
  LatLng? checkInLocation,
  LatLng? checkOutLocation,
  String? note,
  String? travelMode,
  String? locationName,
  String? street,
  String? locality,
  String? subLocality,
  String? postalCode,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DemoListStruct(
      checkInTime: checkInTime,
      checkOutTime: checkOutTime,
      checkInLocation: checkInLocation,
      checkOutLocation: checkOutLocation,
      note: note,
      travelMode: travelMode,
      locationName: locationName,
      street: street,
      locality: locality,
      subLocality: subLocality,
      postalCode: postalCode,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DemoListStruct? updateDemoListStruct(
  DemoListStruct? demoList, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    demoList
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDemoListStructData(
  Map<String, dynamic> firestoreData,
  DemoListStruct? demoList,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (demoList == null) {
    return;
  }
  if (demoList.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && demoList.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final demoListData = getDemoListFirestoreData(demoList, forFieldValue);
  final nestedData = demoListData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = demoList.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDemoListFirestoreData(
  DemoListStruct? demoList, [
  bool forFieldValue = false,
]) {
  if (demoList == null) {
    return {};
  }
  final firestoreData = mapToFirestore(demoList.toMap());

  // Add any Firestore field values
  mapToFirestore(demoList.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDemoListListFirestoreData(
  List<DemoListStruct>? demoLists,
) =>
    demoLists?.map((e) => getDemoListFirestoreData(e, true)).toList() ?? [];
