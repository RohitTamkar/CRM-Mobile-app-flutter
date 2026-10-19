import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SubCategoryRecord extends FirestoreRecord {
  SubCategoryRecord._(
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

  // "code" field.
  int? _code;
  int get code => _code ?? 0;
  bool hasCode() => _code != null;

  // "active" field.
  bool? _active;
  bool get active => _active ?? false;
  bool hasActive() => _active != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "regionalName" field.
  String? _regionalName;
  String get regionalName => _regionalName ?? '';
  bool hasRegionalName() => _regionalName != null;

  // "categoryMasterRef" field.
  DocumentReference? _categoryMasterRef;
  DocumentReference? get categoryMasterRef => _categoryMasterRef;
  bool hasCategoryMasterRef() => _categoryMasterRef != null;

  // "updatedDate" field.
  int? _updatedDate;
  int get updatedDate => _updatedDate ?? 0;
  bool hasUpdatedDate() => _updatedDate != null;

  // "updatedBy" field.
  DocumentReference? _updatedBy;
  DocumentReference? get updatedBy => _updatedBy;
  bool hasUpdatedBy() => _updatedBy != null;

  // "createdBy" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  // "createdDate" field.
  int? _createdDate;
  int get createdDate => _createdDate ?? 0;
  bool hasCreatedDate() => _createdDate != null;

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _name = snapshotData['name'] as String?;
    _code = castToType<int>(snapshotData['code']);
    _active = snapshotData['active'] as bool?;
    _image = snapshotData['image'] as String?;
    _regionalName = snapshotData['regionalName'] as String?;
    _categoryMasterRef =
        snapshotData['categoryMasterRef'] as DocumentReference?;
    _updatedDate = castToType<int>(snapshotData['updatedDate']);
    _updatedBy = snapshotData['updatedBy'] as DocumentReference?;
    _createdBy = snapshotData['createdBy'] as DocumentReference?;
    _createdDate = castToType<int>(snapshotData['createdDate']);
    _imageUrl = snapshotData['imageUrl'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SUB_CATEGORY');

  static Stream<SubCategoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SubCategoryRecord.fromSnapshot(s));

  static Future<SubCategoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SubCategoryRecord.fromSnapshot(s));

  static SubCategoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SubCategoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SubCategoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SubCategoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SubCategoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SubCategoryRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createSubCategoryRecordData({
  String? id,
  String? name,
  int? code,
  bool? active,
  String? image,
  String? regionalName,
  DocumentReference? categoryMasterRef,
  int? updatedDate,
  DocumentReference? updatedBy,
  DocumentReference? createdBy,
  int? createdDate,
  String? imageUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'name': name,
      'code': code,
      'active': active,
      'image': image,
      'regionalName': regionalName,
      'categoryMasterRef': categoryMasterRef,
      'updatedDate': updatedDate,
      'updatedBy': updatedBy,
      'createdBy': createdBy,
      'createdDate': createdDate,
      'imageUrl': imageUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class SubCategoryRecordDocumentEquality implements Equality<SubCategoryRecord> {
  const SubCategoryRecordDocumentEquality();

  @override
  bool equals(SubCategoryRecord? e1, SubCategoryRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.name == e2?.name &&
        e1?.code == e2?.code &&
        e1?.active == e2?.active &&
        e1?.image == e2?.image &&
        e1?.regionalName == e2?.regionalName &&
        e1?.categoryMasterRef == e2?.categoryMasterRef &&
        e1?.updatedDate == e2?.updatedDate &&
        e1?.updatedBy == e2?.updatedBy &&
        e1?.createdBy == e2?.createdBy &&
        e1?.createdDate == e2?.createdDate &&
        e1?.imageUrl == e2?.imageUrl;
  }

  @override
  int hash(SubCategoryRecord? e) => const ListEquality().hash([
        e?.id,
        e?.name,
        e?.code,
        e?.active,
        e?.image,
        e?.regionalName,
        e?.categoryMasterRef,
        e?.updatedDate,
        e?.updatedBy,
        e?.createdBy,
        e?.createdDate,
        e?.imageUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is SubCategoryRecord;
}
