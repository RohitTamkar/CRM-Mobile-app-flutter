import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserwiseContactsRecord extends FirestoreRecord {
  UserwiseContactsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "eventName" field.
  String? _eventName;
  String get eventName => _eventName ?? '';
  bool hasEventName() => _eventName != null;

  // "assignedUserId" field.
  String? _assignedUserId;
  String get assignedUserId => _assignedUserId ?? '';
  bool hasAssignedUserId() => _assignedUserId != null;

  // "uploadedDateTime" field.
  int? _uploadedDateTime;
  int get uploadedDateTime => _uploadedDateTime ?? 0;
  bool hasUploadedDateTime() => _uploadedDateTime != null;

  // "eventId" field.
  String? _eventId;
  String get eventId => _eventId ?? '';
  bool hasEventId() => _eventId != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _eventName = snapshotData['eventName'] as String?;
    _assignedUserId = snapshotData['assignedUserId'] as String?;
    _uploadedDateTime = castToType<int>(snapshotData['uploadedDateTime']);
    _eventId = snapshotData['eventId'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('USERWISE_CONTACTS')
          : FirebaseFirestore.instance.collectionGroup('USERWISE_CONTACTS');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('USERWISE_CONTACTS').doc(id);

  static Stream<UserwiseContactsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserwiseContactsRecord.fromSnapshot(s));

  static Future<UserwiseContactsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UserwiseContactsRecord.fromSnapshot(s));

  static UserwiseContactsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserwiseContactsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserwiseContactsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserwiseContactsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserwiseContactsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserwiseContactsRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createUserwiseContactsRecordData({
  String? id,
  String? eventName,
  String? assignedUserId,
  int? uploadedDateTime,
  String? eventId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'eventName': eventName,
      'assignedUserId': assignedUserId,
      'uploadedDateTime': uploadedDateTime,
      'eventId': eventId,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserwiseContactsRecordDocumentEquality
    implements Equality<UserwiseContactsRecord> {
  const UserwiseContactsRecordDocumentEquality();

  @override
  bool equals(UserwiseContactsRecord? e1, UserwiseContactsRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.eventName == e2?.eventName &&
        e1?.assignedUserId == e2?.assignedUserId &&
        e1?.uploadedDateTime == e2?.uploadedDateTime &&
        e1?.eventId == e2?.eventId;
  }

  @override
  int hash(UserwiseContactsRecord? e) => const ListEquality().hash([
        e?.id,
        e?.eventName,
        e?.assignedUserId,
        e?.uploadedDateTime,
        e?.eventId
      ]);

  @override
  bool isValidKey(Object? o) => o is UserwiseContactsRecord;
}
