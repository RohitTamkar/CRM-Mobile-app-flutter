// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocationDetailsCheckOutStruct extends FFFirebaseStruct {
  LocationDetailsCheckOutStruct({
    String? name,
    String? street,
    String? locality,
    String? subLocality,
    String? postalCode,
    LatLng? location,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _street = street,
        _locality = locality,
        _subLocality = subLocality,
        _postalCode = postalCode,
        _location = location,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

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

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  set location(LatLng? val) => _location = val;

  bool hasLocation() => _location != null;

  static LocationDetailsCheckOutStruct fromMap(Map<String, dynamic> data) =>
      LocationDetailsCheckOutStruct(
        name: data['name'] as String?,
        street: data['street'] as String?,
        locality: data['locality'] as String?,
        subLocality: data['subLocality'] as String?,
        postalCode: data['postalCode'] as String?,
        location: data['location'] as LatLng?,
      );

  static LocationDetailsCheckOutStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? LocationDetailsCheckOutStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'street': _street,
        'locality': _locality,
        'subLocality': _subLocality,
        'postalCode': _postalCode,
        'location': _location,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
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
        'location': serializeParam(
          _location,
          ParamType.LatLng,
        ),
      }.withoutNulls;

  static LocationDetailsCheckOutStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LocationDetailsCheckOutStruct(
        name: deserializeParam(
          data['name'],
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
        location: deserializeParam(
          data['location'],
          ParamType.LatLng,
          false,
        ),
      );

  @override
  String toString() => 'LocationDetailsCheckOutStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LocationDetailsCheckOutStruct &&
        name == other.name &&
        street == other.street &&
        locality == other.locality &&
        subLocality == other.subLocality &&
        postalCode == other.postalCode &&
        location == other.location;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([name, street, locality, subLocality, postalCode, location]);
}

LocationDetailsCheckOutStruct createLocationDetailsCheckOutStruct({
  String? name,
  String? street,
  String? locality,
  String? subLocality,
  String? postalCode,
  LatLng? location,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LocationDetailsCheckOutStruct(
      name: name,
      street: street,
      locality: locality,
      subLocality: subLocality,
      postalCode: postalCode,
      location: location,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LocationDetailsCheckOutStruct? updateLocationDetailsCheckOutStruct(
  LocationDetailsCheckOutStruct? locationDetailsCheckOut, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    locationDetailsCheckOut
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLocationDetailsCheckOutStructData(
  Map<String, dynamic> firestoreData,
  LocationDetailsCheckOutStruct? locationDetailsCheckOut,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (locationDetailsCheckOut == null) {
    return;
  }
  if (locationDetailsCheckOut.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      locationDetailsCheckOut.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final locationDetailsCheckOutData = getLocationDetailsCheckOutFirestoreData(
      locationDetailsCheckOut, forFieldValue);
  final nestedData =
      locationDetailsCheckOutData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      locationDetailsCheckOut.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLocationDetailsCheckOutFirestoreData(
  LocationDetailsCheckOutStruct? locationDetailsCheckOut, [
  bool forFieldValue = false,
]) {
  if (locationDetailsCheckOut == null) {
    return {};
  }
  final firestoreData = mapToFirestore(locationDetailsCheckOut.toMap());

  // Add any Firestore field values
  mapToFirestore(locationDetailsCheckOut.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLocationDetailsCheckOutListFirestoreData(
  List<LocationDetailsCheckOutStruct>? locationDetailsCheckOuts,
) =>
    locationDetailsCheckOuts
        ?.map((e) => getLocationDetailsCheckOutFirestoreData(e, true))
        .toList() ??
    [];
