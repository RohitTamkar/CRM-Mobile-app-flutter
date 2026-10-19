import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SaleRecord extends FirestoreRecord {
  SaleRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "discountAmt" field.
  double? _discountAmt;
  double get discountAmt => _discountAmt ?? 0.0;
  bool hasDiscountAmt() => _discountAmt != null;

  // "dayId" field.
  String? _dayId;
  String get dayId => _dayId ?? '';
  bool hasDayId() => _dayId != null;

  // "discountPer" field.
  double? _discountPer;
  double get discountPer => _discountPer ?? 0.0;
  bool hasDiscountPer() => _discountPer != null;

  // "finalBillAmt" field.
  double? _finalBillAmt;
  double get finalBillAmt => _finalBillAmt ?? 0.0;
  bool hasFinalBillAmt() => _finalBillAmt != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "paymentMode" field.
  String? _paymentMode;
  String get paymentMode => _paymentMode ?? '';
  bool hasPaymentMode() => _paymentMode != null;

  // "roundOff" field.
  double? _roundOff;
  double get roundOff => _roundOff ?? 0.0;
  bool hasRoundOff() => _roundOff != null;

  // "party" field.
  String? _party;
  String get party => _party ?? '';
  bool hasParty() => _party != null;

  // "gstNo" field.
  String? _gstNo;
  String get gstNo => _gstNo ?? '';
  bool hasGstNo() => _gstNo != null;

  // "balanceDue" field.
  double? _balanceDue;
  double get balanceDue => _balanceDue ?? 0.0;
  bool hasBalanceDue() => _balanceDue != null;

  // "productList" field.
  List<PurchaseSaleItemListStruct>? _productList;
  List<PurchaseSaleItemListStruct> get productList => _productList ?? const [];
  bool hasProductList() => _productList != null;

  // "receivedAmt" field.
  double? _receivedAmt;
  double get receivedAmt => _receivedAmt ?? 0.0;
  bool hasReceivedAmt() => _receivedAmt != null;

  // "order" field.
  String? _order;
  String get order => _order ?? '';
  bool hasOrder() => _order != null;

  // "authorizedBy" field.
  String? _authorizedBy;
  String get authorizedBy => _authorizedBy ?? '';
  bool hasAuthorizedBy() => _authorizedBy != null;

  // "orderDate" field.
  int? _orderDate;
  int get orderDate => _orderDate ?? 0;
  bool hasOrderDate() => _orderDate != null;

  // "grosssTotal" field.
  double? _grosssTotal;
  double get grosssTotal => _grosssTotal ?? 0.0;
  bool hasGrosssTotal() => _grosssTotal != null;

  // "mobile" field.
  String? _mobile;
  String get mobile => _mobile ?? '';
  bool hasMobile() => _mobile != null;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  bool hasStatus() => _status != null;

  // "modifiedBy" field.
  DocumentReference? _modifiedBy;
  DocumentReference? get modifiedBy => _modifiedBy;
  bool hasModifiedBy() => _modifiedBy != null;

  // "modifiedDate" field.
  int? _modifiedDate;
  int get modifiedDate => _modifiedDate ?? 0;
  bool hasModifiedDate() => _modifiedDate != null;

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  bool hasComment() => _comment != null;

  // "invoiceDate" field.
  int? _invoiceDate;
  int get invoiceDate => _invoiceDate ?? 0;
  bool hasInvoiceDate() => _invoiceDate != null;

  // "createdBy" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  bool hasCreatedBy() => _createdBy != null;

  // "orderTime" field.
  DateTime? _orderTime;
  DateTime? get orderTime => _orderTime;
  bool hasOrderTime() => _orderTime != null;

  // "serialNumber" field.
  int? _serialNumber;
  int get serialNumber => _serialNumber ?? 0;
  bool hasSerialNumber() => _serialNumber != null;

  // "additionalCharg" field.
  String? _additionalCharg;
  String get additionalCharg => _additionalCharg ?? '';
  bool hasAdditionalCharg() => _additionalCharg != null;

  // "additionalChargAmt" field.
  double? _additionalChargAmt;
  double get additionalChargAmt => _additionalChargAmt ?? 0.0;
  bool hasAdditionalChargAmt() => _additionalChargAmt != null;

  // "invoiceNo" field.
  String? _invoiceNo;
  String get invoiceNo => _invoiceNo ?? '';
  bool hasInvoiceNo() => _invoiceNo != null;

  // "paidAmt" field.
  double? _paidAmt;
  double get paidAmt => _paidAmt ?? 0.0;
  bool hasPaidAmt() => _paidAmt != null;

  // "poDueDate" field.
  String? _poDueDate;
  String get poDueDate => _poDueDate ?? '';
  bool hasPoDueDate() => _poDueDate != null;

  // "serialNo" field.
  String? _serialNo;
  String get serialNo => _serialNo ?? '';
  bool hasSerialNo() => _serialNo != null;

  // "productList1" field.
  List<PurchaseSaleItemList1Struct>? _productList1;
  List<PurchaseSaleItemList1Struct> get productList1 =>
      _productList1 ?? const [];
  bool hasProductList1() => _productList1 != null;

  // "monthId" field.
  String? _monthId;
  String get monthId => _monthId ?? '';
  bool hasMonthId() => _monthId != null;

  // "yearId" field.
  String? _yearId;
  String get yearId => _yearId ?? '';
  bool hasYearId() => _yearId != null;

  // "orderStatus" field.
  bool? _orderStatus;
  bool get orderStatus => _orderStatus ?? false;
  bool hasOrderStatus() => _orderStatus != null;

  // "gstType" field.
  bool? _gstType;
  bool get gstType => _gstType ?? false;
  bool hasGstType() => _gstType != null;

  // "leadRefId" field.
  String? _leadRefId;
  String get leadRefId => _leadRefId ?? '';
  bool hasLeadRefId() => _leadRefId != null;

  // "createdDate" field.
  int? _createdDate;
  int get createdDate => _createdDate ?? 0;
  bool hasCreatedDate() => _createdDate != null;

  // "count" field.
  int? _count;
  int get count => _count ?? 0;
  bool hasCount() => _count != null;

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "imageOfAdvAmt" field.
  List<String>? _imageOfAdvAmt;
  List<String> get imageOfAdvAmt => _imageOfAdvAmt ?? const [];
  bool hasImageOfAdvAmt() => _imageOfAdvAmt != null;

  // "updatedBy" field.
  String? _updatedBy;
  String get updatedBy => _updatedBy ?? '';
  bool hasUpdatedBy() => _updatedBy != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _discountAmt = castToType<double>(snapshotData['discountAmt']);
    _dayId = snapshotData['dayId'] as String?;
    _discountPer = castToType<double>(snapshotData['discountPer']);
    _finalBillAmt = castToType<double>(snapshotData['finalBillAmt']);
    _id = snapshotData['id'] as String?;
    _paymentMode = snapshotData['paymentMode'] as String?;
    _roundOff = castToType<double>(snapshotData['roundOff']);
    _party = snapshotData['party'] as String?;
    _gstNo = snapshotData['gstNo'] as String?;
    _balanceDue = castToType<double>(snapshotData['balanceDue']);
    _productList = getStructList(
      snapshotData['productList'],
      PurchaseSaleItemListStruct.fromMap,
    );
    _receivedAmt = castToType<double>(snapshotData['receivedAmt']);
    _order = snapshotData['order'] as String?;
    _authorizedBy = snapshotData['authorizedBy'] as String?;
    _orderDate = castToType<int>(snapshotData['orderDate']);
    _grosssTotal = castToType<double>(snapshotData['grosssTotal']);
    _mobile = snapshotData['mobile'] as String?;
    _status = castToType<int>(snapshotData['status']);
    _modifiedBy = snapshotData['modifiedBy'] as DocumentReference?;
    _modifiedDate = castToType<int>(snapshotData['modifiedDate']);
    _comment = snapshotData['comment'] as String?;
    _invoiceDate = castToType<int>(snapshotData['invoiceDate']);
    _createdBy = snapshotData['createdBy'] as String?;
    _orderTime = snapshotData['orderTime'] as DateTime?;
    _serialNumber = castToType<int>(snapshotData['serialNumber']);
    _additionalCharg = snapshotData['additionalCharg'] as String?;
    _additionalChargAmt =
        castToType<double>(snapshotData['additionalChargAmt']);
    _invoiceNo = snapshotData['invoiceNo'] as String?;
    _paidAmt = castToType<double>(snapshotData['paidAmt']);
    _poDueDate = snapshotData['poDueDate'] as String?;
    _serialNo = snapshotData['serialNo'] as String?;
    _productList1 = getStructList(
      snapshotData['productList1'],
      PurchaseSaleItemList1Struct.fromMap,
    );
    _monthId = snapshotData['monthId'] as String?;
    _yearId = snapshotData['yearId'] as String?;
    _orderStatus = snapshotData['orderStatus'] as bool?;
    _gstType = snapshotData['gstType'] as bool?;
    _leadRefId = snapshotData['leadRefId'] as String?;
    _createdDate = castToType<int>(snapshotData['createdDate']);
    _count = castToType<int>(snapshotData['count']);
    _imageUrl = snapshotData['imageUrl'] as String?;
    _imageOfAdvAmt = getDataList(snapshotData['imageOfAdvAmt']);
    _updatedBy = snapshotData['updatedBy'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('SALE')
          : FirebaseFirestore.instance.collectionGroup('SALE');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('SALE').doc(id);

  static Stream<SaleRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SaleRecord.fromSnapshot(s));

  static Future<SaleRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SaleRecord.fromSnapshot(s));

  static SaleRecord fromSnapshot(DocumentSnapshot snapshot) => SaleRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SaleRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SaleRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SaleRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SaleRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createSaleRecordData({
  double? discountAmt,
  String? dayId,
  double? discountPer,
  double? finalBillAmt,
  String? id,
  String? paymentMode,
  double? roundOff,
  String? party,
  String? gstNo,
  double? balanceDue,
  double? receivedAmt,
  String? order,
  String? authorizedBy,
  int? orderDate,
  double? grosssTotal,
  String? mobile,
  int? status,
  DocumentReference? modifiedBy,
  int? modifiedDate,
  String? comment,
  int? invoiceDate,
  String? createdBy,
  DateTime? orderTime,
  int? serialNumber,
  String? additionalCharg,
  double? additionalChargAmt,
  String? invoiceNo,
  double? paidAmt,
  String? poDueDate,
  String? serialNo,
  String? monthId,
  String? yearId,
  bool? orderStatus,
  bool? gstType,
  String? leadRefId,
  int? createdDate,
  int? count,
  String? imageUrl,
  String? updatedBy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'discountAmt': discountAmt,
      'dayId': dayId,
      'discountPer': discountPer,
      'finalBillAmt': finalBillAmt,
      'id': id,
      'paymentMode': paymentMode,
      'roundOff': roundOff,
      'party': party,
      'gstNo': gstNo,
      'balanceDue': balanceDue,
      'receivedAmt': receivedAmt,
      'order': order,
      'authorizedBy': authorizedBy,
      'orderDate': orderDate,
      'grosssTotal': grosssTotal,
      'mobile': mobile,
      'status': status,
      'modifiedBy': modifiedBy,
      'modifiedDate': modifiedDate,
      'comment': comment,
      'invoiceDate': invoiceDate,
      'createdBy': createdBy,
      'orderTime': orderTime,
      'serialNumber': serialNumber,
      'additionalCharg': additionalCharg,
      'additionalChargAmt': additionalChargAmt,
      'invoiceNo': invoiceNo,
      'paidAmt': paidAmt,
      'poDueDate': poDueDate,
      'serialNo': serialNo,
      'monthId': monthId,
      'yearId': yearId,
      'orderStatus': orderStatus,
      'gstType': gstType,
      'leadRefId': leadRefId,
      'createdDate': createdDate,
      'count': count,
      'imageUrl': imageUrl,
      'updatedBy': updatedBy,
    }.withoutNulls,
  );

  return firestoreData;
}

class SaleRecordDocumentEquality implements Equality<SaleRecord> {
  const SaleRecordDocumentEquality();

  @override
  bool equals(SaleRecord? e1, SaleRecord? e2) {
    const listEquality = ListEquality();
    return e1?.discountAmt == e2?.discountAmt &&
        e1?.dayId == e2?.dayId &&
        e1?.discountPer == e2?.discountPer &&
        e1?.finalBillAmt == e2?.finalBillAmt &&
        e1?.id == e2?.id &&
        e1?.paymentMode == e2?.paymentMode &&
        e1?.roundOff == e2?.roundOff &&
        e1?.party == e2?.party &&
        e1?.gstNo == e2?.gstNo &&
        e1?.balanceDue == e2?.balanceDue &&
        listEquality.equals(e1?.productList, e2?.productList) &&
        e1?.receivedAmt == e2?.receivedAmt &&
        e1?.order == e2?.order &&
        e1?.authorizedBy == e2?.authorizedBy &&
        e1?.orderDate == e2?.orderDate &&
        e1?.grosssTotal == e2?.grosssTotal &&
        e1?.mobile == e2?.mobile &&
        e1?.status == e2?.status &&
        e1?.modifiedBy == e2?.modifiedBy &&
        e1?.modifiedDate == e2?.modifiedDate &&
        e1?.comment == e2?.comment &&
        e1?.invoiceDate == e2?.invoiceDate &&
        e1?.createdBy == e2?.createdBy &&
        e1?.orderTime == e2?.orderTime &&
        e1?.serialNumber == e2?.serialNumber &&
        e1?.additionalCharg == e2?.additionalCharg &&
        e1?.additionalChargAmt == e2?.additionalChargAmt &&
        e1?.invoiceNo == e2?.invoiceNo &&
        e1?.paidAmt == e2?.paidAmt &&
        e1?.poDueDate == e2?.poDueDate &&
        e1?.serialNo == e2?.serialNo &&
        listEquality.equals(e1?.productList1, e2?.productList1) &&
        e1?.monthId == e2?.monthId &&
        e1?.yearId == e2?.yearId &&
        e1?.orderStatus == e2?.orderStatus &&
        e1?.gstType == e2?.gstType &&
        e1?.leadRefId == e2?.leadRefId &&
        e1?.createdDate == e2?.createdDate &&
        e1?.count == e2?.count &&
        e1?.imageUrl == e2?.imageUrl &&
        listEquality.equals(e1?.imageOfAdvAmt, e2?.imageOfAdvAmt) &&
        e1?.updatedBy == e2?.updatedBy;
  }

  @override
  int hash(SaleRecord? e) => const ListEquality().hash([
        e?.discountAmt,
        e?.dayId,
        e?.discountPer,
        e?.finalBillAmt,
        e?.id,
        e?.paymentMode,
        e?.roundOff,
        e?.party,
        e?.gstNo,
        e?.balanceDue,
        const ListEquality().hash(e?.productList),
        e?.receivedAmt,
        e?.order,
        e?.authorizedBy,
        e?.orderDate,
        e?.grosssTotal,
        e?.mobile,
        e?.status,
        e?.modifiedBy,
        e?.modifiedDate,
        e?.comment,
        e?.invoiceDate,
        e?.createdBy,
        e?.orderTime,
        e?.serialNumber,
        e?.additionalCharg,
        e?.additionalChargAmt,
        e?.invoiceNo,
        e?.paidAmt,
        e?.poDueDate,
        e?.serialNo,
        const ListEquality().hash(e?.productList1),
        e?.monthId,
        e?.yearId,
        e?.orderStatus,
        e?.gstType,
        e?.leadRefId,
        e?.createdDate,
        e?.count,
        e?.imageUrl,
        const ListEquality().hash(e?.imageOfAdvAmt),
        e?.updatedBy
      ]);

  @override
  bool isValidKey(Object? o) => o is SaleRecord;
}
