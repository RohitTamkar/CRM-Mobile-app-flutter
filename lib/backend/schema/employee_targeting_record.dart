import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmployeeTargetingRecord extends FirestoreRecord {
  EmployeeTargetingRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "achieveNetSales" field.
  int? _achieveNetSales;
  int get achieveNetSales => _achieveNetSales ?? 0;
  bool hasAchieveNetSales() => _achieveNetSales != null;

  // "achievementPercentage" field.
  double? _achievementPercentage;
  double get achievementPercentage => _achievementPercentage ?? 0.0;
  bool hasAchievementPercentage() => _achievementPercentage != null;

  // "createdAt" field.
  int? _createdAt;
  int get createdAt => _createdAt ?? 0;
  bool hasCreatedAt() => _createdAt != null;

  // "decForecastNetSales" field.
  int? _decForecastNetSales;
  int get decForecastNetSales => _decForecastNetSales ?? 0;
  bool hasDecForecastNetSales() => _decForecastNetSales != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "month" field.
  int? _month;
  int get month => _month ?? 0;
  bool hasMonth() => _month != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  bool hasOrder() => _order != null;

  // "saleExecutive" field.
  String? _saleExecutive;
  String get saleExecutive => _saleExecutive ?? '';
  bool hasSaleExecutive() => _saleExecutive != null;

  // "saleExecutiveId" field.
  String? _saleExecutiveId;
  String get saleExecutiveId => _saleExecutiveId ?? '';
  bool hasSaleExecutiveId() => _saleExecutiveId != null;

  // "updatedAt" field.
  int? _updatedAt;
  int get updatedAt => _updatedAt ?? 0;
  bool hasUpdatedAt() => _updatedAt != null;

  // "year" field.
  int? _year;
  int get year => _year ?? 0;
  bool hasYear() => _year != null;

  // "zone" field.
  String? _zone;
  String get zone => _zone ?? '';
  bool hasZone() => _zone != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _achieveNetSales = castToType<int>(snapshotData['achieveNetSales']);
    _achievementPercentage =
        castToType<double>(snapshotData['achievementPercentage']);
    _createdAt = castToType<int>(snapshotData['createdAt']);
    _decForecastNetSales = castToType<int>(snapshotData['decForecastNetSales']);
    _id = snapshotData['id'] as String?;
    _month = castToType<int>(snapshotData['month']);
    _order = castToType<int>(snapshotData['order']);
    _saleExecutive = snapshotData['saleExecutive'] as String?;
    _saleExecutiveId = snapshotData['saleExecutiveId'] as String?;
    _updatedAt = castToType<int>(snapshotData['updatedAt']);
    _year = castToType<int>(snapshotData['year']);
    _zone = snapshotData['zone'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('EMPLOYEE_TARGETING')
          : FirebaseFirestore.instance.collectionGroup('EMPLOYEE_TARGETING');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('EMPLOYEE_TARGETING').doc(id);

  static Stream<EmployeeTargetingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmployeeTargetingRecord.fromSnapshot(s));

  static Future<EmployeeTargetingRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => EmployeeTargetingRecord.fromSnapshot(s));

  static EmployeeTargetingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EmployeeTargetingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmployeeTargetingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmployeeTargetingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmployeeTargetingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmployeeTargetingRecord &&
      reference.path == other.reference.path;
}

Map<String, dynamic> createEmployeeTargetingRecordData({
  int? achieveNetSales,
  double? achievementPercentage,
  int? createdAt,
  int? decForecastNetSales,
  String? id,
  int? month,
  int? order,
  String? saleExecutive,
  String? saleExecutiveId,
  int? updatedAt,
  int? year,
  String? zone,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'achieveNetSales': achieveNetSales,
      'achievementPercentage': achievementPercentage,
      'createdAt': createdAt,
      'decForecastNetSales': decForecastNetSales,
      'id': id,
      'month': month,
      'order': order,
      'saleExecutive': saleExecutive,
      'saleExecutiveId': saleExecutiveId,
      'updatedAt': updatedAt,
      'year': year,
      'zone': zone,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmployeeTargetingRecordDocumentEquality
    implements Equality<EmployeeTargetingRecord> {
  const EmployeeTargetingRecordDocumentEquality();

  @override
  bool equals(EmployeeTargetingRecord? e1, EmployeeTargetingRecord? e2) {
    return e1?.achieveNetSales == e2?.achieveNetSales &&
        e1?.achievementPercentage == e2?.achievementPercentage &&
        e1?.createdAt == e2?.createdAt &&
        e1?.decForecastNetSales == e2?.decForecastNetSales &&
        e1?.id == e2?.id &&
        e1?.month == e2?.month &&
        e1?.order == e2?.order &&
        e1?.saleExecutive == e2?.saleExecutive &&
        e1?.saleExecutiveId == e2?.saleExecutiveId &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.year == e2?.year &&
        e1?.zone == e2?.zone;
  }

  @override
  int hash(EmployeeTargetingRecord? e) => const ListEquality().hash([
        e?.achieveNetSales,
        e?.achievementPercentage,
        e?.createdAt,
        e?.decForecastNetSales,
        e?.id,
        e?.month,
        e?.order,
        e?.saleExecutive,
        e?.saleExecutiveId,
        e?.updatedAt,
        e?.year,
        e?.zone
      ]);

  @override
  bool isValidKey(Object? o) => o is EmployeeTargetingRecord;
}
