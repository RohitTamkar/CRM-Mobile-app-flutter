import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserExpenseBalanceRecord extends FirestoreRecord {
  UserExpenseBalanceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "date" field.
  int? _date;
  int get date => _date ?? 0;
  bool hasDate() => _date != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _amount = castToType<double>(snapshotData['amount']);
    _userId = snapshotData['userId'] as String?;
    _date = castToType<int>(snapshotData['date']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('UserExpenseBalance')
          : FirebaseFirestore.instance.collectionGroup('UserExpenseBalance');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('UserExpenseBalance').doc(id);

  static Stream<UserExpenseBalanceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserExpenseBalanceRecord.fromSnapshot(s));

  static Future<UserExpenseBalanceRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UserExpenseBalanceRecord.fromSnapshot(s));

  static UserExpenseBalanceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserExpenseBalanceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserExpenseBalanceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserExpenseBalanceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserExpenseBalanceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserExpenseBalanceRecord &&
      reference.path == other.reference.path;
}

Map<String, dynamic> createUserExpenseBalanceRecordData({
  String? id,
  double? amount,
  String? userId,
  int? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'amount': amount,
      'userId': userId,
      'date': date,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserExpenseBalanceRecordDocumentEquality
    implements Equality<UserExpenseBalanceRecord> {
  const UserExpenseBalanceRecordDocumentEquality();

  @override
  bool equals(UserExpenseBalanceRecord? e1, UserExpenseBalanceRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.amount == e2?.amount &&
        e1?.userId == e2?.userId &&
        e1?.date == e2?.date;
  }

  @override
  int hash(UserExpenseBalanceRecord? e) =>
      const ListEquality().hash([e?.id, e?.amount, e?.userId, e?.date]);

  @override
  bool isValidKey(Object? o) => o is UserExpenseBalanceRecord;
}
