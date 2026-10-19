// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PermissionsDTOStruct extends FFFirebaseStruct {
  PermissionsDTOStruct({
    String? outletId,
    List<String>? outletPermissions,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _outletId = outletId,
        _outletPermissions = outletPermissions,
        super(firestoreUtilData);

  // "outletId" field.
  String? _outletId;
  String get outletId => _outletId ?? '';
  set outletId(String? val) => _outletId = val;

  bool hasOutletId() => _outletId != null;

  // "outletPermissions" field.
  List<String>? _outletPermissions;
  List<String> get outletPermissions => _outletPermissions ?? const [];
  set outletPermissions(List<String>? val) => _outletPermissions = val;

  void updateOutletPermissions(Function(List<String>) updateFn) {
    updateFn(_outletPermissions ??= []);
  }

  bool hasOutletPermissions() => _outletPermissions != null;

  static PermissionsDTOStruct fromMap(Map<String, dynamic> data) =>
      PermissionsDTOStruct(
        outletId: data['outletId'] as String?,
        outletPermissions: getDataList(data['outletPermissions']),
      );

  static PermissionsDTOStruct? maybeFromMap(dynamic data) => data is Map
      ? PermissionsDTOStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'outletId': _outletId,
        'outletPermissions': _outletPermissions,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'outletId': serializeParam(
          _outletId,
          ParamType.String,
        ),
        'outletPermissions': serializeParam(
          _outletPermissions,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static PermissionsDTOStruct fromSerializableMap(Map<String, dynamic> data) =>
      PermissionsDTOStruct(
        outletId: deserializeParam(
          data['outletId'],
          ParamType.String,
          false,
        ),
        outletPermissions: deserializeParam<String>(
          data['outletPermissions'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'PermissionsDTOStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PermissionsDTOStruct &&
        outletId == other.outletId &&
        listEquality.equals(outletPermissions, other.outletPermissions);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([outletId, const ListEquality().hash(outletPermissions)]);
}

PermissionsDTOStruct createPermissionsDTOStruct({
  String? outletId,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PermissionsDTOStruct(
      outletId: outletId,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PermissionsDTOStruct? updatePermissionsDTOStruct(
  PermissionsDTOStruct? permissionsDTO, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    permissionsDTO
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPermissionsDTOStructData(
  Map<String, dynamic> firestoreData,
  PermissionsDTOStruct? permissionsDTO,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (permissionsDTO == null) {
    return;
  }
  if (permissionsDTO.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && permissionsDTO.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final permissionsDTOData =
      getPermissionsDTOFirestoreData(permissionsDTO, forFieldValue);
  final nestedData =
      permissionsDTOData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = permissionsDTO.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPermissionsDTOFirestoreData(
  PermissionsDTOStruct? permissionsDTO, [
  bool forFieldValue = false,
]) {
  if (permissionsDTO == null) {
    return {};
  }
  final firestoreData = mapToFirestore(permissionsDTO.toMap());

  // Add any Firestore field values
  mapToFirestore(permissionsDTO.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPermissionsDTOListFirestoreData(
  List<PermissionsDTOStruct>? permissionsDTOs,
) =>
    permissionsDTOs
        ?.map((e) => getPermissionsDTOFirestoreData(e, true))
        .toList() ??
    [];
