import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecipeRecord extends FirestoreRecord {
  RecipeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "reverseStock" field.
  bool? _reverseStock;
  bool get reverseStock => _reverseStock ?? false;
  bool hasReverseStock() => _reverseStock != null;

  // "type" field.
  int? _type;
  int get type => _type ?? 0;
  bool hasType() => _type != null;

  // "code" field.
  int? _code;
  int get code => _code ?? 0;
  bool hasCode() => _code != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "recipeItemList" field.
  List<RecipeItemListStruct>? _recipeItemList;
  List<RecipeItemListStruct> get recipeItemList => _recipeItemList ?? const [];
  bool hasRecipeItemList() => _recipeItemList != null;

  // "items" field.
  List<RecipeItemListStruct>? _items;
  List<RecipeItemListStruct> get items => _items ?? const [];
  bool hasItems() => _items != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _reverseStock = snapshotData['reverseStock'] as bool?;
    _type = castToType<int>(snapshotData['type']);
    _code = castToType<int>(snapshotData['code']);
    _id = snapshotData['id'] as String?;
    _recipeItemList = getStructList(
      snapshotData['recipeItemList'],
      RecipeItemListStruct.fromMap,
    );
    _items = getStructList(
      snapshotData['items'],
      RecipeItemListStruct.fromMap,
    );
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('RECIPE')
          : FirebaseFirestore.instance.collectionGroup('RECIPE');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('RECIPE').doc(id);

  static Stream<RecipeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecipeRecord.fromSnapshot(s));

  static Future<RecipeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecipeRecord.fromSnapshot(s));

  static RecipeRecord fromSnapshot(DocumentSnapshot snapshot) => RecipeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecipeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecipeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecipeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecipeRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createRecipeRecordData({
  String? name,
  bool? reverseStock,
  int? type,
  int? code,
  String? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'reverseStock': reverseStock,
      'type': type,
      'code': code,
      'id': id,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecipeRecordDocumentEquality implements Equality<RecipeRecord> {
  const RecipeRecordDocumentEquality();

  @override
  bool equals(RecipeRecord? e1, RecipeRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.reverseStock == e2?.reverseStock &&
        e1?.type == e2?.type &&
        e1?.code == e2?.code &&
        e1?.id == e2?.id &&
        listEquality.equals(e1?.recipeItemList, e2?.recipeItemList) &&
        listEquality.equals(e1?.items, e2?.items);
  }

  @override
  int hash(RecipeRecord? e) => const ListEquality().hash([
        e?.name,
        e?.reverseStock,
        e?.type,
        e?.code,
        e?.id,
        const ListEquality().hash(e?.recipeItemList),
        const ListEquality().hash(e?.items)
      ]);

  @override
  bool isValidKey(Object? o) => o is RecipeRecord;
}
