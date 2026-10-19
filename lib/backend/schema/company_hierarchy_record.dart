import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompanyHierarchyRecord extends FirestoreRecord {
  CompanyHierarchyRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "userProfileId" field.
  String? _userProfileId;
  String get userProfileId => _userProfileId ?? '';
  bool hasUserProfileId() => _userProfileId != null;

  // "teamHeadProfileId" field.
  String? _teamHeadProfileId;
  String get teamHeadProfileId => _teamHeadProfileId ?? '';
  bool hasTeamHeadProfileId() => _teamHeadProfileId != null;

  // "roleInTeam" field.
  String? _roleInTeam;
  String get roleInTeam => _roleInTeam ?? '';
  bool hasRoleInTeam() => _roleInTeam != null;

  // "zone" field.
  String? _zone;
  String get zone => _zone ?? '';
  bool hasZone() => _zone != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _userName = snapshotData['userName'] as String?;
    _userProfileId = snapshotData['userProfileId'] as String?;
    _teamHeadProfileId = snapshotData['teamHeadProfileId'] as String?;
    _roleInTeam = snapshotData['roleInTeam'] as String?;
    _zone = snapshotData['zone'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('COMPANY_HIERARCHY')
          : FirebaseFirestore.instance.collectionGroup('COMPANY_HIERARCHY');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('COMPANY_HIERARCHY').doc(id);

  static Stream<CompanyHierarchyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CompanyHierarchyRecord.fromSnapshot(s));

  static Future<CompanyHierarchyRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CompanyHierarchyRecord.fromSnapshot(s));

  static CompanyHierarchyRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CompanyHierarchyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CompanyHierarchyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CompanyHierarchyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CompanyHierarchyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CompanyHierarchyRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createCompanyHierarchyRecordData({
  String? id,
  String? userName,
  String? userProfileId,
  String? teamHeadProfileId,
  String? roleInTeam,
  String? zone,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'userName': userName,
      'userProfileId': userProfileId,
      'teamHeadProfileId': teamHeadProfileId,
      'roleInTeam': roleInTeam,
      'zone': zone,
    }.withoutNulls,
  );

  return firestoreData;
}

class CompanyHierarchyRecordDocumentEquality
    implements Equality<CompanyHierarchyRecord> {
  const CompanyHierarchyRecordDocumentEquality();

  @override
  bool equals(CompanyHierarchyRecord? e1, CompanyHierarchyRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.userName == e2?.userName &&
        e1?.userProfileId == e2?.userProfileId &&
        e1?.teamHeadProfileId == e2?.teamHeadProfileId &&
        e1?.roleInTeam == e2?.roleInTeam &&
        e1?.zone == e2?.zone;
  }

  @override
  int hash(CompanyHierarchyRecord? e) => const ListEquality().hash([
        e?.id,
        e?.userName,
        e?.userProfileId,
        e?.teamHeadProfileId,
        e?.roleInTeam,
        e?.zone
      ]);

  @override
  bool isValidKey(Object? o) => o is CompanyHierarchyRecord;
}
