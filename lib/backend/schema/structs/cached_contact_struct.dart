// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CachedContactStruct extends FFFirebaseStruct {
  CachedContactStruct({
    String? id,
    String? documentPath,
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
    DocumentReference? contactRef,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _documentPath = documentPath,
        _name = name,
        _mobile = mobile,
        _email = email,
        _address = address,
        _city = city,
        _source = source,
        _category = category,
        _comments = comments,
        _status = status,
        _assignedUserId = assignedUserId,
        _assignedUserName = assignedUserName,
        _area = area,
        _uploadedDateTime = uploadedDateTime,
        _eventName = eventName,
        _assignedEmployeeCode = assignedEmployeeCode,
        _reason = reason,
        _eventRegistrationLink = eventRegistrationLink,
        _eventDateTime = eventDateTime,
        _eventId = eventId,
        _contactRef = contactRef,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "documentPath" field.
  String? _documentPath;
  String get documentPath => _documentPath ?? '';
  set documentPath(String? val) => _documentPath = val;

  bool hasDocumentPath() => _documentPath != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "mobile" field.
  String? _mobile;
  String get mobile => _mobile ?? '';
  set mobile(String? val) => _mobile = val;

  bool hasMobile() => _mobile != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  // "source" field.
  String? _source;
  String get source => _source ?? '';
  set source(String? val) => _source = val;

  bool hasSource() => _source != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "comments" field.
  String? _comments;
  String get comments => _comments ?? '';
  set comments(String? val) => _comments = val;

  bool hasComments() => _comments != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "assignedUserId" field.
  String? _assignedUserId;
  String get assignedUserId => _assignedUserId ?? '';
  set assignedUserId(String? val) => _assignedUserId = val;

  bool hasAssignedUserId() => _assignedUserId != null;

  // "assignedUserName" field.
  String? _assignedUserName;
  String get assignedUserName => _assignedUserName ?? '';
  set assignedUserName(String? val) => _assignedUserName = val;

  bool hasAssignedUserName() => _assignedUserName != null;

  // "area" field.
  String? _area;
  String get area => _area ?? '';
  set area(String? val) => _area = val;

  bool hasArea() => _area != null;

  // "uploadedDateTime" field.
  int? _uploadedDateTime;
  int get uploadedDateTime => _uploadedDateTime ?? 0;
  set uploadedDateTime(int? val) => _uploadedDateTime = val;

  void incrementUploadedDateTime(int amount) =>
      uploadedDateTime = uploadedDateTime + amount;

  bool hasUploadedDateTime() => _uploadedDateTime != null;

  // "eventName" field.
  String? _eventName;
  String get eventName => _eventName ?? '';
  set eventName(String? val) => _eventName = val;

  bool hasEventName() => _eventName != null;

  // "assignedEmployeeCode" field.
  String? _assignedEmployeeCode;
  String get assignedEmployeeCode => _assignedEmployeeCode ?? '';
  set assignedEmployeeCode(String? val) => _assignedEmployeeCode = val;

  bool hasAssignedEmployeeCode() => _assignedEmployeeCode != null;

  // "reason" field.
  String? _reason;
  String get reason => _reason ?? '';
  set reason(String? val) => _reason = val;

  bool hasReason() => _reason != null;

  // "eventRegistrationLink" field.
  String? _eventRegistrationLink;
  String get eventRegistrationLink => _eventRegistrationLink ?? '';
  set eventRegistrationLink(String? val) => _eventRegistrationLink = val;

  bool hasEventRegistrationLink() => _eventRegistrationLink != null;

  // "eventDateTime" field.
  int? _eventDateTime;
  int get eventDateTime => _eventDateTime ?? 0;
  set eventDateTime(int? val) => _eventDateTime = val;

  void incrementEventDateTime(int amount) =>
      eventDateTime = eventDateTime + amount;

  bool hasEventDateTime() => _eventDateTime != null;

  // "eventId" field.
  String? _eventId;
  String get eventId => _eventId ?? '';
  set eventId(String? val) => _eventId = val;

  bool hasEventId() => _eventId != null;

  // "contactRef" field.
  DocumentReference? _contactRef;
  DocumentReference? get contactRef => _contactRef;
  set contactRef(DocumentReference? val) => _contactRef = val;

  bool hasContactRef() => _contactRef != null;

  static CachedContactStruct fromMap(Map<String, dynamic> data) =>
      CachedContactStruct(
        id: data['id'] as String?,
        documentPath: data['documentPath'] as String?,
        name: data['name'] as String?,
        mobile: data['mobile'] as String?,
        email: data['email'] as String?,
        address: data['address'] as String?,
        city: data['city'] as String?,
        source: data['source'] as String?,
        category: data['category'] as String?,
        comments: data['comments'] as String?,
        status: data['status'] as String?,
        assignedUserId: data['assignedUserId'] as String?,
        assignedUserName: data['assignedUserName'] as String?,
        area: data['area'] as String?,
        uploadedDateTime: castToType<int>(data['uploadedDateTime']),
        eventName: data['eventName'] as String?,
        assignedEmployeeCode: data['assignedEmployeeCode'] as String?,
        reason: data['reason'] as String?,
        eventRegistrationLink: data['eventRegistrationLink'] as String?,
        eventDateTime: castToType<int>(data['eventDateTime']),
        eventId: data['eventId'] as String?,
        contactRef: data['contactRef'] as DocumentReference?,
      );

  static CachedContactStruct? maybeFromMap(dynamic data) => data is Map
      ? CachedContactStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'documentPath': _documentPath,
        'name': _name,
        'mobile': _mobile,
        'email': _email,
        'address': _address,
        'city': _city,
        'source': _source,
        'category': _category,
        'comments': _comments,
        'status': _status,
        'assignedUserId': _assignedUserId,
        'assignedUserName': _assignedUserName,
        'area': _area,
        'uploadedDateTime': _uploadedDateTime,
        'eventName': _eventName,
        'assignedEmployeeCode': _assignedEmployeeCode,
        'reason': _reason,
        'eventRegistrationLink': _eventRegistrationLink,
        'eventDateTime': _eventDateTime,
        'eventId': _eventId,
        'contactRef': _contactRef,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'documentPath': serializeParam(
          _documentPath,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'mobile': serializeParam(
          _mobile,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'source': serializeParam(
          _source,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'comments': serializeParam(
          _comments,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'assignedUserId': serializeParam(
          _assignedUserId,
          ParamType.String,
        ),
        'assignedUserName': serializeParam(
          _assignedUserName,
          ParamType.String,
        ),
        'area': serializeParam(
          _area,
          ParamType.String,
        ),
        'uploadedDateTime': serializeParam(
          _uploadedDateTime,
          ParamType.int,
        ),
        'eventName': serializeParam(
          _eventName,
          ParamType.String,
        ),
        'assignedEmployeeCode': serializeParam(
          _assignedEmployeeCode,
          ParamType.String,
        ),
        'reason': serializeParam(
          _reason,
          ParamType.String,
        ),
        'eventRegistrationLink': serializeParam(
          _eventRegistrationLink,
          ParamType.String,
        ),
        'eventDateTime': serializeParam(
          _eventDateTime,
          ParamType.int,
        ),
        'eventId': serializeParam(
          _eventId,
          ParamType.String,
        ),
        'contactRef': serializeParam(
          _contactRef,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static CachedContactStruct fromSerializableMap(Map<String, dynamic> data) =>
      CachedContactStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        documentPath: deserializeParam(
          data['documentPath'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        mobile: deserializeParam(
          data['mobile'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        source: deserializeParam(
          data['source'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        comments: deserializeParam(
          data['comments'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        assignedUserId: deserializeParam(
          data['assignedUserId'],
          ParamType.String,
          false,
        ),
        assignedUserName: deserializeParam(
          data['assignedUserName'],
          ParamType.String,
          false,
        ),
        area: deserializeParam(
          data['area'],
          ParamType.String,
          false,
        ),
        uploadedDateTime: deserializeParam(
          data['uploadedDateTime'],
          ParamType.int,
          false,
        ),
        eventName: deserializeParam(
          data['eventName'],
          ParamType.String,
          false,
        ),
        assignedEmployeeCode: deserializeParam(
          data['assignedEmployeeCode'],
          ParamType.String,
          false,
        ),
        reason: deserializeParam(
          data['reason'],
          ParamType.String,
          false,
        ),
        eventRegistrationLink: deserializeParam(
          data['eventRegistrationLink'],
          ParamType.String,
          false,
        ),
        eventDateTime: deserializeParam(
          data['eventDateTime'],
          ParamType.int,
          false,
        ),
        eventId: deserializeParam(
          data['eventId'],
          ParamType.String,
          false,
        ),
        contactRef: deserializeParam(
          data['contactRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['OUTLET', 'CONTACTS'],
        ),
      );

  @override
  String toString() => 'CachedContactStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CachedContactStruct &&
        id == other.id &&
        documentPath == other.documentPath &&
        name == other.name &&
        mobile == other.mobile &&
        email == other.email &&
        address == other.address &&
        city == other.city &&
        source == other.source &&
        category == other.category &&
        comments == other.comments &&
        status == other.status &&
        assignedUserId == other.assignedUserId &&
        assignedUserName == other.assignedUserName &&
        area == other.area &&
        uploadedDateTime == other.uploadedDateTime &&
        eventName == other.eventName &&
        assignedEmployeeCode == other.assignedEmployeeCode &&
        reason == other.reason &&
        eventRegistrationLink == other.eventRegistrationLink &&
        eventDateTime == other.eventDateTime &&
        eventId == other.eventId &&
        contactRef == other.contactRef;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        documentPath,
        name,
        mobile,
        email,
        address,
        city,
        source,
        category,
        comments,
        status,
        assignedUserId,
        assignedUserName,
        area,
        uploadedDateTime,
        eventName,
        assignedEmployeeCode,
        reason,
        eventRegistrationLink,
        eventDateTime,
        eventId,
        contactRef
      ]);
}

CachedContactStruct createCachedContactStruct({
  String? id,
  String? documentPath,
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
  DocumentReference? contactRef,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CachedContactStruct(
      id: id,
      documentPath: documentPath,
      name: name,
      mobile: mobile,
      email: email,
      address: address,
      city: city,
      source: source,
      category: category,
      comments: comments,
      status: status,
      assignedUserId: assignedUserId,
      assignedUserName: assignedUserName,
      area: area,
      uploadedDateTime: uploadedDateTime,
      eventName: eventName,
      assignedEmployeeCode: assignedEmployeeCode,
      reason: reason,
      eventRegistrationLink: eventRegistrationLink,
      eventDateTime: eventDateTime,
      eventId: eventId,
      contactRef: contactRef,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CachedContactStruct? updateCachedContactStruct(
  CachedContactStruct? cachedContact, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cachedContact
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCachedContactStructData(
  Map<String, dynamic> firestoreData,
  CachedContactStruct? cachedContact,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cachedContact == null) {
    return;
  }
  if (cachedContact.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && cachedContact.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cachedContactData =
      getCachedContactFirestoreData(cachedContact, forFieldValue);
  final nestedData =
      cachedContactData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = cachedContact.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCachedContactFirestoreData(
  CachedContactStruct? cachedContact, [
  bool forFieldValue = false,
]) {
  if (cachedContact == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cachedContact.toMap());

  // Add any Firestore field values
  mapToFirestore(cachedContact.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCachedContactListFirestoreData(
  List<CachedContactStruct>? cachedContacts,
) =>
    cachedContacts
        ?.map((e) => getCachedContactFirestoreData(e, true))
        .toList() ??
    [];
