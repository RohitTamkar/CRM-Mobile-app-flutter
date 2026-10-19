// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SelltemListStruct extends FFFirebaseStruct {
  SelltemListStruct({
    String? name,
    double? price,
    double? quantity,
    double? tax,
    int? code,
    String? id,
    String? catId,
    bool? isDeletedItem,
    double? total,
    double? disPer,
    double? disAmt,
    double? taxPer,
    double? taxAmt,
    String? taxId,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _price = price,
        _quantity = quantity,
        _tax = tax,
        _code = code,
        _id = id,
        _catId = catId,
        _isDeletedItem = isDeletedItem,
        _total = total,
        _disPer = disPer,
        _disAmt = disAmt,
        _taxPer = taxPer,
        _taxAmt = taxAmt,
        _taxId = taxId,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  void incrementPrice(double amount) => price = price + amount;

  bool hasPrice() => _price != null;

  // "quantity" field.
  double? _quantity;
  double get quantity => _quantity ?? 0.0;
  set quantity(double? val) => _quantity = val;

  void incrementQuantity(double amount) => quantity = quantity + amount;

  bool hasQuantity() => _quantity != null;

  // "tax" field.
  double? _tax;
  double get tax => _tax ?? 0.0;
  set tax(double? val) => _tax = val;

  void incrementTax(double amount) => tax = tax + amount;

  bool hasTax() => _tax != null;

  // "code" field.
  int? _code;
  int get code => _code ?? 0;
  set code(int? val) => _code = val;

  void incrementCode(int amount) => code = code + amount;

  bool hasCode() => _code != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "catId" field.
  String? _catId;
  String get catId => _catId ?? '';
  set catId(String? val) => _catId = val;

  bool hasCatId() => _catId != null;

  // "isDeletedItem" field.
  bool? _isDeletedItem;
  bool get isDeletedItem => _isDeletedItem ?? false;
  set isDeletedItem(bool? val) => _isDeletedItem = val;

  bool hasIsDeletedItem() => _isDeletedItem != null;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  set total(double? val) => _total = val;

  void incrementTotal(double amount) => total = total + amount;

  bool hasTotal() => _total != null;

  // "disPer" field.
  double? _disPer;
  double get disPer => _disPer ?? 0.0;
  set disPer(double? val) => _disPer = val;

  void incrementDisPer(double amount) => disPer = disPer + amount;

  bool hasDisPer() => _disPer != null;

  // "disAmt" field.
  double? _disAmt;
  double get disAmt => _disAmt ?? 0.0;
  set disAmt(double? val) => _disAmt = val;

  void incrementDisAmt(double amount) => disAmt = disAmt + amount;

  bool hasDisAmt() => _disAmt != null;

  // "taxPer" field.
  double? _taxPer;
  double get taxPer => _taxPer ?? 0.0;
  set taxPer(double? val) => _taxPer = val;

  void incrementTaxPer(double amount) => taxPer = taxPer + amount;

  bool hasTaxPer() => _taxPer != null;

  // "taxAmt" field.
  double? _taxAmt;
  double get taxAmt => _taxAmt ?? 0.0;
  set taxAmt(double? val) => _taxAmt = val;

  void incrementTaxAmt(double amount) => taxAmt = taxAmt + amount;

  bool hasTaxAmt() => _taxAmt != null;

  // "taxId" field.
  String? _taxId;
  String get taxId => _taxId ?? '';
  set taxId(String? val) => _taxId = val;

  bool hasTaxId() => _taxId != null;

  static SelltemListStruct fromMap(Map<String, dynamic> data) =>
      SelltemListStruct(
        name: data['name'] as String?,
        price: castToType<double>(data['price']),
        quantity: castToType<double>(data['quantity']),
        tax: castToType<double>(data['tax']),
        code: castToType<int>(data['code']),
        id: data['id'] as String?,
        catId: data['catId'] as String?,
        isDeletedItem: data['isDeletedItem'] as bool?,
        total: castToType<double>(data['total']),
        disPer: castToType<double>(data['disPer']),
        disAmt: castToType<double>(data['disAmt']),
        taxPer: castToType<double>(data['taxPer']),
        taxAmt: castToType<double>(data['taxAmt']),
        taxId: data['taxId'] as String?,
      );

  static SelltemListStruct? maybeFromMap(dynamic data) => data is Map
      ? SelltemListStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'price': _price,
        'quantity': _quantity,
        'tax': _tax,
        'code': _code,
        'id': _id,
        'catId': _catId,
        'isDeletedItem': _isDeletedItem,
        'total': _total,
        'disPer': _disPer,
        'disAmt': _disAmt,
        'taxPer': _taxPer,
        'taxAmt': _taxAmt,
        'taxId': _taxId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.double,
        ),
        'tax': serializeParam(
          _tax,
          ParamType.double,
        ),
        'code': serializeParam(
          _code,
          ParamType.int,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'catId': serializeParam(
          _catId,
          ParamType.String,
        ),
        'isDeletedItem': serializeParam(
          _isDeletedItem,
          ParamType.bool,
        ),
        'total': serializeParam(
          _total,
          ParamType.double,
        ),
        'disPer': serializeParam(
          _disPer,
          ParamType.double,
        ),
        'disAmt': serializeParam(
          _disAmt,
          ParamType.double,
        ),
        'taxPer': serializeParam(
          _taxPer,
          ParamType.double,
        ),
        'taxAmt': serializeParam(
          _taxAmt,
          ParamType.double,
        ),
        'taxId': serializeParam(
          _taxId,
          ParamType.String,
        ),
      }.withoutNulls;

  static SelltemListStruct fromSerializableMap(Map<String, dynamic> data) =>
      SelltemListStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.double,
          false,
        ),
        tax: deserializeParam(
          data['tax'],
          ParamType.double,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.int,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        catId: deserializeParam(
          data['catId'],
          ParamType.String,
          false,
        ),
        isDeletedItem: deserializeParam(
          data['isDeletedItem'],
          ParamType.bool,
          false,
        ),
        total: deserializeParam(
          data['total'],
          ParamType.double,
          false,
        ),
        disPer: deserializeParam(
          data['disPer'],
          ParamType.double,
          false,
        ),
        disAmt: deserializeParam(
          data['disAmt'],
          ParamType.double,
          false,
        ),
        taxPer: deserializeParam(
          data['taxPer'],
          ParamType.double,
          false,
        ),
        taxAmt: deserializeParam(
          data['taxAmt'],
          ParamType.double,
          false,
        ),
        taxId: deserializeParam(
          data['taxId'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SelltemListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SelltemListStruct &&
        name == other.name &&
        price == other.price &&
        quantity == other.quantity &&
        tax == other.tax &&
        code == other.code &&
        id == other.id &&
        catId == other.catId &&
        isDeletedItem == other.isDeletedItem &&
        total == other.total &&
        disPer == other.disPer &&
        disAmt == other.disAmt &&
        taxPer == other.taxPer &&
        taxAmt == other.taxAmt &&
        taxId == other.taxId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        name,
        price,
        quantity,
        tax,
        code,
        id,
        catId,
        isDeletedItem,
        total,
        disPer,
        disAmt,
        taxPer,
        taxAmt,
        taxId
      ]);
}

SelltemListStruct createSelltemListStruct({
  String? name,
  double? price,
  double? quantity,
  double? tax,
  int? code,
  String? id,
  String? catId,
  bool? isDeletedItem,
  double? total,
  double? disPer,
  double? disAmt,
  double? taxPer,
  double? taxAmt,
  String? taxId,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SelltemListStruct(
      name: name,
      price: price,
      quantity: quantity,
      tax: tax,
      code: code,
      id: id,
      catId: catId,
      isDeletedItem: isDeletedItem,
      total: total,
      disPer: disPer,
      disAmt: disAmt,
      taxPer: taxPer,
      taxAmt: taxAmt,
      taxId: taxId,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SelltemListStruct? updateSelltemListStruct(
  SelltemListStruct? selltemList, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    selltemList
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSelltemListStructData(
  Map<String, dynamic> firestoreData,
  SelltemListStruct? selltemList,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (selltemList == null) {
    return;
  }
  if (selltemList.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && selltemList.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final selltemListData =
      getSelltemListFirestoreData(selltemList, forFieldValue);
  final nestedData =
      selltemListData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = selltemList.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSelltemListFirestoreData(
  SelltemListStruct? selltemList, [
  bool forFieldValue = false,
]) {
  if (selltemList == null) {
    return {};
  }
  final firestoreData = mapToFirestore(selltemList.toMap());

  // Add any Firestore field values
  mapToFirestore(selltemList.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSelltemListListFirestoreData(
  List<SelltemListStruct>? selltemLists,
) =>
    selltemLists?.map((e) => getSelltemListFirestoreData(e, true)).toList() ??
    [];
