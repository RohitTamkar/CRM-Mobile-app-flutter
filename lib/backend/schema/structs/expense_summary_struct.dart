// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExpenseSummaryStruct extends FFFirebaseStruct {
  ExpenseSummaryStruct({
    double? acceptedTotalAmount,
    int? acceptedTotalCount,
    double? pendingTotalAmount,
    int? pendingTotalCount,
    double? rejectedTotalAmount,
    int? rejectedTotalCount,
    double? reviewTotalAmt,
    int? reviewTotalcount,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _acceptedTotalAmount = acceptedTotalAmount,
        _acceptedTotalCount = acceptedTotalCount,
        _pendingTotalAmount = pendingTotalAmount,
        _pendingTotalCount = pendingTotalCount,
        _rejectedTotalAmount = rejectedTotalAmount,
        _rejectedTotalCount = rejectedTotalCount,
        _reviewTotalAmt = reviewTotalAmt,
        _reviewTotalcount = reviewTotalcount,
        super(firestoreUtilData);

  // "acceptedTotalAmount" field.
  double? _acceptedTotalAmount;
  double get acceptedTotalAmount => _acceptedTotalAmount ?? 0.0;
  set acceptedTotalAmount(double? val) => _acceptedTotalAmount = val;

  void incrementAcceptedTotalAmount(double amount) =>
      acceptedTotalAmount = acceptedTotalAmount + amount;

  bool hasAcceptedTotalAmount() => _acceptedTotalAmount != null;

  // "acceptedTotalCount" field.
  int? _acceptedTotalCount;
  int get acceptedTotalCount => _acceptedTotalCount ?? 0;
  set acceptedTotalCount(int? val) => _acceptedTotalCount = val;

  void incrementAcceptedTotalCount(int amount) =>
      acceptedTotalCount = acceptedTotalCount + amount;

  bool hasAcceptedTotalCount() => _acceptedTotalCount != null;

  // "pendingTotalAmount" field.
  double? _pendingTotalAmount;
  double get pendingTotalAmount => _pendingTotalAmount ?? 0.0;
  set pendingTotalAmount(double? val) => _pendingTotalAmount = val;

  void incrementPendingTotalAmount(double amount) =>
      pendingTotalAmount = pendingTotalAmount + amount;

  bool hasPendingTotalAmount() => _pendingTotalAmount != null;

  // "pendingTotalCount" field.
  int? _pendingTotalCount;
  int get pendingTotalCount => _pendingTotalCount ?? 0;
  set pendingTotalCount(int? val) => _pendingTotalCount = val;

  void incrementPendingTotalCount(int amount) =>
      pendingTotalCount = pendingTotalCount + amount;

  bool hasPendingTotalCount() => _pendingTotalCount != null;

  // "rejectedTotalAmount" field.
  double? _rejectedTotalAmount;
  double get rejectedTotalAmount => _rejectedTotalAmount ?? 0.0;
  set rejectedTotalAmount(double? val) => _rejectedTotalAmount = val;

  void incrementRejectedTotalAmount(double amount) =>
      rejectedTotalAmount = rejectedTotalAmount + amount;

  bool hasRejectedTotalAmount() => _rejectedTotalAmount != null;

  // "rejectedTotalCount" field.
  int? _rejectedTotalCount;
  int get rejectedTotalCount => _rejectedTotalCount ?? 0;
  set rejectedTotalCount(int? val) => _rejectedTotalCount = val;

  void incrementRejectedTotalCount(int amount) =>
      rejectedTotalCount = rejectedTotalCount + amount;

  bool hasRejectedTotalCount() => _rejectedTotalCount != null;

  // "reviewTotalAmt" field.
  double? _reviewTotalAmt;
  double get reviewTotalAmt => _reviewTotalAmt ?? 0.0;
  set reviewTotalAmt(double? val) => _reviewTotalAmt = val;

  void incrementReviewTotalAmt(double amount) =>
      reviewTotalAmt = reviewTotalAmt + amount;

  bool hasReviewTotalAmt() => _reviewTotalAmt != null;

  // "reviewTotalcount" field.
  int? _reviewTotalcount;
  int get reviewTotalcount => _reviewTotalcount ?? 0;
  set reviewTotalcount(int? val) => _reviewTotalcount = val;

  void incrementReviewTotalcount(int amount) =>
      reviewTotalcount = reviewTotalcount + amount;

  bool hasReviewTotalcount() => _reviewTotalcount != null;

  static ExpenseSummaryStruct fromMap(Map<String, dynamic> data) =>
      ExpenseSummaryStruct(
        acceptedTotalAmount: castToType<double>(data['acceptedTotalAmount']),
        acceptedTotalCount: castToType<int>(data['acceptedTotalCount']),
        pendingTotalAmount: castToType<double>(data['pendingTotalAmount']),
        pendingTotalCount: castToType<int>(data['pendingTotalCount']),
        rejectedTotalAmount: castToType<double>(data['rejectedTotalAmount']),
        rejectedTotalCount: castToType<int>(data['rejectedTotalCount']),
        reviewTotalAmt: castToType<double>(data['reviewTotalAmt']),
        reviewTotalcount: castToType<int>(data['reviewTotalcount']),
      );

  static ExpenseSummaryStruct? maybeFromMap(dynamic data) => data is Map
      ? ExpenseSummaryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'acceptedTotalAmount': _acceptedTotalAmount,
        'acceptedTotalCount': _acceptedTotalCount,
        'pendingTotalAmount': _pendingTotalAmount,
        'pendingTotalCount': _pendingTotalCount,
        'rejectedTotalAmount': _rejectedTotalAmount,
        'rejectedTotalCount': _rejectedTotalCount,
        'reviewTotalAmt': _reviewTotalAmt,
        'reviewTotalcount': _reviewTotalcount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'acceptedTotalAmount': serializeParam(
          _acceptedTotalAmount,
          ParamType.double,
        ),
        'acceptedTotalCount': serializeParam(
          _acceptedTotalCount,
          ParamType.int,
        ),
        'pendingTotalAmount': serializeParam(
          _pendingTotalAmount,
          ParamType.double,
        ),
        'pendingTotalCount': serializeParam(
          _pendingTotalCount,
          ParamType.int,
        ),
        'rejectedTotalAmount': serializeParam(
          _rejectedTotalAmount,
          ParamType.double,
        ),
        'rejectedTotalCount': serializeParam(
          _rejectedTotalCount,
          ParamType.int,
        ),
        'reviewTotalAmt': serializeParam(
          _reviewTotalAmt,
          ParamType.double,
        ),
        'reviewTotalcount': serializeParam(
          _reviewTotalcount,
          ParamType.int,
        ),
      }.withoutNulls;

  static ExpenseSummaryStruct fromSerializableMap(Map<String, dynamic> data) =>
      ExpenseSummaryStruct(
        acceptedTotalAmount: deserializeParam(
          data['acceptedTotalAmount'],
          ParamType.double,
          false,
        ),
        acceptedTotalCount: deserializeParam(
          data['acceptedTotalCount'],
          ParamType.int,
          false,
        ),
        pendingTotalAmount: deserializeParam(
          data['pendingTotalAmount'],
          ParamType.double,
          false,
        ),
        pendingTotalCount: deserializeParam(
          data['pendingTotalCount'],
          ParamType.int,
          false,
        ),
        rejectedTotalAmount: deserializeParam(
          data['rejectedTotalAmount'],
          ParamType.double,
          false,
        ),
        rejectedTotalCount: deserializeParam(
          data['rejectedTotalCount'],
          ParamType.int,
          false,
        ),
        reviewTotalAmt: deserializeParam(
          data['reviewTotalAmt'],
          ParamType.double,
          false,
        ),
        reviewTotalcount: deserializeParam(
          data['reviewTotalcount'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ExpenseSummaryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ExpenseSummaryStruct &&
        acceptedTotalAmount == other.acceptedTotalAmount &&
        acceptedTotalCount == other.acceptedTotalCount &&
        pendingTotalAmount == other.pendingTotalAmount &&
        pendingTotalCount == other.pendingTotalCount &&
        rejectedTotalAmount == other.rejectedTotalAmount &&
        rejectedTotalCount == other.rejectedTotalCount &&
        reviewTotalAmt == other.reviewTotalAmt &&
        reviewTotalcount == other.reviewTotalcount;
  }

  @override
  int get hashCode => const ListEquality().hash([
        acceptedTotalAmount,
        acceptedTotalCount,
        pendingTotalAmount,
        pendingTotalCount,
        rejectedTotalAmount,
        rejectedTotalCount,
        reviewTotalAmt,
        reviewTotalcount
      ]);
}

ExpenseSummaryStruct createExpenseSummaryStruct({
  double? acceptedTotalAmount,
  int? acceptedTotalCount,
  double? pendingTotalAmount,
  int? pendingTotalCount,
  double? rejectedTotalAmount,
  int? rejectedTotalCount,
  double? reviewTotalAmt,
  int? reviewTotalcount,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ExpenseSummaryStruct(
      acceptedTotalAmount: acceptedTotalAmount,
      acceptedTotalCount: acceptedTotalCount,
      pendingTotalAmount: pendingTotalAmount,
      pendingTotalCount: pendingTotalCount,
      rejectedTotalAmount: rejectedTotalAmount,
      rejectedTotalCount: rejectedTotalCount,
      reviewTotalAmt: reviewTotalAmt,
      reviewTotalcount: reviewTotalcount,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ExpenseSummaryStruct? updateExpenseSummaryStruct(
  ExpenseSummaryStruct? expenseSummary, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    expenseSummary
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addExpenseSummaryStructData(
  Map<String, dynamic> firestoreData,
  ExpenseSummaryStruct? expenseSummary,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (expenseSummary == null) {
    return;
  }
  if (expenseSummary.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && expenseSummary.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final expenseSummaryData =
      getExpenseSummaryFirestoreData(expenseSummary, forFieldValue);
  final nestedData =
      expenseSummaryData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = expenseSummary.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getExpenseSummaryFirestoreData(
  ExpenseSummaryStruct? expenseSummary, [
  bool forFieldValue = false,
]) {
  if (expenseSummary == null) {
    return {};
  }
  final firestoreData = mapToFirestore(expenseSummary.toMap());

  // Add any Firestore field values
  mapToFirestore(expenseSummary.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getExpenseSummaryListFirestoreData(
  List<ExpenseSummaryStruct>? expenseSummarys,
) =>
    expenseSummarys
        ?.map((e) => getExpenseSummaryFirestoreData(e, true))
        .toList() ??
    [];
