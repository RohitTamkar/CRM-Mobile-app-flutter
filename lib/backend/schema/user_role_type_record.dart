import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRoleTypeRecord extends FirestoreRecord {
  UserRoleTypeRecord._(
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

  // "createdBy" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  // "updatedBy" field.
  DocumentReference? _updatedBy;
  DocumentReference? get updatedBy => _updatedBy;
  bool hasUpdatedBy() => _updatedBy != null;

  // "updateDate" field.
  int? _updateDate;
  int get updateDate => _updateDate ?? 0;
  bool hasUpdateDate() => _updateDate != null;

  // "createdDate" field.
  int? _createdDate;
  int get createdDate => _createdDate ?? 0;
  bool hasCreatedDate() => _createdDate != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _name = snapshotData['name'] as String?;
    _code = castToType<int>(snapshotData['code']);
    _createdBy = snapshotData['createdBy'] as DocumentReference?;
    _updatedBy = snapshotData['updatedBy'] as DocumentReference?;
    _updateDate = castToType<int>(snapshotData['updateDate']);
    _createdDate = castToType<int>(snapshotData['createdDate']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('USER_ROLE_TYPE');

  static Stream<UserRoleTypeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRoleTypeRecord.fromSnapshot(s));

  static Future<UserRoleTypeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRoleTypeRecord.fromSnapshot(s));

  static UserRoleTypeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserRoleTypeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRoleTypeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRoleTypeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRoleTypeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRoleTypeRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createUserRoleTypeRecordData({
  String? id,
  String? name,
  int? code,
  DocumentReference? createdBy,
  DocumentReference? updatedBy,
  int? updateDate,
  int? createdDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'name': name,
      'code': code,
      'createdBy': createdBy,
      'updatedBy': updatedBy,
      'updateDate': updateDate,
      'createdDate': createdDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserRoleTypeRecordDocumentEquality
    implements Equality<UserRoleTypeRecord> {
  const UserRoleTypeRecordDocumentEquality();

  @override
  bool equals(UserRoleTypeRecord? e1, UserRoleTypeRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.name == e2?.name &&
        e1?.code == e2?.code &&
        e1?.createdBy == e2?.createdBy &&
        e1?.updatedBy == e2?.updatedBy &&
        e1?.updateDate == e2?.updateDate &&
        e1?.createdDate == e2?.createdDate;
  }

  @override
  int hash(UserRoleTypeRecord? e) => const ListEquality().hash([
        e?.id,
        e?.name,
        e?.code,
        e?.createdBy,
        e?.updatedBy,
        e?.updateDate,
        e?.createdDate
      ]);

  @override
  bool isValidKey(Object? o) => o is UserRoleTypeRecord;
}
