import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InstalltionRecord extends FirestoreRecord {
  InstalltionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "leadMRefId" field.
  String? _leadMRefId;
  String get leadMRefId => _leadMRefId ?? '';
  bool hasLeadMRefId() => _leadMRefId != null;

  // "installationBy" field.
  String? _installationBy;
  String get installationBy => _installationBy ?? '';
  bool hasInstallationBy() => _installationBy != null;

  // "installationDateInMili" field.
  int? _installationDateInMili;
  int get installationDateInMili => _installationDateInMili ?? 0;
  bool hasInstallationDateInMili() => _installationDateInMili != null;

  // "installationDate" field.
  DateTime? _installationDate;
  DateTime? get installationDate => _installationDate;
  bool hasInstallationDate() => _installationDate != null;

  // "model" field.
  String? _model;
  String get model => _model ?? '';
  bool hasModel() => _model != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "dayId" field.
  String? _dayId;
  String get dayId => _dayId ?? '';
  bool hasDayId() => _dayId != null;

  // "monthId" field.
  String? _monthId;
  String get monthId => _monthId ?? '';
  bool hasMonthId() => _monthId != null;

  // "yearId" field.
  String? _yearId;
  String get yearId => _yearId ?? '';
  bool hasYearId() => _yearId != null;

  // "createdDate" field.
  int? _createdDate;
  int get createdDate => _createdDate ?? 0;
  bool hasCreatedDate() => _createdDate != null;

  // "modifiedDate" field.
  int? _modifiedDate;
  int get modifiedDate => _modifiedDate ?? 0;
  bool hasModifiedDate() => _modifiedDate != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _leadMRefId = snapshotData['leadMRefId'] as String?;
    _installationBy = snapshotData['installationBy'] as String?;
    _installationDateInMili =
        castToType<int>(snapshotData['installationDateInMili']);
    _installationDate = snapshotData['installationDate'] as DateTime?;
    _model = snapshotData['model'] as String?;
    _status = snapshotData['status'] as String?;
    _dayId = snapshotData['dayId'] as String?;
    _monthId = snapshotData['monthId'] as String?;
    _yearId = snapshotData['yearId'] as String?;
    _createdDate = castToType<int>(snapshotData['createdDate']);
    _modifiedDate = castToType<int>(snapshotData['modifiedDate']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('INSTALLTION')
          : FirebaseFirestore.instance.collectionGroup('INSTALLTION');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('INSTALLTION').doc(id);

  static Stream<InstalltionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InstalltionRecord.fromSnapshot(s));

  static Future<InstalltionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InstalltionRecord.fromSnapshot(s));

  static InstalltionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InstalltionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InstalltionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InstalltionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InstalltionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InstalltionRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createInstalltionRecordData({
  String? id,
  String? leadMRefId,
  String? installationBy,
  int? installationDateInMili,
  DateTime? installationDate,
  String? model,
  String? status,
  String? dayId,
  String? monthId,
  String? yearId,
  int? createdDate,
  int? modifiedDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'leadMRefId': leadMRefId,
      'installationBy': installationBy,
      'installationDateInMili': installationDateInMili,
      'installationDate': installationDate,
      'model': model,
      'status': status,
      'dayId': dayId,
      'monthId': monthId,
      'yearId': yearId,
      'createdDate': createdDate,
      'modifiedDate': modifiedDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class InstalltionRecordDocumentEquality implements Equality<InstalltionRecord> {
  const InstalltionRecordDocumentEquality();

  @override
  bool equals(InstalltionRecord? e1, InstalltionRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.leadMRefId == e2?.leadMRefId &&
        e1?.installationBy == e2?.installationBy &&
        e1?.installationDateInMili == e2?.installationDateInMili &&
        e1?.installationDate == e2?.installationDate &&
        e1?.model == e2?.model &&
        e1?.status == e2?.status &&
        e1?.dayId == e2?.dayId &&
        e1?.monthId == e2?.monthId &&
        e1?.yearId == e2?.yearId &&
        e1?.createdDate == e2?.createdDate &&
        e1?.modifiedDate == e2?.modifiedDate;
  }

  @override
  int hash(InstalltionRecord? e) => const ListEquality().hash([
        e?.id,
        e?.leadMRefId,
        e?.installationBy,
        e?.installationDateInMili,
        e?.installationDate,
        e?.model,
        e?.status,
        e?.dayId,
        e?.monthId,
        e?.yearId,
        e?.createdDate,
        e?.modifiedDate
      ]);

  @override
  bool isValidKey(Object? o) => o is InstalltionRecord;
}
