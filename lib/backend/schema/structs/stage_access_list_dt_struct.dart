// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StageAccessListDtStruct extends FFFirebaseStruct {
  StageAccessListDtStruct({
    String? id,
    int? value,
    String? title,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _value = value,
        _title = title,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "value" field.
  int? _value;
  int get value => _value ?? 0;
  set value(int? val) => _value = val;

  void incrementValue(int amount) => value = value + amount;

  bool hasValue() => _value != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  static StageAccessListDtStruct fromMap(Map<String, dynamic> data) =>
      StageAccessListDtStruct(
        id: data['id'] as String?,
        value: castToType<int>(data['value']),
        title: data['title'] as String?,
      );

  static StageAccessListDtStruct? maybeFromMap(dynamic data) => data is Map
      ? StageAccessListDtStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'value': _value,
        'title': _title,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'value': serializeParam(
          _value,
          ParamType.int,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
      }.withoutNulls;

  static StageAccessListDtStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      StageAccessListDtStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        value: deserializeParam(
          data['value'],
          ParamType.int,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'StageAccessListDtStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StageAccessListDtStruct &&
        id == other.id &&
        value == other.value &&
        title == other.title;
  }

  @override
  int get hashCode => const ListEquality().hash([id, value, title]);
}

StageAccessListDtStruct createStageAccessListDtStruct({
  String? id,
  int? value,
  String? title,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    StageAccessListDtStruct(
      id: id,
      value: value,
      title: title,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

StageAccessListDtStruct? updateStageAccessListDtStruct(
  StageAccessListDtStruct? stageAccessListDt, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    stageAccessListDt
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addStageAccessListDtStructData(
  Map<String, dynamic> firestoreData,
  StageAccessListDtStruct? stageAccessListDt,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (stageAccessListDt == null) {
    return;
  }
  if (stageAccessListDt.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && stageAccessListDt.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final stageAccessListDtData =
      getStageAccessListDtFirestoreData(stageAccessListDt, forFieldValue);
  final nestedData =
      stageAccessListDtData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = stageAccessListDt.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getStageAccessListDtFirestoreData(
  StageAccessListDtStruct? stageAccessListDt, [
  bool forFieldValue = false,
]) {
  if (stageAccessListDt == null) {
    return {};
  }
  final firestoreData = mapToFirestore(stageAccessListDt.toMap());

  // Add any Firestore field values
  mapToFirestore(stageAccessListDt.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getStageAccessListDtListFirestoreData(
  List<StageAccessListDtStruct>? stageAccessListDts,
) =>
    stageAccessListDts
        ?.map((e) => getStageAccessListDtFirestoreData(e, true))
        .toList() ??
    [];
