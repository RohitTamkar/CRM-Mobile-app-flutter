// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserDetailsStruct extends FFFirebaseStruct {
  UserDetailsStruct({
    String? name,
    String? id,
    DocumentReference? userRef,
    String? mobile,
    List<String>? outlets,
    String? outletId,
    List<PermissionsDTOStruct>? permissions,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _id = id,
        _userRef = userRef,
        _mobile = mobile,
        _outlets = outlets,
        _outletId = outletId,
        _permissions = permissions,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  set userRef(DocumentReference? val) => _userRef = val;

  bool hasUserRef() => _userRef != null;

  // "mobile" field.
  String? _mobile;
  String get mobile => _mobile ?? '';
  set mobile(String? val) => _mobile = val;

  bool hasMobile() => _mobile != null;

  // "outlets" field.
  List<String>? _outlets;
  List<String> get outlets => _outlets ?? const [];
  set outlets(List<String>? val) => _outlets = val;

  void updateOutlets(Function(List<String>) updateFn) {
    updateFn(_outlets ??= []);
  }

  bool hasOutlets() => _outlets != null;

  // "outletId" field.
  String? _outletId;
  String get outletId => _outletId ?? '';
  set outletId(String? val) => _outletId = val;

  bool hasOutletId() => _outletId != null;

  // "permissions" field.
  List<PermissionsDTOStruct>? _permissions;
  List<PermissionsDTOStruct> get permissions => _permissions ?? const [];
  set permissions(List<PermissionsDTOStruct>? val) => _permissions = val;

  void updatePermissions(Function(List<PermissionsDTOStruct>) updateFn) {
    updateFn(_permissions ??= []);
  }

  bool hasPermissions() => _permissions != null;

  static UserDetailsStruct fromMap(Map<String, dynamic> data) =>
      UserDetailsStruct(
        name: data['name'] as String?,
        id: data['id'] as String?,
        userRef: data['userRef'] as DocumentReference?,
        mobile: data['mobile'] as String?,
        outlets: getDataList(data['outlets']),
        outletId: data['outletId'] as String?,
        permissions: getStructList(
          data['permissions'],
          PermissionsDTOStruct.fromMap,
        ),
      );

  static UserDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? UserDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'id': _id,
        'userRef': _userRef,
        'mobile': _mobile,
        'outlets': _outlets,
        'outletId': _outletId,
        'permissions': _permissions?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'userRef': serializeParam(
          _userRef,
          ParamType.DocumentReference,
        ),
        'mobile': serializeParam(
          _mobile,
          ParamType.String,
        ),
        'outlets': serializeParam(
          _outlets,
          ParamType.String,
          isList: true,
        ),
        'outletId': serializeParam(
          _outletId,
          ParamType.String,
        ),
        'permissions': serializeParam(
          _permissions,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static UserDetailsStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserDetailsStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        userRef: deserializeParam(
          data['userRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['USER_PROFILE'],
        ),
        mobile: deserializeParam(
          data['mobile'],
          ParamType.String,
          false,
        ),
        outlets: deserializeParam<String>(
          data['outlets'],
          ParamType.String,
          true,
        ),
        outletId: deserializeParam(
          data['outletId'],
          ParamType.String,
          false,
        ),
        permissions: deserializeStructParam<PermissionsDTOStruct>(
          data['permissions'],
          ParamType.DataStruct,
          true,
          structBuilder: PermissionsDTOStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'UserDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UserDetailsStruct &&
        name == other.name &&
        id == other.id &&
        userRef == other.userRef &&
        mobile == other.mobile &&
        listEquality.equals(outlets, other.outlets) &&
        outletId == other.outletId &&
        listEquality.equals(permissions, other.permissions);
  }

  @override
  int get hashCode => const ListEquality().hash([
        name,
        id,
        userRef,
        mobile,
        const ListEquality().hash(outlets),
        outletId,
        const ListEquality().hash(permissions)
      ]);
}

UserDetailsStruct createUserDetailsStruct({
  String? name,
  String? id,
  DocumentReference? userRef,
  String? mobile,
  String? outletId,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserDetailsStruct(
      name: name,
      id: id,
      userRef: userRef,
      mobile: mobile,
      outletId: outletId,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserDetailsStruct? updateUserDetailsStruct(
  UserDetailsStruct? userDetails, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userDetails
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserDetailsStructData(
  Map<String, dynamic> firestoreData,
  UserDetailsStruct? userDetails,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userDetails == null) {
    return;
  }
  if (userDetails.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userDetails.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userDetailsData =
      getUserDetailsFirestoreData(userDetails, forFieldValue);
  final nestedData =
      userDetailsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userDetails.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserDetailsFirestoreData(
  UserDetailsStruct? userDetails, [
  bool forFieldValue = false,
]) {
  if (userDetails == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userDetails.toMap());

  // Add any Firestore field values
  mapToFirestore(userDetails.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserDetailsListFirestoreData(
  List<UserDetailsStruct>? userDetailss,
) =>
    userDetailss?.map((e) => getUserDetailsFirestoreData(e, true)).toList() ??
    [];
