// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PermissionStatusStruct extends FFFirebaseStruct {
  PermissionStatusStruct({
    String? permissionName,
    bool? isGranted,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _permissionName = permissionName,
        _isGranted = isGranted,
        super(firestoreUtilData);

  // "permissionName" field.
  String? _permissionName;
  String get permissionName => _permissionName ?? '';
  set permissionName(String? val) => _permissionName = val;

  bool hasPermissionName() => _permissionName != null;

  // "isGranted" field.
  bool? _isGranted;
  bool get isGranted => _isGranted ?? false;
  set isGranted(bool? val) => _isGranted = val;

  bool hasIsGranted() => _isGranted != null;

  static PermissionStatusStruct fromMap(Map<String, dynamic> data) =>
      PermissionStatusStruct(
        permissionName: data['permissionName'] as String?,
        isGranted: data['isGranted'] as bool?,
      );

  static PermissionStatusStruct? maybeFromMap(dynamic data) => data is Map
      ? PermissionStatusStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'permissionName': _permissionName,
        'isGranted': _isGranted,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'permissionName': serializeParam(
          _permissionName,
          ParamType.String,
        ),
        'isGranted': serializeParam(
          _isGranted,
          ParamType.bool,
        ),
      }.withoutNulls;

  static PermissionStatusStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PermissionStatusStruct(
        permissionName: deserializeParam(
          data['permissionName'],
          ParamType.String,
          false,
        ),
        isGranted: deserializeParam(
          data['isGranted'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'PermissionStatusStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PermissionStatusStruct &&
        permissionName == other.permissionName &&
        isGranted == other.isGranted;
  }

  @override
  int get hashCode => const ListEquality().hash([permissionName, isGranted]);
}

PermissionStatusStruct createPermissionStatusStruct({
  String? permissionName,
  bool? isGranted,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PermissionStatusStruct(
      permissionName: permissionName,
      isGranted: isGranted,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PermissionStatusStruct? updatePermissionStatusStruct(
  PermissionStatusStruct? permissionStatus, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    permissionStatus
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPermissionStatusStructData(
  Map<String, dynamic> firestoreData,
  PermissionStatusStruct? permissionStatus,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (permissionStatus == null) {
    return;
  }
  if (permissionStatus.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && permissionStatus.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final permissionStatusData =
      getPermissionStatusFirestoreData(permissionStatus, forFieldValue);
  final nestedData =
      permissionStatusData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = permissionStatus.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPermissionStatusFirestoreData(
  PermissionStatusStruct? permissionStatus, [
  bool forFieldValue = false,
]) {
  if (permissionStatus == null) {
    return {};
  }
  final firestoreData = mapToFirestore(permissionStatus.toMap());

  // Add any Firestore field values
  mapToFirestore(permissionStatus.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPermissionStatusListFirestoreData(
  List<PermissionStatusStruct>? permissionStatuss,
) =>
    permissionStatuss
        ?.map((e) => getPermissionStatusFirestoreData(e, true))
        .toList() ??
    [];
