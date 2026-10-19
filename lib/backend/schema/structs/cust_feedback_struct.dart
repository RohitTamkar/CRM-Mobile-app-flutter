// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustFeedbackStruct extends FFFirebaseStruct {
  CustFeedbackStruct({
    String? question,
    String? answer,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _question = question,
        _answer = answer,
        super(firestoreUtilData);

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  set question(String? val) => _question = val;

  bool hasQuestion() => _question != null;

  // "answer" field.
  String? _answer;
  String get answer => _answer ?? '';
  set answer(String? val) => _answer = val;

  bool hasAnswer() => _answer != null;

  static CustFeedbackStruct fromMap(Map<String, dynamic> data) =>
      CustFeedbackStruct(
        question: data['question'] as String?,
        answer: data['answer'] as String?,
      );

  static CustFeedbackStruct? maybeFromMap(dynamic data) => data is Map
      ? CustFeedbackStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'question': _question,
        'answer': _answer,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'question': serializeParam(
          _question,
          ParamType.String,
        ),
        'answer': serializeParam(
          _answer,
          ParamType.String,
        ),
      }.withoutNulls;

  static CustFeedbackStruct fromSerializableMap(Map<String, dynamic> data) =>
      CustFeedbackStruct(
        question: deserializeParam(
          data['question'],
          ParamType.String,
          false,
        ),
        answer: deserializeParam(
          data['answer'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CustFeedbackStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CustFeedbackStruct &&
        question == other.question &&
        answer == other.answer;
  }

  @override
  int get hashCode => const ListEquality().hash([question, answer]);
}

CustFeedbackStruct createCustFeedbackStruct({
  String? question,
  String? answer,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CustFeedbackStruct(
      question: question,
      answer: answer,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CustFeedbackStruct? updateCustFeedbackStruct(
  CustFeedbackStruct? custFeedback, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    custFeedback
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCustFeedbackStructData(
  Map<String, dynamic> firestoreData,
  CustFeedbackStruct? custFeedback,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (custFeedback == null) {
    return;
  }
  if (custFeedback.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && custFeedback.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final custFeedbackData =
      getCustFeedbackFirestoreData(custFeedback, forFieldValue);
  final nestedData =
      custFeedbackData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = custFeedback.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCustFeedbackFirestoreData(
  CustFeedbackStruct? custFeedback, [
  bool forFieldValue = false,
]) {
  if (custFeedback == null) {
    return {};
  }
  final firestoreData = mapToFirestore(custFeedback.toMap());

  // Add any Firestore field values
  mapToFirestore(custFeedback.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCustFeedbackListFirestoreData(
  List<CustFeedbackStruct>? custFeedbacks,
) =>
    custFeedbacks?.map((e) => getCustFeedbackFirestoreData(e, true)).toList() ??
    [];
