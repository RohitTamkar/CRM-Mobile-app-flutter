import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoryMasterRecord extends FirestoreRecord {
  CategoryMasterRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "createdDate" field.
  int? _createdDate;
  int get createdDate => _createdDate ?? 0;
  bool hasCreatedDate() => _createdDate != null;

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

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "regionalName" field.
  String? _regionalName;
  String get regionalName => _regionalName ?? '';
  bool hasRegionalName() => _regionalName != null;

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

  void _initializeFields() {
    _createdDate = castToType<int>(snapshotData['createdDate']);
    _id = snapshotData['id'] as String?;
    _name = snapshotData['name'] as String?;
    _code = castToType<int>(snapshotData['code']);
    _active = snapshotData['active'] as bool?;
    _imageUrl = snapshotData['imageUrl'] as String?;
    _regionalName = snapshotData['regionalName'] as String?;
    _updatedDate = castToType<int>(snapshotData['updatedDate']);
    _updatedBy = snapshotData['updatedBy'] as DocumentReference?;
    _createdBy = snapshotData['createdBy'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CATEGORY_MASTER');

  static Stream<CategoryMasterRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CategoryMasterRecord.fromSnapshot(s));

  static Future<CategoryMasterRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CategoryMasterRecord.fromSnapshot(s));

  static CategoryMasterRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CategoryMasterRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CategoryMasterRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CategoryMasterRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CategoryMasterRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CategoryMasterRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createCategoryMasterRecordData({
  int? createdDate,
  String? id,
  String? name,
  int? code,
  bool? active,
  String? imageUrl,
  String? regionalName,
  int? updatedDate,
  DocumentReference? updatedBy,
  DocumentReference? createdBy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdDate': createdDate,
      'id': id,
      'name': name,
      'code': code,
      'active': active,
      'imageUrl': imageUrl,
      'regionalName': regionalName,
      'updatedDate': updatedDate,
      'updatedBy': updatedBy,
      'createdBy': createdBy,
    }.withoutNulls,
  );

  return firestoreData;
}

class CategoryMasterRecordDocumentEquality
    implements Equality<CategoryMasterRecord> {
  const CategoryMasterRecordDocumentEquality();

  @override
  bool equals(CategoryMasterRecord? e1, CategoryMasterRecord? e2) {
    return e1?.createdDate == e2?.createdDate &&
        e1?.id == e2?.id &&
        e1?.name == e2?.name &&
        e1?.code == e2?.code &&
        e1?.active == e2?.active &&
        e1?.imageUrl == e2?.imageUrl &&
        e1?.regionalName == e2?.regionalName &&
        e1?.updatedDate == e2?.updatedDate &&
        e1?.updatedBy == e2?.updatedBy &&
        e1?.createdBy == e2?.createdBy;
  }

  @override
  int hash(CategoryMasterRecord? e) => const ListEquality().hash([
        e?.createdDate,
        e?.id,
        e?.name,
        e?.code,
        e?.active,
        e?.imageUrl,
        e?.regionalName,
        e?.updatedDate,
        e?.updatedBy,
        e?.createdBy
      ]);

  @override
  bool isValidKey(Object? o) => o is CategoryMasterRecord;
}
