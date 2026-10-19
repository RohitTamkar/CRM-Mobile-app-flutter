import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExpenseTransactionRecord extends FirestoreRecord {
  ExpenseTransactionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "expenseAmount" field.
  double? _expenseAmount;
  double get expenseAmount => _expenseAmount ?? 0.0;
  bool hasExpenseAmount() => _expenseAmount != null;

  // "paidAmount" field.
  double? _paidAmount;
  double get paidAmount => _paidAmount ?? 0.0;
  bool hasPaidAmount() => _paidAmount != null;

  // "payDate" field.
  int? _payDate;
  int get payDate => _payDate ?? 0;
  bool hasPayDate() => _payDate != null;

  // "dayId" field.
  String? _dayId;
  String get dayId => _dayId ?? '';
  bool hasDayId() => _dayId != null;

  // "monthId" field.
  String? _monthId;
  String get monthId => _monthId ?? '';
  bool hasMonthId() => _monthId != null;

  // "payIdBy" field.
  String? _payIdBy;
  String get payIdBy => _payIdBy ?? '';
  bool hasPayIdBy() => _payIdBy != null;

  // "yearId" field.
  String? _yearId;
  String get yearId => _yearId ?? '';
  bool hasYearId() => _yearId != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _expenseAmount = castToType<double>(snapshotData['expenseAmount']);
    _paidAmount = castToType<double>(snapshotData['paidAmount']);
    _payDate = castToType<int>(snapshotData['payDate']);
    _dayId = snapshotData['dayId'] as String?;
    _monthId = snapshotData['monthId'] as String?;
    _payIdBy = snapshotData['payIdBy'] as String?;
    _yearId = snapshotData['yearId'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('ExpenseTransaction')
          : FirebaseFirestore.instance.collectionGroup('ExpenseTransaction');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('ExpenseTransaction').doc(id);

  static Stream<ExpenseTransactionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ExpenseTransactionRecord.fromSnapshot(s));

  static Future<ExpenseTransactionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ExpenseTransactionRecord.fromSnapshot(s));

  static ExpenseTransactionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ExpenseTransactionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ExpenseTransactionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ExpenseTransactionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ExpenseTransactionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ExpenseTransactionRecord &&
      reference.path == other.reference.path;
}

Map<String, dynamic> createExpenseTransactionRecordData({
  double? expenseAmount,
  double? paidAmount,
  int? payDate,
  String? dayId,
  String? monthId,
  String? payIdBy,
  String? yearId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'expenseAmount': expenseAmount,
      'paidAmount': paidAmount,
      'payDate': payDate,
      'dayId': dayId,
      'monthId': monthId,
      'payIdBy': payIdBy,
      'yearId': yearId,
    }.withoutNulls,
  );

  return firestoreData;
}

class ExpenseTransactionRecordDocumentEquality
    implements Equality<ExpenseTransactionRecord> {
  const ExpenseTransactionRecordDocumentEquality();

  @override
  bool equals(ExpenseTransactionRecord? e1, ExpenseTransactionRecord? e2) {
    return e1?.expenseAmount == e2?.expenseAmount &&
        e1?.paidAmount == e2?.paidAmount &&
        e1?.payDate == e2?.payDate &&
        e1?.dayId == e2?.dayId &&
        e1?.monthId == e2?.monthId &&
        e1?.payIdBy == e2?.payIdBy &&
        e1?.yearId == e2?.yearId;
  }

  @override
  int hash(ExpenseTransactionRecord? e) => const ListEquality().hash([
        e?.expenseAmount,
        e?.paidAmount,
        e?.payDate,
        e?.dayId,
        e?.monthId,
        e?.payIdBy,
        e?.yearId
      ]);

  @override
  bool isValidKey(Object? o) => o is ExpenseTransactionRecord;
}
