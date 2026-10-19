// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FcmTokenStruct extends FFFirebaseStruct {
  FcmTokenStruct({
    String? fcmToken,
    String? fcmDocumentId,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _fcmToken = fcmToken,
        _fcmDocumentId = fcmDocumentId,
        super(firestoreUtilData);

  // "fcmToken" field.
  String? _fcmToken;
  String get fcmToken => _fcmToken ?? '';
  set fcmToken(String? val) => _fcmToken = val;

  bool hasFcmToken() => _fcmToken != null;

  // "fcmDocumentId" field.
  String? _fcmDocumentId;
  String get fcmDocumentId => _fcmDocumentId ?? '';
  set fcmDocumentId(String? val) => _fcmDocumentId = val;

  bool hasFcmDocumentId() => _fcmDocumentId != null;

  static FcmTokenStruct fromMap(Map<String, dynamic> data) => FcmTokenStruct(
        fcmToken: data['fcmToken'] as String?,
        fcmDocumentId: data['fcmDocumentId'] as String?,
      );

  static FcmTokenStruct? maybeFromMap(dynamic data) =>
      data is Map ? FcmTokenStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'fcmToken': _fcmToken,
        'fcmDocumentId': _fcmDocumentId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'fcmToken': serializeParam(
          _fcmToken,
          ParamType.String,
        ),
        'fcmDocumentId': serializeParam(
          _fcmDocumentId,
          ParamType.String,
        ),
      }.withoutNulls;

  static FcmTokenStruct fromSerializableMap(Map<String, dynamic> data) =>
      FcmTokenStruct(
        fcmToken: deserializeParam(
          data['fcmToken'],
          ParamType.String,
          false,
        ),
        fcmDocumentId: deserializeParam(
          data['fcmDocumentId'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FcmTokenStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FcmTokenStruct &&
        fcmToken == other.fcmToken &&
        fcmDocumentId == other.fcmDocumentId;
  }

  @override
  int get hashCode => const ListEquality().hash([fcmToken, fcmDocumentId]);
}

FcmTokenStruct createFcmTokenStruct({
  String? fcmToken,
  String? fcmDocumentId,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FcmTokenStruct(
      fcmToken: fcmToken,
      fcmDocumentId: fcmDocumentId,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FcmTokenStruct? updateFcmTokenStruct(
  FcmTokenStruct? fcmTokenStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    fcmTokenStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFcmTokenStructData(
  Map<String, dynamic> firestoreData,
  FcmTokenStruct? fcmTokenStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (fcmTokenStruct == null) {
    return;
  }
  if (fcmTokenStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && fcmTokenStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final fcmTokenStructData =
      getFcmTokenFirestoreData(fcmTokenStruct, forFieldValue);
  final nestedData =
      fcmTokenStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = fcmTokenStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFcmTokenFirestoreData(
  FcmTokenStruct? fcmTokenStruct, [
  bool forFieldValue = false,
]) {
  if (fcmTokenStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(fcmTokenStruct.toMap());

  // Add any Firestore field values
  mapToFirestore(fcmTokenStruct.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFcmTokenListFirestoreData(
  List<FcmTokenStruct>? fcmTokenStructs,
) =>
    fcmTokenStructs?.map((e) => getFcmTokenFirestoreData(e, true)).toList() ??
    [];
