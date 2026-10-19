import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContactsRecord extends FirestoreRecord {
  ContactsRecord._(
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

  // "mobile" field.
  String? _mobile;
  String get mobile => _mobile ?? '';
  bool hasMobile() => _mobile != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "source" field.
  String? _source;
  String get source => _source ?? '';
  bool hasSource() => _source != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "comments" field.
  String? _comments;
  String get comments => _comments ?? '';
  bool hasComments() => _comments != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "assignedUserId" field.
  String? _assignedUserId;
  String get assignedUserId => _assignedUserId ?? '';
  bool hasAssignedUserId() => _assignedUserId != null;

  // "assignedUserName" field.
  String? _assignedUserName;
  String get assignedUserName => _assignedUserName ?? '';
  bool hasAssignedUserName() => _assignedUserName != null;

  // "area" field.
  String? _area;
  String get area => _area ?? '';
  bool hasArea() => _area != null;

  // "transferedList" field.
  List<TransferedListStruct>? _transferedList;
  List<TransferedListStruct> get transferedList => _transferedList ?? const [];
  bool hasTransferedList() => _transferedList != null;

  // "uploadedDateTime" field.
  int? _uploadedDateTime;
  int get uploadedDateTime => _uploadedDateTime ?? 0;
  bool hasUploadedDateTime() => _uploadedDateTime != null;

  // "eventName" field.
  String? _eventName;
  String get eventName => _eventName ?? '';
  bool hasEventName() => _eventName != null;

  // "assignedEmployeeCode" field.
  String? _assignedEmployeeCode;
  String get assignedEmployeeCode => _assignedEmployeeCode ?? '';
  bool hasAssignedEmployeeCode() => _assignedEmployeeCode != null;

  // "reason" field.
  String? _reason;
  String get reason => _reason ?? '';
  bool hasReason() => _reason != null;

  // "eventRegistrationLink" field.
  String? _eventRegistrationLink;
  String get eventRegistrationLink => _eventRegistrationLink ?? '';
  bool hasEventRegistrationLink() => _eventRegistrationLink != null;

  // "eventDateTime" field.
  int? _eventDateTime;
  int get eventDateTime => _eventDateTime ?? 0;
  bool hasEventDateTime() => _eventDateTime != null;

  // "eventId" field.
  String? _eventId;
  String get eventId => _eventId ?? '';
  bool hasEventId() => _eventId != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _name = snapshotData['name'] as String?;
    _mobile = snapshotData['mobile'] as String?;
    _email = snapshotData['email'] as String?;
    _address = snapshotData['address'] as String?;
    _city = snapshotData['city'] as String?;
    _source = snapshotData['source'] as String?;
    _category = snapshotData['category'] as String?;
    _comments = snapshotData['comments'] as String?;
    _status = snapshotData['status'] as String?;
    _assignedUserId = snapshotData['assignedUserId'] as String?;
    _assignedUserName = snapshotData['assignedUserName'] as String?;
    _area = snapshotData['area'] as String?;
    _transferedList = getStructList(
      snapshotData['transferedList'],
      TransferedListStruct.fromMap,
    );
    _uploadedDateTime = castToType<int>(snapshotData['uploadedDateTime']);
    _eventName = snapshotData['eventName'] as String?;
    _assignedEmployeeCode = snapshotData['assignedEmployeeCode'] as String?;
    _reason = snapshotData['reason'] as String?;
    _eventRegistrationLink = snapshotData['eventRegistrationLink'] as String?;
    _eventDateTime = castToType<int>(snapshotData['eventDateTime']);
    _eventId = snapshotData['eventId'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('CONTACTS')
          : FirebaseFirestore.instance.collectionGroup('CONTACTS');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('CONTACTS').doc(id);

  static Stream<ContactsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContactsRecord.fromSnapshot(s));

  static Future<ContactsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContactsRecord.fromSnapshot(s));

  static ContactsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContactsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContactsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContactsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContactsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContactsRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createContactsRecordData({
  String? id,
  String? name,
  String? mobile,
  String? email,
  String? address,
  String? city,
  String? source,
  String? category,
  String? comments,
  String? status,
  String? assignedUserId,
  String? assignedUserName,
  String? area,
  int? uploadedDateTime,
  String? eventName,
  String? assignedEmployeeCode,
  String? reason,
  String? eventRegistrationLink,
  int? eventDateTime,
  String? eventId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'name': name,
      'mobile': mobile,
      'email': email,
      'address': address,
      'city': city,
      'source': source,
      'category': category,
      'comments': comments,
      'status': status,
      'assignedUserId': assignedUserId,
      'assignedUserName': assignedUserName,
      'area': area,
      'uploadedDateTime': uploadedDateTime,
      'eventName': eventName,
      'assignedEmployeeCode': assignedEmployeeCode,
      'reason': reason,
      'eventRegistrationLink': eventRegistrationLink,
      'eventDateTime': eventDateTime,
      'eventId': eventId,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContactsRecordDocumentEquality implements Equality<ContactsRecord> {
  const ContactsRecordDocumentEquality();

  @override
  bool equals(ContactsRecord? e1, ContactsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.id == e2?.id &&
        e1?.name == e2?.name &&
        e1?.mobile == e2?.mobile &&
        e1?.email == e2?.email &&
        e1?.address == e2?.address &&
        e1?.city == e2?.city &&
        e1?.source == e2?.source &&
        e1?.category == e2?.category &&
        e1?.comments == e2?.comments &&
        e1?.status == e2?.status &&
        e1?.assignedUserId == e2?.assignedUserId &&
        e1?.assignedUserName == e2?.assignedUserName &&
        e1?.area == e2?.area &&
        listEquality.equals(e1?.transferedList, e2?.transferedList) &&
        e1?.uploadedDateTime == e2?.uploadedDateTime &&
        e1?.eventName == e2?.eventName &&
        e1?.assignedEmployeeCode == e2?.assignedEmployeeCode &&
        e1?.reason == e2?.reason &&
        e1?.eventRegistrationLink == e2?.eventRegistrationLink &&
        e1?.eventDateTime == e2?.eventDateTime &&
        e1?.eventId == e2?.eventId;
  }

  @override
  int hash(ContactsRecord? e) => const ListEquality().hash([
        e?.id,
        e?.name,
        e?.mobile,
        e?.email,
        e?.address,
        e?.city,
        e?.source,
        e?.category,
        e?.comments,
        e?.status,
        e?.assignedUserId,
        e?.assignedUserName,
        e?.area,
        const ListEquality().hash(e?.transferedList),
        e?.uploadedDateTime,
        e?.eventName,
        e?.assignedEmployeeCode,
        e?.reason,
        e?.eventRegistrationLink,
        e?.eventDateTime,
        e?.eventId
      ]);

  @override
  bool isValidKey(Object? o) => o is ContactsRecord;
}
