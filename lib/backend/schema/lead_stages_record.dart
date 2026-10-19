import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LeadStagesRecord extends FirestoreRecord {
  LeadStagesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "code" field.
  int? _code;
  int get code => _code ?? 0;
  bool hasCode() => _code != null;

  // "display" field.
  String? _display;
  String get display => _display ?? '';
  bool hasDisplay() => _display != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "isDeleted" field.
  bool? _isDeleted;
  bool get isDeleted => _isDeleted ?? false;
  bool hasIsDeleted() => _isDeleted != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _code = castToType<int>(snapshotData['code']);
    _display = snapshotData['display'] as String?;
    _isActive = snapshotData['isActive'] as bool?;
    _isDeleted = snapshotData['isDeleted'] as bool?;
    _name = snapshotData['name'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('LEAD_STAGES')
          : FirebaseFirestore.instance.collectionGroup('LEAD_STAGES');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('LEAD_STAGES').doc(id);

  static Stream<LeadStagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LeadStagesRecord.fromSnapshot(s));

  static Future<LeadStagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LeadStagesRecord.fromSnapshot(s));

  static LeadStagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LeadStagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LeadStagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LeadStagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LeadStagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LeadStagesRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createLeadStagesRecordData({
  String? id,
  int? code,
  String? display,
  bool? isActive,
  bool? isDeleted,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'code': code,
      'display': display,
      'isActive': isActive,
      'isDeleted': isDeleted,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class LeadStagesRecordDocumentEquality implements Equality<LeadStagesRecord> {
  const LeadStagesRecordDocumentEquality();

  @override
  bool equals(LeadStagesRecord? e1, LeadStagesRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.code == e2?.code &&
        e1?.display == e2?.display &&
        e1?.isActive == e2?.isActive &&
        e1?.isDeleted == e2?.isDeleted &&
        e1?.name == e2?.name;
  }

  @override
  int hash(LeadStagesRecord? e) => const ListEquality()
      .hash([e?.id, e?.code, e?.display, e?.isActive, e?.isDeleted, e?.name]);

  @override
  bool isValidKey(Object? o) => o is LeadStagesRecord;
}
