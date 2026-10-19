import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductMasterRecord extends FirestoreRecord {
  ProductMasterRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "regionalName" field.
  String? _regionalName;
  String get regionalName => _regionalName ?? '';
  bool hasRegionalName() => _regionalName != null;

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "code" field.
  int? _code;
  int get code => _code ?? 0;
  bool hasCode() => _code != null;

  // "hsnCode" field.
  int? _hsnCode;
  int get hsnCode => _hsnCode ?? 0;
  bool hasHsnCode() => _hsnCode != null;

  // "barcode" field.
  String? _barcode;
  String get barcode => _barcode ?? '';
  bool hasBarcode() => _barcode != null;

  // "categoryRef" field.
  DocumentReference? _categoryRef;
  DocumentReference? get categoryRef => _categoryRef;
  bool hasCategoryRef() => _categoryRef != null;

  // "createdBy" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  // "updatedDate" field.
  int? _updatedDate;
  int get updatedDate => _updatedDate ?? 0;
  bool hasUpdatedDate() => _updatedDate != null;

  // "updatedBy" field.
  DocumentReference? _updatedBy;
  DocumentReference? get updatedBy => _updatedBy;
  bool hasUpdatedBy() => _updatedBy != null;

  // "createdDate" field.
  int? _createdDate;
  int get createdDate => _createdDate ?? 0;
  bool hasCreatedDate() => _createdDate != null;

  // "subCategoryRef" field.
  DocumentReference? _subCategoryRef;
  DocumentReference? get subCategoryRef => _subCategoryRef;
  bool hasSubCategoryRef() => _subCategoryRef != null;

  // "type" field.
  int? _type;
  int get type => _type ?? 0;
  bool hasType() => _type != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _name = snapshotData['name'] as String?;
    _regionalName = snapshotData['regionalName'] as String?;
    _imageUrl = snapshotData['imageUrl'] as String?;
    _code = castToType<int>(snapshotData['code']);
    _hsnCode = castToType<int>(snapshotData['hsnCode']);
    _barcode = snapshotData['barcode'] as String?;
    _categoryRef = snapshotData['categoryRef'] as DocumentReference?;
    _createdBy = snapshotData['createdBy'] as DocumentReference?;
    _updatedDate = castToType<int>(snapshotData['updatedDate']);
    _updatedBy = snapshotData['updatedBy'] as DocumentReference?;
    _createdDate = castToType<int>(snapshotData['createdDate']);
    _subCategoryRef = snapshotData['subCategoryRef'] as DocumentReference?;
    _type = castToType<int>(snapshotData['type']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PRODUCT_MASTER');

  static Stream<ProductMasterRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductMasterRecord.fromSnapshot(s));

  static Future<ProductMasterRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductMasterRecord.fromSnapshot(s));

  static ProductMasterRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductMasterRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductMasterRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductMasterRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductMasterRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductMasterRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createProductMasterRecordData({
  String? id,
  String? name,
  String? regionalName,
  String? imageUrl,
  int? code,
  int? hsnCode,
  String? barcode,
  DocumentReference? categoryRef,
  DocumentReference? createdBy,
  int? updatedDate,
  DocumentReference? updatedBy,
  int? createdDate,
  DocumentReference? subCategoryRef,
  int? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'name': name,
      'regionalName': regionalName,
      'imageUrl': imageUrl,
      'code': code,
      'hsnCode': hsnCode,
      'barcode': barcode,
      'categoryRef': categoryRef,
      'createdBy': createdBy,
      'updatedDate': updatedDate,
      'updatedBy': updatedBy,
      'createdDate': createdDate,
      'subCategoryRef': subCategoryRef,
      'type': type,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductMasterRecordDocumentEquality
    implements Equality<ProductMasterRecord> {
  const ProductMasterRecordDocumentEquality();

  @override
  bool equals(ProductMasterRecord? e1, ProductMasterRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.name == e2?.name &&
        e1?.regionalName == e2?.regionalName &&
        e1?.imageUrl == e2?.imageUrl &&
        e1?.code == e2?.code &&
        e1?.hsnCode == e2?.hsnCode &&
        e1?.barcode == e2?.barcode &&
        e1?.categoryRef == e2?.categoryRef &&
        e1?.createdBy == e2?.createdBy &&
        e1?.updatedDate == e2?.updatedDate &&
        e1?.updatedBy == e2?.updatedBy &&
        e1?.createdDate == e2?.createdDate &&
        e1?.subCategoryRef == e2?.subCategoryRef &&
        e1?.type == e2?.type;
  }

  @override
  int hash(ProductMasterRecord? e) => const ListEquality().hash([
        e?.id,
        e?.name,
        e?.regionalName,
        e?.imageUrl,
        e?.code,
        e?.hsnCode,
        e?.barcode,
        e?.categoryRef,
        e?.createdBy,
        e?.updatedDate,
        e?.updatedBy,
        e?.createdDate,
        e?.subCategoryRef,
        e?.type
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductMasterRecord;
}
