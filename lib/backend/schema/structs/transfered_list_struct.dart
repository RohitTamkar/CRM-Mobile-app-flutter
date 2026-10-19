// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransferedListStruct extends FFFirebaseStruct {
  TransferedListStruct({
    String? assigedFrom,
    String? assignedTo,
    String? reason,
    String? assignedFromName,
    String? assignedToName,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _assigedFrom = assigedFrom,
        _assignedTo = assignedTo,
        _reason = reason,
        _assignedFromName = assignedFromName,
        _assignedToName = assignedToName,
        super(firestoreUtilData);

  // "assigedFrom" field.
  String? _assigedFrom;
  String get assigedFrom => _assigedFrom ?? '';
  set assigedFrom(String? val) => _assigedFrom = val;

  bool hasAssigedFrom() => _assigedFrom != null;

  // "assignedTo" field.
  String? _assignedTo;
  String get assignedTo => _assignedTo ?? '';
  set assignedTo(String? val) => _assignedTo = val;

  bool hasAssignedTo() => _assignedTo != null;

  // "reason" field.
  String? _reason;
  String get reason => _reason ?? '';
  set reason(String? val) => _reason = val;

  bool hasReason() => _reason != null;

  // "assignedFromName" field.
  String? _assignedFromName;
  String get assignedFromName => _assignedFromName ?? '';
  set assignedFromName(String? val) => _assignedFromName = val;

  bool hasAssignedFromName() => _assignedFromName != null;

  // "assignedToName" field.
  String? _assignedToName;
  String get assignedToName => _assignedToName ?? '';
  set assignedToName(String? val) => _assignedToName = val;

  bool hasAssignedToName() => _assignedToName != null;

  static TransferedListStruct fromMap(Map<String, dynamic> data) =>
      TransferedListStruct(
        assigedFrom: data['assigedFrom'] as String?,
        assignedTo: data['assignedTo'] as String?,
        reason: data['reason'] as String?,
        assignedFromName: data['assignedFromName'] as String?,
        assignedToName: data['assignedToName'] as String?,
      );

  static TransferedListStruct? maybeFromMap(dynamic data) => data is Map
      ? TransferedListStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'assigedFrom': _assigedFrom,
        'assignedTo': _assignedTo,
        'reason': _reason,
        'assignedFromName': _assignedFromName,
        'assignedToName': _assignedToName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'assigedFrom': serializeParam(
          _assigedFrom,
          ParamType.String,
        ),
        'assignedTo': serializeParam(
          _assignedTo,
          ParamType.String,
        ),
        'reason': serializeParam(
          _reason,
          ParamType.String,
        ),
        'assignedFromName': serializeParam(
          _assignedFromName,
          ParamType.String,
        ),
        'assignedToName': serializeParam(
          _assignedToName,
          ParamType.String,
        ),
      }.withoutNulls;

  static TransferedListStruct fromSerializableMap(Map<String, dynamic> data) =>
      TransferedListStruct(
        assigedFrom: deserializeParam(
          data['assigedFrom'],
          ParamType.String,
          false,
        ),
        assignedTo: deserializeParam(
          data['assignedTo'],
          ParamType.String,
          false,
        ),
        reason: deserializeParam(
          data['reason'],
          ParamType.String,
          false,
        ),
        assignedFromName: deserializeParam(
          data['assignedFromName'],
          ParamType.String,
          false,
        ),
        assignedToName: deserializeParam(
          data['assignedToName'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TransferedListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TransferedListStruct &&
        assigedFrom == other.assigedFrom &&
        assignedTo == other.assignedTo &&
        reason == other.reason &&
        assignedFromName == other.assignedFromName &&
        assignedToName == other.assignedToName;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [assigedFrom, assignedTo, reason, assignedFromName, assignedToName]);
}

TransferedListStruct createTransferedListStruct({
  String? assigedFrom,
  String? assignedTo,
  String? reason,
  String? assignedFromName,
  String? assignedToName,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TransferedListStruct(
      assigedFrom: assigedFrom,
      assignedTo: assignedTo,
      reason: reason,
      assignedFromName: assignedFromName,
      assignedToName: assignedToName,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TransferedListStruct? updateTransferedListStruct(
  TransferedListStruct? transferedList, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    transferedList
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTransferedListStructData(
  Map<String, dynamic> firestoreData,
  TransferedListStruct? transferedList,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (transferedList == null) {
    return;
  }
  if (transferedList.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && transferedList.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final transferedListData =
      getTransferedListFirestoreData(transferedList, forFieldValue);
  final nestedData =
      transferedListData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = transferedList.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTransferedListFirestoreData(
  TransferedListStruct? transferedList, [
  bool forFieldValue = false,
]) {
  if (transferedList == null) {
    return {};
  }
  final firestoreData = mapToFirestore(transferedList.toMap());

  // Add any Firestore field values
  mapToFirestore(transferedList.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTransferedListListFirestoreData(
  List<TransferedListStruct>? transferedLists,
) =>
    transferedLists
        ?.map((e) => getTransferedListFirestoreData(e, true))
        .toList() ??
    [];
