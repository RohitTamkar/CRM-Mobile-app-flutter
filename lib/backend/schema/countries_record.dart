import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CountriesRecord extends FirestoreRecord {
  CountriesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "countryCode" field.
  String? _countryCode;
  String get countryCode => _countryCode ?? '';
  bool hasCountryCode() => _countryCode != null;

  // "countryFlag" field.
  String? _countryFlag;
  String get countryFlag => _countryFlag ?? '';
  bool hasCountryFlag() => _countryFlag != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "countryNameCommon" field.
  String? _countryNameCommon;
  String get countryNameCommon => _countryNameCommon ?? '';
  bool hasCountryNameCommon() => _countryNameCommon != null;

  void _initializeFields() {
    _countryCode = snapshotData['countryCode'] as String?;
    _countryFlag = snapshotData['countryFlag'] as String?;
    _isActive = snapshotData['isActive'] as bool?;
    _countryNameCommon = snapshotData['countryNameCommon'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('COUNTRIES');

  static Stream<CountriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CountriesRecord.fromSnapshot(s));

  static Future<CountriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CountriesRecord.fromSnapshot(s));

  static CountriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CountriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CountriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CountriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CountriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CountriesRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createCountriesRecordData({
  String? countryCode,
  String? countryFlag,
  bool? isActive,
  String? countryNameCommon,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'countryCode': countryCode,
      'countryFlag': countryFlag,
      'isActive': isActive,
      'countryNameCommon': countryNameCommon,
    }.withoutNulls,
  );

  return firestoreData;
}

class CountriesRecordDocumentEquality implements Equality<CountriesRecord> {
  const CountriesRecordDocumentEquality();

  @override
  bool equals(CountriesRecord? e1, CountriesRecord? e2) {
    return e1?.countryCode == e2?.countryCode &&
        e1?.countryFlag == e2?.countryFlag &&
        e1?.isActive == e2?.isActive &&
        e1?.countryNameCommon == e2?.countryNameCommon;
  }

  @override
  int hash(CountriesRecord? e) => const ListEquality().hash(
      [e?.countryCode, e?.countryFlag, e?.isActive, e?.countryNameCommon]);

  @override
  bool isValidKey(Object? o) => o is CountriesRecord;
}
