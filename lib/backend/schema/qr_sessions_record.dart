import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QrSessionsRecord extends FirestoreRecord {
  QrSessionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "createdAt" field.
  int? _createdAt;
  int get createdAt => _createdAt ?? 0;
  bool hasCreatedAt() => _createdAt != null;

  // "expiryAt" field.
  int? _expiryAt;
  int get expiryAt => _expiryAt ?? 0;
  bool hasExpiryAt() => _expiryAt != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "isLoggedIn" field.
  bool? _isLoggedIn;
  bool get isLoggedIn => _isLoggedIn ?? false;
  bool hasIsLoggedIn() => _isLoggedIn != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  void _initializeFields() {
    _createdAt = castToType<int>(snapshotData['createdAt']);
    _expiryAt = castToType<int>(snapshotData['expiryAt']);
    _id = snapshotData['id'] as String?;
    _isLoggedIn = snapshotData['isLoggedIn'] as bool?;
    _userId = snapshotData['userId'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('QR_SESSIONS');

  static Stream<QrSessionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QrSessionsRecord.fromSnapshot(s));

  static Future<QrSessionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QrSessionsRecord.fromSnapshot(s));

  static QrSessionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QrSessionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QrSessionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QrSessionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QrSessionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QrSessionsRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createQrSessionsRecordData({
  int? createdAt,
  int? expiryAt,
  String? id,
  bool? isLoggedIn,
  String? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdAt': createdAt,
      'expiryAt': expiryAt,
      'id': id,
      'isLoggedIn': isLoggedIn,
      'userId': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class QrSessionsRecordDocumentEquality implements Equality<QrSessionsRecord> {
  const QrSessionsRecordDocumentEquality();

  @override
  bool equals(QrSessionsRecord? e1, QrSessionsRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.expiryAt == e2?.expiryAt &&
        e1?.id == e2?.id &&
        e1?.isLoggedIn == e2?.isLoggedIn &&
        e1?.userId == e2?.userId;
  }

  @override
  int hash(QrSessionsRecord? e) => const ListEquality()
      .hash([e?.createdAt, e?.expiryAt, e?.id, e?.isLoggedIn, e?.userId]);

  @override
  bool isValidKey(Object? o) => o is QrSessionsRecord;
}
