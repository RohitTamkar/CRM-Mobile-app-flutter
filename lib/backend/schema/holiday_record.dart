import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HolidayRecord extends FirestoreRecord {
  HolidayRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "year" field.
  String? _year;
  String get year => _year ?? '';
  bool hasYear() => _year != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "date" field.
  int? _date;
  int get date => _date ?? 0;
  bool hasDate() => _date != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _year = snapshotData['year'] as String?;
    _title = snapshotData['title'] as String?;
    _date = castToType<int>(snapshotData['date']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('HOLIDAY')
          : FirebaseFirestore.instance.collectionGroup('HOLIDAY');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('HOLIDAY').doc(id);

  static Stream<HolidayRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HolidayRecord.fromSnapshot(s));

  static Future<HolidayRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HolidayRecord.fromSnapshot(s));

  static HolidayRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HolidayRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HolidayRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HolidayRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HolidayRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HolidayRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createHolidayRecordData({
  String? id,
  String? year,
  String? title,
  int? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'year': year,
      'title': title,
      'date': date,
    }.withoutNulls,
  );

  return firestoreData;
}

class HolidayRecordDocumentEquality implements Equality<HolidayRecord> {
  const HolidayRecordDocumentEquality();

  @override
  bool equals(HolidayRecord? e1, HolidayRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.year == e2?.year &&
        e1?.title == e2?.title &&
        e1?.date == e2?.date;
  }

  @override
  int hash(HolidayRecord? e) =>
      const ListEquality().hash([e?.id, e?.year, e?.title, e?.date]);

  @override
  bool isValidKey(Object? o) => o is HolidayRecord;
}
