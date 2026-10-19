import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExpenseRecord extends FirestoreRecord {
  ExpenseRecord._(
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

  // "expCatRefId" field.
  String? _expCatRefId;
  String get expCatRefId => _expCatRefId ?? '';
  bool hasExpCatRefId() => _expCatRefId != null;

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

  // "invoiceNo" field.
  String? _invoiceNo;
  String get invoiceNo => _invoiceNo ?? '';
  bool hasInvoiceNo() => _invoiceNo != null;

  // "invoiceDate" field.
  String? _invoiceDate;
  String get invoiceDate => _invoiceDate ?? '';
  bool hasInvoiceDate() => _invoiceDate != null;

  // "invoiceImage" field.
  String? _invoiceImage;
  String get invoiceImage => _invoiceImage ?? '';
  bool hasInvoiceImage() => _invoiceImage != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "rejectionReason" field.
  String? _rejectionReason;
  String get rejectionReason => _rejectionReason ?? '';
  bool hasRejectionReason() => _rejectionReason != null;

  // "reviewedBy" field.
  String? _reviewedBy;
  String get reviewedBy => _reviewedBy ?? '';
  bool hasReviewedBy() => _reviewedBy != null;

  // "paymentMode" field.
  String? _paymentMode;
  String get paymentMode => _paymentMode ?? '';
  bool hasPaymentMode() => _paymentMode != null;

  // "journeyFrom" field.
  String? _journeyFrom;
  String get journeyFrom => _journeyFrom ?? '';
  bool hasJourneyFrom() => _journeyFrom != null;

  // "journeyTo" field.
  String? _journeyTo;
  String get journeyTo => _journeyTo ?? '';
  bool hasJourneyTo() => _journeyTo != null;

  // "purpose" field.
  String? _purpose;
  String get purpose => _purpose ?? '';
  bool hasPurpose() => _purpose != null;

  // "totalKm" field.
  String? _totalKm;
  String get totalKm => _totalKm ?? '';
  bool hasTotalKm() => _totalKm != null;

  // "travelMode" field.
  String? _travelMode;
  String get travelMode => _travelMode ?? '';
  bool hasTravelMode() => _travelMode != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _amount = castToType<double>(snapshotData['amount']);
    _dateTime = snapshotData['dateTime'] as DateTime?;
    _paymentModeRefId = snapshotData['paymentModeRefId'] as String?;
    _expCatRefId = snapshotData['expCatRefId'] as String?;
    _incExpType = castToType<int>(snapshotData['incExpType']);
    _monthId = snapshotData['monthId'] as String?;
    _createdDate = castToType<int>(snapshotData['createdDate']);
    _updateDate = castToType<int>(snapshotData['updateDate']);
    _editFlag = snapshotData['editFlag'] as bool?;
    _userId = snapshotData['userId'] as String?;
    _dayId = snapshotData['dayId'] as String?;
    _isPersonal = snapshotData['isPersonal'] as bool?;
    _image = snapshotData['image'] as String?;
    _invoiceNo = snapshotData['invoiceNo'] as String?;
    _invoiceDate = snapshotData['invoiceDate'] as String?;
    _invoiceImage = snapshotData['invoiceImage'] as String?;
    _status = snapshotData['status'] as String?;
    _rejectionReason = snapshotData['rejectionReason'] as String?;
    _reviewedBy = snapshotData['reviewedBy'] as String?;
    _paymentMode = snapshotData['paymentMode'] as String?;
    _journeyFrom = snapshotData['journeyFrom'] as String?;
    _journeyTo = snapshotData['journeyTo'] as String?;
    _purpose = snapshotData['purpose'] as String?;
    _totalKm = snapshotData['totalKm'] as String?;
    _travelMode = snapshotData['travelMode'] as String?;
    _category = snapshotData['category'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('EXPENSE')
          : FirebaseFirestore.instance.collectionGroup('EXPENSE');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('EXPENSE').doc(id);

  static Stream<ExpenseRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ExpenseRecord.fromSnapshot(s));

  static Future<ExpenseRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ExpenseRecord.fromSnapshot(s));

  static ExpenseRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ExpenseRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ExpenseRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ExpenseRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ExpenseRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ExpenseRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createExpenseRecordData({
  String? id,
  double? amount,
  DateTime? dateTime,
  String? paymentModeRefId,
  String? expCatRefId,
  int? incExpType,
  String? monthId,
  int? createdDate,
  int? updateDate,
  bool? editFlag,
  String? userId,
  String? dayId,
  bool? isPersonal,
  String? image,
  String? invoiceNo,
  String? invoiceDate,
  String? invoiceImage,
  String? status,
  String? rejectionReason,
  String? reviewedBy,
  String? paymentMode,
  String? journeyFrom,
  String? journeyTo,
  String? purpose,
  String? totalKm,
  String? travelMode,
  String? category,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'amount': amount,
      'dateTime': dateTime,
      'paymentModeRefId': paymentModeRefId,
      'expCatRefId': expCatRefId,
      'incExpType': incExpType,
      'monthId': monthId,
      'createdDate': createdDate,
      'updateDate': updateDate,
      'editFlag': editFlag,
      'userId': userId,
      'dayId': dayId,
      'isPersonal': isPersonal,
      'image': image,
      'invoiceNo': invoiceNo,
      'invoiceDate': invoiceDate,
      'invoiceImage': invoiceImage,
      'status': status,
      'rejectionReason': rejectionReason,
      'reviewedBy': reviewedBy,
      'paymentMode': paymentMode,
      'journeyFrom': journeyFrom,
      'journeyTo': journeyTo,
      'purpose': purpose,
      'totalKm': totalKm,
      'travelMode': travelMode,
      'category': category,
    }.withoutNulls,
  );

  return firestoreData;
}

class ExpenseRecordDocumentEquality implements Equality<ExpenseRecord> {
  const ExpenseRecordDocumentEquality();

  @override
  bool equals(ExpenseRecord? e1, ExpenseRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.amount == e2?.amount &&
        e1?.dateTime == e2?.dateTime &&
        e1?.paymentModeRefId == e2?.paymentModeRefId &&
        e1?.expCatRefId == e2?.expCatRefId &&
        e1?.incExpType == e2?.incExpType &&
        e1?.monthId == e2?.monthId &&
        e1?.createdDate == e2?.createdDate &&
        e1?.updateDate == e2?.updateDate &&
        e1?.editFlag == e2?.editFlag &&
        e1?.userId == e2?.userId &&
        e1?.dayId == e2?.dayId &&
        e1?.isPersonal == e2?.isPersonal &&
        e1?.image == e2?.image &&
        e1?.invoiceNo == e2?.invoiceNo &&
        e1?.invoiceDate == e2?.invoiceDate &&
        e1?.invoiceImage == e2?.invoiceImage &&
        e1?.status == e2?.status &&
        e1?.rejectionReason == e2?.rejectionReason &&
        e1?.reviewedBy == e2?.reviewedBy &&
        e1?.paymentMode == e2?.paymentMode &&
        e1?.journeyFrom == e2?.journeyFrom &&
        e1?.journeyTo == e2?.journeyTo &&
        e1?.purpose == e2?.purpose &&
        e1?.totalKm == e2?.totalKm &&
        e1?.travelMode == e2?.travelMode &&
        e1?.category == e2?.category;
  }

  @override
  int hash(ExpenseRecord? e) => const ListEquality().hash([
        e?.id,
        e?.amount,
        e?.dateTime,
        e?.paymentModeRefId,
        e?.expCatRefId,
        e?.incExpType,
        e?.monthId,
        e?.createdDate,
        e?.updateDate,
        e?.editFlag,
        e?.userId,
        e?.dayId,
        e?.isPersonal,
        e?.image,
        e?.invoiceNo,
        e?.invoiceDate,
        e?.invoiceImage,
        e?.status,
        e?.rejectionReason,
        e?.reviewedBy,
        e?.paymentMode,
        e?.journeyFrom,
        e?.journeyTo,
        e?.purpose,
        e?.totalKm,
        e?.travelMode,
        e?.category
      ]);

  @override
  bool isValidKey(Object? o) => o is ExpenseRecord;
}
