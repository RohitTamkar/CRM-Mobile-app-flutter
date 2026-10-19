// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecipeItemListStruct extends FFFirebaseStruct {
  RecipeItemListStruct({
    String? name,
    double? price,
    double? quantity,
    String? catId,
    String? taxId,
    int? currentStock,
    bool? stockable,
    String? id,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _price = price,
        _quantity = quantity,
        _catId = catId,
        _taxId = taxId,
        _currentStock = currentStock,
        _stockable = stockable,
        _id = id,
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

  // "catId" field.
  String? _catId;
  String get catId => _catId ?? '';
  set catId(String? val) => _catId = val;

  bool hasCatId() => _catId != null;

  // "taxId" field.
  String? _taxId;
  String get taxId => _taxId ?? '';
  set taxId(String? val) => _taxId = val;

  bool hasTaxId() => _taxId != null;

  // "currentStock" field.
  int? _currentStock;
  int get currentStock => _currentStock ?? 0;
  set currentStock(int? val) => _currentStock = val;

  void incrementCurrentStock(int amount) =>
      currentStock = currentStock + amount;

  bool hasCurrentStock() => _currentStock != null;

  // "stockable" field.
  bool? _stockable;
  bool get stockable => _stockable ?? false;
  set stockable(bool? val) => _stockable = val;

  bool hasStockable() => _stockable != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  static RecipeItemListStruct fromMap(Map<String, dynamic> data) =>
      RecipeItemListStruct(
        name: data['name'] as String?,
        price: castToType<double>(data['price']),
        quantity: castToType<double>(data['quantity']),
        catId: data['catId'] as String?,
        taxId: data['taxId'] as String?,
        currentStock: castToType<int>(data['currentStock']),
        stockable: data['stockable'] as bool?,
        id: data['id'] as String?,
      );

  static RecipeItemListStruct? maybeFromMap(dynamic data) => data is Map
      ? RecipeItemListStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'price': _price,
        'quantity': _quantity,
        'catId': _catId,
        'taxId': _taxId,
        'currentStock': _currentStock,
        'stockable': _stockable,
        'id': _id,
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
        'catId': serializeParam(
          _catId,
          ParamType.String,
        ),
        'taxId': serializeParam(
          _taxId,
          ParamType.String,
        ),
        'currentStock': serializeParam(
          _currentStock,
          ParamType.int,
        ),
        'stockable': serializeParam(
          _stockable,
          ParamType.bool,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
      }.withoutNulls;

  static RecipeItemListStruct fromSerializableMap(Map<String, dynamic> data) =>
      RecipeItemListStruct(
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
        catId: deserializeParam(
          data['catId'],
          ParamType.String,
          false,
        ),
        taxId: deserializeParam(
          data['taxId'],
          ParamType.String,
          false,
        ),
        currentStock: deserializeParam(
          data['currentStock'],
          ParamType.int,
          false,
        ),
        stockable: deserializeParam(
          data['stockable'],
          ParamType.bool,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RecipeItemListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RecipeItemListStruct &&
        name == other.name &&
        price == other.price &&
        quantity == other.quantity &&
        catId == other.catId &&
        taxId == other.taxId &&
        currentStock == other.currentStock &&
        stockable == other.stockable &&
        id == other.id;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([name, price, quantity, catId, taxId, currentStock, stockable, id]);
}

RecipeItemListStruct createRecipeItemListStruct({
  String? name,
  double? price,
  double? quantity,
  String? catId,
  String? taxId,
  int? currentStock,
  bool? stockable,
  String? id,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RecipeItemListStruct(
      name: name,
      price: price,
      quantity: quantity,
      catId: catId,
      taxId: taxId,
      currentStock: currentStock,
      stockable: stockable,
      id: id,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RecipeItemListStruct? updateRecipeItemListStruct(
  RecipeItemListStruct? recipeItemList, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    recipeItemList
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRecipeItemListStructData(
  Map<String, dynamic> firestoreData,
  RecipeItemListStruct? recipeItemList,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (recipeItemList == null) {
    return;
  }
  if (recipeItemList.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && recipeItemList.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final recipeItemListData =
      getRecipeItemListFirestoreData(recipeItemList, forFieldValue);
  final nestedData =
      recipeItemListData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = recipeItemList.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRecipeItemListFirestoreData(
  RecipeItemListStruct? recipeItemList, [
  bool forFieldValue = false,
]) {
  if (recipeItemList == null) {
    return {};
  }
  final firestoreData = mapToFirestore(recipeItemList.toMap());

  // Add any Firestore field values
  mapToFirestore(recipeItemList.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRecipeItemListListFirestoreData(
  List<RecipeItemListStruct>? recipeItemLists,
) =>
    recipeItemLists
        ?.map((e) => getRecipeItemListFirestoreData(e, true))
        .toList() ??
    [];
