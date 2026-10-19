import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExpenseHeaderRecord extends FirestoreRecord {
  ExpenseHeaderRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "categoryNo" field.
  int? _categoryNo;
  int get categoryNo => _categoryNo ?? 0;
  bool hasCategoryNo() => _categoryNo != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _category = snapshotData['category'] as String?;
    _id = snapshotData['id'] as String?;
    _categoryNo = castToType<int>(snapshotData['categoryNo']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('EXPENSE_HEADER')
          : FirebaseFirestore.instance.collectionGroup('EXPENSE_HEADER');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('EXPENSE_HEADER').doc(id);

  static Stream<ExpenseHeaderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ExpenseHeaderRecord.fromSnapshot(s));

  static Future<ExpenseHeaderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ExpenseHeaderRecord.fromSnapshot(s));

  static ExpenseHeaderRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ExpenseHeaderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ExpenseHeaderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ExpenseHeaderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ExpenseHeaderRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ExpenseHeaderRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createExpenseHeaderRecordData({
  String? category,
  String? id,
  int? categoryNo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'category': category,
      'id': id,
      'categoryNo': categoryNo,
    }.withoutNulls,
  );

  return firestoreData;
}

class ExpenseHeaderRecordDocumentEquality
    implements Equality<ExpenseHeaderRecord> {
  const ExpenseHeaderRecordDocumentEquality();

  @override
  bool equals(ExpenseHeaderRecord? e1, ExpenseHeaderRecord? e2) {
    return e1?.category == e2?.category &&
        e1?.id == e2?.id &&
        e1?.categoryNo == e2?.categoryNo;
  }

  @override
  int hash(ExpenseHeaderRecord? e) =>
      const ListEquality().hash([e?.category, e?.id, e?.categoryNo]);

  @override
  bool isValidKey(Object? o) => o is ExpenseHeaderRecord;
}
