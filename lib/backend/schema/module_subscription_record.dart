import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ModuleSubscriptionRecord extends FirestoreRecord {
  ModuleSubscriptionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "enabledFeatureKeys" field.
  List<FeatureAccessConfig>? _enabledFeatureKeys;
  List<FeatureAccessConfig> get enabledFeatureKeys =>
      _enabledFeatureKeys ?? const [];
  bool hasEnabledFeatureKeys() => _enabledFeatureKeys != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _enabledFeatureKeys =
        getEnumList<FeatureAccessConfig>(snapshotData['enabledFeatureKeys']);
    _id = snapshotData['id'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('MODULE_SUBSCRIPTION')
          : FirebaseFirestore.instance.collectionGroup('MODULE_SUBSCRIPTION');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('MODULE_SUBSCRIPTION').doc(id);

  static Stream<ModuleSubscriptionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ModuleSubscriptionRecord.fromSnapshot(s));

  static Future<ModuleSubscriptionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ModuleSubscriptionRecord.fromSnapshot(s));

  static ModuleSubscriptionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ModuleSubscriptionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ModuleSubscriptionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ModuleSubscriptionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ModuleSubscriptionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ModuleSubscriptionRecord &&
      reference.path == other.reference.path;
}

Map<String, dynamic> createModuleSubscriptionRecordData({
  String? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
    }.withoutNulls,
  );

  return firestoreData;
}

class ModuleSubscriptionRecordDocumentEquality
    implements Equality<ModuleSubscriptionRecord> {
  const ModuleSubscriptionRecordDocumentEquality();

  @override
  bool equals(ModuleSubscriptionRecord? e1, ModuleSubscriptionRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(
            e1?.enabledFeatureKeys, e2?.enabledFeatureKeys) &&
        e1?.id == e2?.id;
  }

  @override
  int hash(ModuleSubscriptionRecord? e) => const ListEquality()
      .hash([const ListEquality().hash(e?.enabledFeatureKeys), e?.id]);

  @override
  bool isValidKey(Object? o) => o is ModuleSubscriptionRecord;
}
