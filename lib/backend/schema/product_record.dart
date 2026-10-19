import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductRecord extends FirestoreRecord {
  ProductRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "code" field.
  int? _code;
  int get code => _code ?? 0;
  bool hasCode() => _code != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "sellingPrice" field.
  double? _sellingPrice;
  double get sellingPrice => _sellingPrice ?? 0.0;
  bool hasSellingPrice() => _sellingPrice != null;

  // "mrpPrice" field.
  double? _mrpPrice;
  double get mrpPrice => _mrpPrice ?? 0.0;
  bool hasMrpPrice() => _mrpPrice != null;

  // "purchasePrice" field.
  double? _purchasePrice;
  double get purchasePrice => _purchasePrice ?? 0.0;
  bool hasPurchasePrice() => _purchasePrice != null;

  // "categoryRef" field.
  DocumentReference? _categoryRef;
  DocumentReference? get categoryRef => _categoryRef;
  bool hasCategoryRef() => _categoryRef != null;

  // "taxRef" field.
  DocumentReference? _taxRef;
  DocumentReference? get taxRef => _taxRef;
  bool hasTaxRef() => _taxRef != null;

  // "unitRef" field.
  DocumentReference? _unitRef;
  DocumentReference? get unitRef => _unitRef;
  bool hasUnitRef() => _unitRef != null;

  // "serviceRef" field.
  DocumentReference? _serviceRef;
  DocumentReference? get serviceRef => _serviceRef;
  bool hasServiceRef() => _serviceRef != null;

  // "regionalName" field.
  String? _regionalName;
  String get regionalName => _regionalName ?? '';
  bool hasRegionalName() => _regionalName != null;

  // "reorderLevel" field.
  int? _reorderLevel;
  int get reorderLevel => _reorderLevel ?? 0;
  bool hasReorderLevel() => _reorderLevel != null;

  // "barcode" field.
  String? _barcode;
  String get barcode => _barcode ?? '';
  bool hasBarcode() => _barcode != null;

  // "hsncode" field.
  int? _hsncode;
  int get hsncode => _hsncode ?? 0;
  bool hasHsncode() => _hsncode != null;

  // "searchcode" field.
  int? _searchcode;
  int get searchcode => _searchcode ?? 0;
  bool hasSearchcode() => _searchcode != null;

  // "shortName" field.
  String? _shortName;
  String get shortName => _shortName ?? '';
  bool hasShortName() => _shortName != null;

  // "weightable" field.
  bool? _weightable;
  bool get weightable => _weightable ?? false;
  bool hasWeightable() => _weightable != null;

  // "stockable" field.
  bool? _stockable;
  bool get stockable => _stockable ?? false;
  bool hasStockable() => _stockable != null;

  // "discountPer" field.
  double? _discountPer;
  double get discountPer => _discountPer ?? 0.0;
  bool hasDiscountPer() => _discountPer != null;

  // "discountAmt" field.
  double? _discountAmt;
  double get discountAmt => _discountAmt ?? 0.0;
  bool hasDiscountAmt() => _discountAmt != null;

  // "productMasterRef" field.
  DocumentReference? _productMasterRef;
  DocumentReference? get productMasterRef => _productMasterRef;
  bool hasProductMasterRef() => _productMasterRef != null;

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "subCategoryRef" field.
  DocumentReference? _subCategoryRef;
  DocumentReference? get subCategoryRef => _subCategoryRef;
  bool hasSubCategoryRef() => _subCategoryRef != null;

  // "type" field.
  int? _type;
  int get type => _type ?? 0;
  bool hasType() => _type != null;

  // "recipeRef" field.
  DocumentReference? _recipeRef;
  DocumentReference? get recipeRef => _recipeRef;
  bool hasRecipeRef() => _recipeRef != null;

  // "serviceOutletRef" field.
  DocumentReference? _serviceOutletRef;
  DocumentReference? get serviceOutletRef => _serviceOutletRef;
  bool hasServiceOutletRef() => _serviceOutletRef != null;

  // "stock" field.
  int? _stock;
  int get stock => _stock ?? 0;
  bool hasStock() => _stock != null;

  // "delliveryChrg" field.
  double? _delliveryChrg;
  double get delliveryChrg => _delliveryChrg ?? 0.0;
  bool hasDelliveryChrg() => _delliveryChrg != null;

  // "serviceOutletDefault" field.
  String? _serviceOutletDefault;
  String get serviceOutletDefault => _serviceOutletDefault ?? '';
  bool hasServiceOutletDefault() => _serviceOutletDefault != null;

  // "unitRefId" field.
  String? _unitRefId;
  String get unitRefId => _unitRefId ?? '';
  bool hasUnitRefId() => _unitRefId != null;

  // "categoryRefId" field.
  String? _categoryRefId;
  String get categoryRefId => _categoryRefId ?? '';
  bool hasCategoryRefId() => _categoryRefId != null;

  // "subCategoryRefId" field.
  String? _subCategoryRefId;
  String get subCategoryRefId => _subCategoryRefId ?? '';
  bool hasSubCategoryRefId() => _subCategoryRefId != null;

  // "taxRefId" field.
  String? _taxRefId;
  String get taxRefId => _taxRefId ?? '';
  bool hasTaxRefId() => _taxRefId != null;

  // "serviceRefId" field.
  String? _serviceRefId;
  String get serviceRefId => _serviceRefId ?? '';
  bool hasServiceRefId() => _serviceRefId != null;

  // "leadTime" field.
  String? _leadTime;
  String get leadTime => _leadTime ?? '';
  bool hasLeadTime() => _leadTime != null;

  // "recipeId" field.
  String? _recipeId;
  String get recipeId => _recipeId ?? '';
  bool hasRecipeId() => _recipeId != null;

  // "isDeleted" field.
  bool? _isDeleted;
  bool get isDeleted => _isDeleted ?? false;
  bool hasIsDeleted() => _isDeleted != null;

  // "costPrice" field.
  double? _costPrice;
  double get costPrice => _costPrice ?? 0.0;
  bool hasCostPrice() => _costPrice != null;

  // "active" field.
  bool? _active;
  bool get active => _active ?? false;
  bool hasActive() => _active != null;

  // "selected" field.
  bool? _selected;
  bool get selected => _selected ?? false;
  bool hasSelected() => _selected != null;

  // "taxIndex" field.
  int? _taxIndex;
  int get taxIndex => _taxIndex ?? 0;
  bool hasTaxIndex() => _taxIndex != null;

  // "unitId" field.
  int? _unitId;
  int get unitId => _unitId ?? 0;
  bool hasUnitId() => _unitId != null;

  // "currentStock" field.
  double? _currentStock;
  double get currentStock => _currentStock ?? 0.0;
  bool hasCurrentStock() => _currentStock != null;

  // "cess" field.
  double? _cess;
  double get cess => _cess ?? 0.0;
  bool hasCess() => _cess != null;

  // "dateTime" field.
  DateTime? _dateTime;
  DateTime? get dateTime => _dateTime;
  bool hasDateTime() => _dateTime != null;

  // "discount" field.
  double? _discount;
  double get discount => _discount ?? 0.0;
  bool hasDiscount() => _discount != null;

  // "keyCount" field.
  int? _keyCount;
  int get keyCount => _keyCount ?? 0;
  bool hasKeyCount() => _keyCount != null;

  // "onlinePrice" field.
  double? _onlinePrice;
  double get onlinePrice => _onlinePrice ?? 0.0;
  bool hasOnlinePrice() => _onlinePrice != null;

  // "onlineSynced" field.
  bool? _onlineSynced;
  bool get onlineSynced => _onlineSynced ?? false;
  bool hasOnlineSynced() => _onlineSynced != null;

  // "priceTable" field.
  String? _priceTable;
  String get priceTable => _priceTable ?? '';
  bool hasPriceTable() => _priceTable != null;

  // "kitchenId" field.
  String? _kitchenId;
  String get kitchenId => _kitchenId ?? '';
  bool hasKitchenId() => _kitchenId != null;

  // "gstAmt" field.
  double? _gstAmt;
  double get gstAmt => _gstAmt ?? 0.0;
  bool hasGstAmt() => _gstAmt != null;

  // "gstPer" field.
  String? _gstPer;
  String get gstPer => _gstPer ?? '';
  bool hasGstPer() => _gstPer != null;

  // "netTotal" field.
  double? _netTotal;
  double get netTotal => _netTotal ?? 0.0;
  bool hasNetTotal() => _netTotal != null;

  // "isDealer" field.
  bool? _isDealer;
  bool get isDealer => _isDealer ?? false;
  bool hasIsDealer() => _isDealer != null;

  // "inclusiveGST" field.
  bool? _inclusiveGST;
  bool get inclusiveGST => _inclusiveGST ?? false;
  bool hasInclusiveGST() => _inclusiveGST != null;

  // "isEnable" field.
  bool? _isEnable;
  bool get isEnable => _isEnable ?? false;
  bool hasIsEnable() => _isEnable != null;

  // "posSerial" field.
  String? _posSerial;
  String get posSerial => _posSerial ?? '';
  bool hasPosSerial() => _posSerial != null;

  // "posModel" field.
  String? _posModel;
  String get posModel => _posModel ?? '';
  bool hasPosModel() => _posModel != null;

  // "deviceId" field.
  String? _deviceId;
  String get deviceId => _deviceId ?? '';
  bool hasDeviceId() => _deviceId != null;

  // "purchasable" field.
  bool? _purchasable;
  bool get purchasable => _purchasable ?? false;
  bool hasPurchasable() => _purchasable != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _category = snapshotData['category'] as String?;
    _code = castToType<int>(snapshotData['code']);
    _name = snapshotData['name'] as String?;
    _sellingPrice = castToType<double>(snapshotData['sellingPrice']);
    _mrpPrice = castToType<double>(snapshotData['mrpPrice']);
    _purchasePrice = castToType<double>(snapshotData['purchasePrice']);
    _categoryRef = snapshotData['categoryRef'] as DocumentReference?;
    _taxRef = snapshotData['taxRef'] as DocumentReference?;
    _unitRef = snapshotData['unitRef'] as DocumentReference?;
    _serviceRef = snapshotData['serviceRef'] as DocumentReference?;
    _regionalName = snapshotData['regionalName'] as String?;
    _reorderLevel = castToType<int>(snapshotData['reorderLevel']);
    _barcode = snapshotData['barcode'] as String?;
    _hsncode = castToType<int>(snapshotData['hsncode']);
    _searchcode = castToType<int>(snapshotData['searchcode']);
    _shortName = snapshotData['shortName'] as String?;
    _weightable = snapshotData['weightable'] as bool?;
    _stockable = snapshotData['stockable'] as bool?;
    _discountPer = castToType<double>(snapshotData['discountPer']);
    _discountAmt = castToType<double>(snapshotData['discountAmt']);
    _productMasterRef = snapshotData['productMasterRef'] as DocumentReference?;
    _imageUrl = snapshotData['imageUrl'] as String?;
    _subCategoryRef = snapshotData['subCategoryRef'] as DocumentReference?;
    _type = castToType<int>(snapshotData['type']);
    _recipeRef = snapshotData['recipeRef'] as DocumentReference?;
    _serviceOutletRef = snapshotData['serviceOutletRef'] as DocumentReference?;
    _stock = castToType<int>(snapshotData['stock']);
    _delliveryChrg = castToType<double>(snapshotData['delliveryChrg']);
    _serviceOutletDefault = snapshotData['serviceOutletDefault'] as String?;
    _unitRefId = snapshotData['unitRefId'] as String?;
    _categoryRefId = snapshotData['categoryRefId'] as String?;
    _subCategoryRefId = snapshotData['subCategoryRefId'] as String?;
    _taxRefId = snapshotData['taxRefId'] as String?;
    _serviceRefId = snapshotData['serviceRefId'] as String?;
    _leadTime = snapshotData['leadTime'] as String?;
    _recipeId = snapshotData['recipeId'] as String?;
    _isDeleted = snapshotData['isDeleted'] as bool?;
    _costPrice = castToType<double>(snapshotData['costPrice']);
    _active = snapshotData['active'] as bool?;
    _selected = snapshotData['selected'] as bool?;
    _taxIndex = castToType<int>(snapshotData['taxIndex']);
    _unitId = castToType<int>(snapshotData['unitId']);
    _currentStock = castToType<double>(snapshotData['currentStock']);
    _cess = castToType<double>(snapshotData['cess']);
    _dateTime = snapshotData['dateTime'] as DateTime?;
    _discount = castToType<double>(snapshotData['discount']);
    _keyCount = castToType<int>(snapshotData['keyCount']);
    _onlinePrice = castToType<double>(snapshotData['onlinePrice']);
    _onlineSynced = snapshotData['onlineSynced'] as bool?;
    _priceTable = snapshotData['priceTable'] as String?;
    _kitchenId = snapshotData['kitchenId'] as String?;
    _gstAmt = castToType<double>(snapshotData['gstAmt']);
    _gstPer = snapshotData['gstPer'] as String?;
    _netTotal = castToType<double>(snapshotData['netTotal']);
    _isDealer = snapshotData['isDealer'] as bool?;
    _inclusiveGST = snapshotData['inclusiveGST'] as bool?;
    _isEnable = snapshotData['isEnable'] as bool?;
    _posSerial = snapshotData['posSerial'] as String?;
    _posModel = snapshotData['posModel'] as String?;
    _deviceId = snapshotData['deviceId'] as String?;
    _purchasable = snapshotData['purchasable'] as bool?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('PRODUCT')
          : FirebaseFirestore.instance.collectionGroup('PRODUCT');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('PRODUCT').doc(id);

  static Stream<ProductRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductRecord.fromSnapshot(s));

  static Future<ProductRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductRecord.fromSnapshot(s));

  static ProductRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createProductRecordData({
  String? id,
  double? price,
  String? category,
  int? code,
  String? name,
  double? sellingPrice,
  double? mrpPrice,
  double? purchasePrice,
  DocumentReference? categoryRef,
  DocumentReference? taxRef,
  DocumentReference? unitRef,
  DocumentReference? serviceRef,
  String? regionalName,
  int? reorderLevel,
  String? barcode,
  int? hsncode,
  int? searchcode,
  String? shortName,
  bool? weightable,
  bool? stockable,
  double? discountPer,
  double? discountAmt,
  DocumentReference? productMasterRef,
  String? imageUrl,
  DocumentReference? subCategoryRef,
  int? type,
  DocumentReference? recipeRef,
  DocumentReference? serviceOutletRef,
  int? stock,
  double? delliveryChrg,
  String? serviceOutletDefault,
  String? unitRefId,
  String? categoryRefId,
  String? subCategoryRefId,
  String? taxRefId,
  String? serviceRefId,
  String? leadTime,
  String? recipeId,
  bool? isDeleted,
  double? costPrice,
  bool? active,
  bool? selected,
  int? taxIndex,
  int? unitId,
  double? currentStock,
  double? cess,
  DateTime? dateTime,
  double? discount,
  int? keyCount,
  double? onlinePrice,
  bool? onlineSynced,
  String? priceTable,
  String? kitchenId,
  double? gstAmt,
  String? gstPer,
  double? netTotal,
  bool? isDealer,
  bool? inclusiveGST,
  bool? isEnable,
  String? posSerial,
  String? posModel,
  String? deviceId,
  bool? purchasable,
  DateTime? updatedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'price': price,
      'category': category,
      'code': code,
      'name': name,
      'sellingPrice': sellingPrice,
      'mrpPrice': mrpPrice,
      'purchasePrice': purchasePrice,
      'categoryRef': categoryRef,
      'taxRef': taxRef,
      'unitRef': unitRef,
      'serviceRef': serviceRef,
      'regionalName': regionalName,
      'reorderLevel': reorderLevel,
      'barcode': barcode,
      'hsncode': hsncode,
      'searchcode': searchcode,
      'shortName': shortName,
      'weightable': weightable,
      'stockable': stockable,
      'discountPer': discountPer,
      'discountAmt': discountAmt,
      'productMasterRef': productMasterRef,
      'imageUrl': imageUrl,
      'subCategoryRef': subCategoryRef,
      'type': type,
      'recipeRef': recipeRef,
      'serviceOutletRef': serviceOutletRef,
      'stock': stock,
      'delliveryChrg': delliveryChrg,
      'serviceOutletDefault': serviceOutletDefault,
      'unitRefId': unitRefId,
      'categoryRefId': categoryRefId,
      'subCategoryRefId': subCategoryRefId,
      'taxRefId': taxRefId,
      'serviceRefId': serviceRefId,
      'leadTime': leadTime,
      'recipeId': recipeId,
      'isDeleted': isDeleted,
      'costPrice': costPrice,
      'active': active,
      'selected': selected,
      'taxIndex': taxIndex,
      'unitId': unitId,
      'currentStock': currentStock,
      'cess': cess,
      'dateTime': dateTime,
      'discount': discount,
      'keyCount': keyCount,
      'onlinePrice': onlinePrice,
      'onlineSynced': onlineSynced,
      'priceTable': priceTable,
      'kitchenId': kitchenId,
      'gstAmt': gstAmt,
      'gstPer': gstPer,
      'netTotal': netTotal,
      'isDealer': isDealer,
      'inclusiveGST': inclusiveGST,
      'isEnable': isEnable,
      'posSerial': posSerial,
      'posModel': posModel,
      'deviceId': deviceId,
      'purchasable': purchasable,
      'updatedAt': updatedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductRecordDocumentEquality implements Equality<ProductRecord> {
  const ProductRecordDocumentEquality();

  @override
  bool equals(ProductRecord? e1, ProductRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.price == e2?.price &&
        e1?.category == e2?.category &&
        e1?.code == e2?.code &&
        e1?.name == e2?.name &&
        e1?.sellingPrice == e2?.sellingPrice &&
        e1?.mrpPrice == e2?.mrpPrice &&
        e1?.purchasePrice == e2?.purchasePrice &&
        e1?.categoryRef == e2?.categoryRef &&
        e1?.taxRef == e2?.taxRef &&
        e1?.unitRef == e2?.unitRef &&
        e1?.serviceRef == e2?.serviceRef &&
        e1?.regionalName == e2?.regionalName &&
        e1?.reorderLevel == e2?.reorderLevel &&
        e1?.barcode == e2?.barcode &&
        e1?.hsncode == e2?.hsncode &&
        e1?.searchcode == e2?.searchcode &&
        e1?.shortName == e2?.shortName &&
        e1?.weightable == e2?.weightable &&
        e1?.stockable == e2?.stockable &&
        e1?.discountPer == e2?.discountPer &&
        e1?.discountAmt == e2?.discountAmt &&
        e1?.productMasterRef == e2?.productMasterRef &&
        e1?.imageUrl == e2?.imageUrl &&
        e1?.subCategoryRef == e2?.subCategoryRef &&
        e1?.type == e2?.type &&
        e1?.recipeRef == e2?.recipeRef &&
        e1?.serviceOutletRef == e2?.serviceOutletRef &&
        e1?.stock == e2?.stock &&
        e1?.delliveryChrg == e2?.delliveryChrg &&
        e1?.serviceOutletDefault == e2?.serviceOutletDefault &&
        e1?.unitRefId == e2?.unitRefId &&
        e1?.categoryRefId == e2?.categoryRefId &&
        e1?.subCategoryRefId == e2?.subCategoryRefId &&
        e1?.taxRefId == e2?.taxRefId &&
        e1?.serviceRefId == e2?.serviceRefId &&
        e1?.leadTime == e2?.leadTime &&
        e1?.recipeId == e2?.recipeId &&
        e1?.isDeleted == e2?.isDeleted &&
        e1?.costPrice == e2?.costPrice &&
        e1?.active == e2?.active &&
        e1?.selected == e2?.selected &&
        e1?.taxIndex == e2?.taxIndex &&
        e1?.unitId == e2?.unitId &&
        e1?.currentStock == e2?.currentStock &&
        e1?.cess == e2?.cess &&
        e1?.dateTime == e2?.dateTime &&
        e1?.discount == e2?.discount &&
        e1?.keyCount == e2?.keyCount &&
        e1?.onlinePrice == e2?.onlinePrice &&
        e1?.onlineSynced == e2?.onlineSynced &&
        e1?.priceTable == e2?.priceTable &&
        e1?.kitchenId == e2?.kitchenId &&
        e1?.gstAmt == e2?.gstAmt &&
        e1?.gstPer == e2?.gstPer &&
        e1?.netTotal == e2?.netTotal &&
        e1?.isDealer == e2?.isDealer &&
        e1?.inclusiveGST == e2?.inclusiveGST &&
        e1?.isEnable == e2?.isEnable &&
        e1?.posSerial == e2?.posSerial &&
        e1?.posModel == e2?.posModel &&
        e1?.deviceId == e2?.deviceId &&
        e1?.purchasable == e2?.purchasable &&
        e1?.updatedAt == e2?.updatedAt;
  }

  @override
  int hash(ProductRecord? e) => const ListEquality().hash([
        e?.id,
        e?.price,
        e?.category,
        e?.code,
        e?.name,
        e?.sellingPrice,
        e?.mrpPrice,
        e?.purchasePrice,
        e?.categoryRef,
        e?.taxRef,
        e?.unitRef,
        e?.serviceRef,
        e?.regionalName,
        e?.reorderLevel,
        e?.barcode,
        e?.hsncode,
        e?.searchcode,
        e?.shortName,
        e?.weightable,
        e?.stockable,
        e?.discountPer,
        e?.discountAmt,
        e?.productMasterRef,
        e?.imageUrl,
        e?.subCategoryRef,
        e?.type,
        e?.recipeRef,
        e?.serviceOutletRef,
        e?.stock,
        e?.delliveryChrg,
        e?.serviceOutletDefault,
        e?.unitRefId,
        e?.categoryRefId,
        e?.subCategoryRefId,
        e?.taxRefId,
        e?.serviceRefId,
        e?.leadTime,
        e?.recipeId,
        e?.isDeleted,
        e?.costPrice,
        e?.active,
        e?.selected,
        e?.taxIndex,
        e?.unitId,
        e?.currentStock,
        e?.cess,
        e?.dateTime,
        e?.discount,
        e?.keyCount,
        e?.onlinePrice,
        e?.onlineSynced,
        e?.priceTable,
        e?.kitchenId,
        e?.gstAmt,
        e?.gstPer,
        e?.netTotal,
        e?.isDealer,
        e?.inclusiveGST,
        e?.isEnable,
        e?.posSerial,
        e?.posModel,
        e?.deviceId,
        e?.purchasable,
        e?.updatedAt
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductRecord;
}
