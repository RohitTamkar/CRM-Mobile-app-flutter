import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentTransactionRecord extends FirestoreRecord {
  PaymentTransactionRecord._(
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

  // "dateTime" field.
  DateTime? _dateTime;
  DateTime? get dateTime => _dateTime;
  bool hasDateTime() => _dateTime != null;

  // "paymentModeRefId" field.
  String? _paymentModeRefId;
  String get paymentModeRefId => _paymentModeRefId ?? '';
  bool hasPaymentModeRefId() => _paymentModeRefId != null;

  // "incExpType" field.
  int? _incExpType;
  int get incExpType => _incExpType ?? 0;
  bool hasIncExpType() => _incExpType != null;

  // "monthId" field.
  String? _monthId;
  String get monthId => _monthId ?? '';
  bool hasMonthId() => _monthId != null;

  // "createdDate" field.
  int? _createdDate;
  int get createdDate => _createdDate ?? 0;
  bool hasCreatedDate() => _createdDate != null;

  // "updateDate" field.
  int? _updateDate;
  int get updateDate => _updateDate ?? 0;
  bool hasUpdateDate() => _updateDate != null;

  // "editFlag" field.
  bool? _editFlag;
  bool get editFlag => _editFlag ?? false;
  bool hasEditFlag() => _editFlag != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "dayId" field.
  String? _dayId;
  String get dayId => _dayId ?? '';
  bool hasDayId() => _dayId != null;

  // "isPersonal" field.
  bool? _isPersonal;
  bool get isPersonal => _isPersonal ?? false;
  bool hasIsPersonal() => _isPersonal != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "paidby" field.
  String? _paidby;
  String get paidby => _paidby ?? '';
  bool hasPaidby() => _paidby != null;

  // "paidto" field.
  String? _paidto;
  String get paidto => _paidto ?? '';
  bool hasPaidto() => _paidto != null;

  // "yearId" field.
  String? _yearId;
  String get yearId => _yearId ?? '';
  bool hasYearId() => _yearId != null;

  // "Note" field.
  String? _note;
  String get note => _note ?? '';
  bool hasNote() => _note != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _amount = castToType<double>(snapshotData['amount']);
    _dateTime = snapshotData['dateTime'] as DateTime?;
    _paymentModeRefId = snapshotData['paymentModeRefId'] as String?;
    _incExpType = castToType<int>(snapshotData['incExpType']);
    _monthId = snapshotData['monthId'] as String?;
    _createdDate = castToType<int>(snapshotData['createdDate']);
    _updateDate = castToType<int>(snapshotData['updateDate']);
    _editFlag = snapshotData['editFlag'] as bool?;
    _userId = snapshotData['userId'] as String?;
    _dayId = snapshotData['dayId'] as String?;
    _isPersonal = snapshotData['isPersonal'] as bool?;
    _image = snapshotData['image'] as String?;
    _paidby = snapshotData['paidby'] as String?;
    _paidto = snapshotData['paidto'] as String?;
    _yearId = snapshotData['yearId'] as String?;
    _note = snapshotData['Note'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('PaymentTransaction')
          : FirebaseFirestore.instance.collectionGroup('PaymentTransaction');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('PaymentTransaction').doc(id);

  static Stream<PaymentTransactionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PaymentTransactionRecord.fromSnapshot(s));

  static Future<PaymentTransactionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => PaymentTransactionRecord.fromSnapshot(s));

  static PaymentTransactionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PaymentTransactionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PaymentTransactionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PaymentTransactionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PaymentTransactionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PaymentTransactionRecord &&
      reference.path == other.reference.path;
}

Map<String, dynamic> createPaymentTransactionRecordData({
  String? id,
  double? amount,
  DateTime? dateTime,
  String? paymentModeRefId,
  int? incExpType,
  String? monthId,
  int? createdDate,
  int? updateDate,
  bool? editFlag,
  String? userId,
  String? dayId,
  bool? isPersonal,
  String? image,
  String? paidby,
  String? paidto,
  String? yearId,
  String? note,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'amount': amount,
      'dateTime': dateTime,
      'paymentModeRefId': paymentModeRefId,
      'incExpType': incExpType,
      'monthId': monthId,
      'createdDate': createdDate,
      'updateDate': updateDate,
      'editFlag': editFlag,
      'userId': userId,
      'dayId': dayId,
      'isPersonal': isPersonal,
      'image': image,
      'paidby': paidby,
      'paidto': paidto,
      'yearId': yearId,
      'Note': note,
    }.withoutNulls,
  );

  return firestoreData;
}

class PaymentTransactionRecordDocumentEquality
    implements Equality<PaymentTransactionRecord> {
  const PaymentTransactionRecordDocumentEquality();

  @override
  bool equals(PaymentTransactionRecord? e1, PaymentTransactionRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.amount == e2?.amount &&
        e1?.dateTime == e2?.dateTime &&
        e1?.paymentModeRefId == e2?.paymentModeRefId &&
        e1?.incExpType == e2?.incExpType &&
        e1?.monthId == e2?.monthId &&
        e1?.createdDate == e2?.createdDate &&
        e1?.updateDate == e2?.updateDate &&
        e1?.editFlag == e2?.editFlag &&
        e1?.userId == e2?.userId &&
        e1?.dayId == e2?.dayId &&
        e1?.isPersonal == e2?.isPersonal &&
        e1?.image == e2?.image &&
        e1?.paidby == e2?.paidby &&
        e1?.paidto == e2?.paidto &&
        e1?.yearId == e2?.yearId &&
        e1?.note == e2?.note;
  }

  @override
  int hash(PaymentTransactionRecord? e) => const ListEquality().hash([
        e?.id,
        e?.amount,
        e?.dateTime,
        e?.paymentModeRefId,
        e?.incExpType,
        e?.monthId,
        e?.createdDate,
        e?.updateDate,
        e?.editFlag,
        e?.userId,
        e?.dayId,
        e?.isPersonal,
        e?.image,
        e?.paidby,
        e?.paidto,
        e?.yearId,
        e?.note
      ]);

  @override
  bool isValidKey(Object? o) => o is PaymentTransactionRecord;
}
