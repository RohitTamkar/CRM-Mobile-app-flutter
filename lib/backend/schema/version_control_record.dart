import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VersionControlRecord extends FirestoreRecord {
  VersionControlRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "versionName" field.
  String? _versionName;
  String get versionName => _versionName ?? '';
  bool hasVersionName() => _versionName != null;

  // "versionCode" field.
  int? _versionCode;
  int get versionCode => _versionCode ?? 0;
  bool hasVersionCode() => _versionCode != null;

  // "critical" field.
  bool? _critical;
  bool get critical => _critical ?? false;
  bool hasCritical() => _critical != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _versionName = snapshotData['versionName'] as String?;
    _versionCode = castToType<int>(snapshotData['versionCode']);
    _critical = snapshotData['critical'] as bool?;
    _id = snapshotData['id'] as String?;
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('VERSION_CONTROL');

  static Stream<VersionControlRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VersionControlRecord.fromSnapshot(s));

  static Future<VersionControlRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VersionControlRecord.fromSnapshot(s));

  static VersionControlRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VersionControlRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VersionControlRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VersionControlRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VersionControlRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VersionControlRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createVersionControlRecordData({
  String? versionName,
  int? versionCode,
  bool? critical,
  String? id,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'versionName': versionName,
      'versionCode': versionCode,
      'critical': critical,
      'id': id,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class VersionControlRecordDocumentEquality
    implements Equality<VersionControlRecord> {
  const VersionControlRecordDocumentEquality();

  @override
  bool equals(VersionControlRecord? e1, VersionControlRecord? e2) {
    return e1?.versionName == e2?.versionName &&
        e1?.versionCode == e2?.versionCode &&
        e1?.critical == e2?.critical &&
        e1?.id == e2?.id &&
        e1?.name == e2?.name;
  }

  @override
  int hash(VersionControlRecord? e) => const ListEquality()
      .hash([e?.versionName, e?.versionCode, e?.critical, e?.id, e?.name]);

  @override
  bool isValidKey(Object? o) => o is VersionControlRecord;
}
