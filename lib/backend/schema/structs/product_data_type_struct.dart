// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductDataTypeStruct extends FFFirebaseStruct {
  ProductDataTypeStruct({
    String? id,
    String? category,
    String? name,
    DocumentReference? categoryRef,
    bool? isEnable,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _category = category,
        _name = name,
        _categoryRef = categoryRef,
        _isEnable = isEnable,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "categoryRef" field.
  DocumentReference? _categoryRef;
  DocumentReference? get categoryRef => _categoryRef;
  set categoryRef(DocumentReference? val) => _categoryRef = val;

  bool hasCategoryRef() => _categoryRef != null;

  // "isEnable" field.
  bool? _isEnable;
  bool get isEnable => _isEnable ?? false;
  set isEnable(bool? val) => _isEnable = val;

  bool hasIsEnable() => _isEnable != null;

  static ProductDataTypeStruct fromMap(Map<String, dynamic> data) =>
      ProductDataTypeStruct(
        id: data['id'] as String?,
        category: data['category'] as String?,
        name: data['name'] as String?,
        categoryRef: data['categoryRef'] as DocumentReference?,
        isEnable: data['isEnable'] as bool?,
      );

  static ProductDataTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductDataTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'category': _category,
        'name': _name,
        'categoryRef': _categoryRef,
        'isEnable': _isEnable,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'categoryRef': serializeParam(
          _categoryRef,
          ParamType.DocumentReference,
        ),
        'isEnable': serializeParam(
          _isEnable,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ProductDataTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductDataTypeStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        categoryRef: deserializeParam(
          data['categoryRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['OUTLET', 'CATEGORY'],
        ),
        isEnable: deserializeParam(
          data['isEnable'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ProductDataTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductDataTypeStruct &&
        id == other.id &&
        category == other.category &&
        name == other.name &&
        categoryRef == other.categoryRef &&
        isEnable == other.isEnable;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, category, name, categoryRef, isEnable]);
}

ProductDataTypeStruct createProductDataTypeStruct({
  String? id,
  String? category,
  String? name,
  DocumentReference? categoryRef,
  bool? isEnable,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProductDataTypeStruct(
      id: id,
      category: category,
      name: name,
      categoryRef: categoryRef,
      isEnable: isEnable,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProductDataTypeStruct? updateProductDataTypeStruct(
  ProductDataTypeStruct? productDataType, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    productDataType
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProductDataTypeStructData(
  Map<String, dynamic> firestoreData,
  ProductDataTypeStruct? productDataType,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (productDataType == null) {
    return;
  }
  if (productDataType.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && productDataType.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final productDataTypeData =
      getProductDataTypeFirestoreData(productDataType, forFieldValue);
  final nestedData =
      productDataTypeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = productDataType.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProductDataTypeFirestoreData(
  ProductDataTypeStruct? productDataType, [
  bool forFieldValue = false,
]) {
  if (productDataType == null) {
    return {};
  }
  final firestoreData = mapToFirestore(productDataType.toMap());

  // Add any Firestore field values
  mapToFirestore(productDataType.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProductDataTypeListFirestoreData(
  List<ProductDataTypeStruct>? productDataTypes,
) =>
    productDataTypes
        ?.map((e) => getProductDataTypeFirestoreData(e, true))
        .toList() ??
    [];
