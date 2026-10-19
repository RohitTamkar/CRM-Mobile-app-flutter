// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserExpPayTransactionsStruct extends FFFirebaseStruct {
  UserExpPayTransactionsStruct({
    String? note,
    double? amount,
    int? createdDate,
    DateTime? dateTime,
    int? incExpType,
    String? paidby,
    String? paidto,
    String? paymentModeRefId,
    String? expCatRefId,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _note = note,
        _amount = amount,
        _createdDate = createdDate,
        _dateTime = dateTime,
        _incExpType = incExpType,
        _paidby = paidby,
        _paidto = paidto,
        _paymentModeRefId = paymentModeRefId,
        _expCatRefId = expCatRefId,
        super(firestoreUtilData);

  // "note" field.
  String? _note;
  String get note => _note ?? '';
  set note(String? val) => _note = val;

  bool hasNote() => _note != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "createdDate" field.
  int? _createdDate;
  int get createdDate => _createdDate ?? 0;
  set createdDate(int? val) => _createdDate = val;

  void incrementCreatedDate(int amount) => createdDate = createdDate + amount;

  bool hasCreatedDate() => _createdDate != null;

  // "dateTime" field.
  DateTime? _dateTime;
  DateTime? get dateTime => _dateTime;
  set dateTime(DateTime? val) => _dateTime = val;

  bool hasDateTime() => _dateTime != null;

  // "incExpType" field.
  int? _incExpType;
  int get incExpType => _incExpType ?? 0;
  set incExpType(int? val) => _incExpType = val;

  void incrementIncExpType(int amount) => incExpType = incExpType + amount;

  bool hasIncExpType() => _incExpType != null;

  // "paidby" field.
  String? _paidby;
  String get paidby => _paidby ?? '';
  set paidby(String? val) => _paidby = val;

  bool hasPaidby() => _paidby != null;

  // "paidto" field.
  String? _paidto;
  String get paidto => _paidto ?? '';
  set paidto(String? val) => _paidto = val;

  bool hasPaidto() => _paidto != null;

  // "paymentModeRefId" field.
  String? _paymentModeRefId;
  String get paymentModeRefId => _paymentModeRefId ?? '';
  set paymentModeRefId(String? val) => _paymentModeRefId = val;

  bool hasPaymentModeRefId() => _paymentModeRefId != null;

  // "expCatRefId" field.
  String? _expCatRefId;
  String get expCatRefId => _expCatRefId ?? '';
  set expCatRefId(String? val) => _expCatRefId = val;

  bool hasExpCatRefId() => _expCatRefId != null;

  static UserExpPayTransactionsStruct fromMap(Map<String, dynamic> data) =>
      UserExpPayTransactionsStruct(
        note: data['note'] as String?,
        amount: castToType<double>(data['amount']),
        createdDate: castToType<int>(data['createdDate']),
        dateTime: data['dateTime'] as DateTime?,
        incExpType: castToType<int>(data['incExpType']),
        paidby: data['paidby'] as String?,
        paidto: data['paidto'] as String?,
        paymentModeRefId: data['paymentModeRefId'] as String?,
        expCatRefId: data['expCatRefId'] as String?,
      );

  static UserExpPayTransactionsStruct? maybeFromMap(dynamic data) => data is Map
      ? UserExpPayTransactionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'note': _note,
        'amount': _amount,
        'createdDate': _createdDate,
        'dateTime': _dateTime,
        'incExpType': _incExpType,
        'paidby': _paidby,
        'paidto': _paidto,
        'paymentModeRefId': _paymentModeRefId,
        'expCatRefId': _expCatRefId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'note': serializeParam(
          _note,
          ParamType.String,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'createdDate': serializeParam(
          _createdDate,
          ParamType.int,
        ),
        'dateTime': serializeParam(
          _dateTime,
          ParamType.DateTime,
        ),
        'incExpType': serializeParam(
          _incExpType,
          ParamType.int,
        ),
        'paidby': serializeParam(
          _paidby,
          ParamType.String,
        ),
        'paidto': serializeParam(
          _paidto,
          ParamType.String,
        ),
        'paymentModeRefId': serializeParam(
          _paymentModeRefId,
          ParamType.String,
        ),
        'expCatRefId': serializeParam(
          _expCatRefId,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserExpPayTransactionsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      UserExpPayTransactionsStruct(
        note: deserializeParam(
          data['note'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        createdDate: deserializeParam(
          data['createdDate'],
          ParamType.int,
          false,
        ),
        dateTime: deserializeParam(
          data['dateTime'],
          ParamType.DateTime,
          false,
        ),
        incExpType: deserializeParam(
          data['incExpType'],
          ParamType.int,
          false,
        ),
        paidby: deserializeParam(
          data['paidby'],
          ParamType.String,
          false,
        ),
        paidto: deserializeParam(
          data['paidto'],
          ParamType.String,
          false,
        ),
        paymentModeRefId: deserializeParam(
          data['paymentModeRefId'],
          ParamType.String,
          false,
        ),
        expCatRefId: deserializeParam(
          data['expCatRefId'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserExpPayTransactionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserExpPayTransactionsStruct &&
        note == other.note &&
        amount == other.amount &&
        createdDate == other.createdDate &&
        dateTime == other.dateTime &&
        incExpType == other.incExpType &&
        paidby == other.paidby &&
        paidto == other.paidto &&
        paymentModeRefId == other.paymentModeRefId &&
        expCatRefId == other.expCatRefId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        note,
        amount,
        createdDate,
        dateTime,
        incExpType,
        paidby,
        paidto,
        paymentModeRefId,
        expCatRefId
      ]);
}

UserExpPayTransactionsStruct createUserExpPayTransactionsStruct({
  String? note,
  double? amount,
  int? createdDate,
  DateTime? dateTime,
  int? incExpType,
  String? paidby,
  String? paidto,
  String? paymentModeRefId,
  String? expCatRefId,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserExpPayTransactionsStruct(
      note: note,
      amount: amount,
      createdDate: createdDate,
      dateTime: dateTime,
      incExpType: incExpType,
      paidby: paidby,
      paidto: paidto,
      paymentModeRefId: paymentModeRefId,
      expCatRefId: expCatRefId,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserExpPayTransactionsStruct? updateUserExpPayTransactionsStruct(
  UserExpPayTransactionsStruct? userExpPayTransactions, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userExpPayTransactions
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserExpPayTransactionsStructData(
  Map<String, dynamic> firestoreData,
  UserExpPayTransactionsStruct? userExpPayTransactions,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userExpPayTransactions == null) {
    return;
  }
  if (userExpPayTransactions.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      userExpPayTransactions.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userExpPayTransactionsData = getUserExpPayTransactionsFirestoreData(
      userExpPayTransactions, forFieldValue);
  final nestedData =
      userExpPayTransactionsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      userExpPayTransactions.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserExpPayTransactionsFirestoreData(
  UserExpPayTransactionsStruct? userExpPayTransactions, [
  bool forFieldValue = false,
]) {
  if (userExpPayTransactions == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userExpPayTransactions.toMap());

  // Add any Firestore field values
  mapToFirestore(userExpPayTransactions.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserExpPayTransactionsListFirestoreData(
  List<UserExpPayTransactionsStruct>? userExpPayTransactionss,
) =>
    userExpPayTransactionss
        ?.map((e) => getUserExpPayTransactionsFirestoreData(e, true))
        .toList() ??
    [];
