import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VisitingCardRecord extends FirestoreRecord {
  VisitingCardRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "list" field.
  List<String>? _list;
  List<String> get list => _list ?? const [];
  bool hasList() => _list != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _list = getDataList(snapshotData['list']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('VISITING_CARD')
          : FirebaseFirestore.instance.collectionGroup('VISITING_CARD');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('VISITING_CARD').doc(id);

  static Stream<VisitingCardRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VisitingCardRecord.fromSnapshot(s));

  static Future<VisitingCardRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VisitingCardRecord.fromSnapshot(s));

  static VisitingCardRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VisitingCardRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VisitingCardRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VisitingCardRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VisitingCardRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VisitingCardRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createVisitingCardRecordData({
  String? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
    }.withoutNulls,
  );

  return firestoreData;
}

class VisitingCardRecordDocumentEquality
    implements Equality<VisitingCardRecord> {
  const VisitingCardRecordDocumentEquality();

  @override
  bool equals(VisitingCardRecord? e1, VisitingCardRecord? e2) {
    const listEquality = ListEquality();
    return e1?.id == e2?.id && listEquality.equals(e1?.list, e2?.list);
  }

  @override
  int hash(VisitingCardRecord? e) =>
      const ListEquality().hash([e?.id, const ListEquality().hash(e?.list)]);

  @override
  bool isValidKey(Object? o) => o is VisitingCardRecord;
}
