import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserProfileRecord extends FirestoreRecord {
  UserProfileRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "active" field.
  bool? _active;
  bool get active => _active ?? false;
  bool hasActive() => _active != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "pincode" field.
  int? _pincode;
  int get pincode => _pincode ?? 0;
  bool hasPincode() => _pincode != null;

  // "mobile" field.
  String? _mobile;
  String get mobile => _mobile ?? '';
  bool hasMobile() => _mobile != null;

  // "accessToMulticounter" field.
  bool? _accessToMulticounter;
  bool get accessToMulticounter => _accessToMulticounter ?? false;
  bool hasAccessToMulticounter() => _accessToMulticounter != null;

  // "createdDate" field.
  int? _createdDate;
  int get createdDate => _createdDate ?? 0;
  bool hasCreatedDate() => _createdDate != null;

  // "outletId" field.
  String? _outletId;
  String get outletId => _outletId ?? '';
  bool hasOutletId() => _outletId != null;

  // "outlets" field.
  List<String>? _outlets;
  List<String> get outlets => _outlets ?? const [];
  bool hasOutlets() => _outlets != null;

  // "quickPin" field.
  String? _quickPin;
  String get quickPin => _quickPin ?? '';
  bool hasQuickPin() => _quickPin != null;

  // "renewalDate" field.
  int? _renewalDate;
  int get renewalDate => _renewalDate ?? 0;
  bool hasRenewalDate() => _renewalDate != null;

  // "diplay_name" field.
  String? _diplayName;
  String get diplayName => _diplayName ?? '';
  bool hasDiplayName() => _diplayName != null;

  // "userSettings" field.
  String? _userSettings;
  String get userSettings => _userSettings ?? '';
  bool hasUserSettings() => _userSettings != null;

  // "code" field.
  int? _code;
  int get code => _code ?? 0;
  bool hasCode() => _code != null;

  // "businessType" field.
  DocumentReference? _businessType;
  DocumentReference? get businessType => _businessType;
  bool hasBusinessType() => _businessType != null;

  // "userAccessList" field.
  List<UserAccessStruct>? _userAccessList;
  List<UserAccessStruct> get userAccessList => _userAccessList ?? const [];
  bool hasUserAccessList() => _userAccessList != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "permissionList" field.
  List<UserAccessCStruct>? _permissionList;
  List<UserAccessCStruct> get permissionList => _permissionList ?? const [];
  bool hasPermissionList() => _permissionList != null;

  // "upiId" field.
  String? _upiId;
  String get upiId => _upiId ?? '';
  bool hasUpiId() => _upiId != null;

  // "expenseBalance" field.
  double? _expenseBalance;
  double get expenseBalance => _expenseBalance ?? 0.0;
  bool hasExpenseBalance() => _expenseBalance != null;

  // "cityList" field.
  List<String>? _cityList;
  List<String> get cityList => _cityList ?? const [];
  bool hasCityList() => _cityList != null;

  // "isDeleted" field.
  bool? _isDeleted;
  bool get isDeleted => _isDeleted ?? false;
  bool hasIsDeleted() => _isDeleted != null;

  // "isDealer" field.
  bool? _isDealer;
  bool get isDealer => _isDealer ?? false;
  bool hasIsDealer() => _isDealer != null;

  // "dealerCode" field.
  String? _dealerCode;
  String get dealerCode => _dealerCode ?? '';
  bool hasDealerCode() => _dealerCode != null;

  // "permissions" field.
  List<PermissionsDTOStruct>? _permissions;
  List<PermissionsDTOStruct> get permissions => _permissions ?? const [];
  bool hasPermissions() => _permissions != null;

  // "faceAttendanceImageUrl" field.
  String? _faceAttendanceImageUrl;
  String get faceAttendanceImageUrl => _faceAttendanceImageUrl ?? '';
  bool hasFaceAttendanceImageUrl() => _faceAttendanceImageUrl != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _id = snapshotData['id'] as String?;
    _name = snapshotData['name'] as String?;
    _active = snapshotData['active'] as bool?;
    _role = snapshotData['role'] as String?;
    _address = snapshotData['address'] as String?;
    _city = snapshotData['city'] as String?;
    _state = snapshotData['state'] as String?;
    _pincode = castToType<int>(snapshotData['pincode']);
    _mobile = snapshotData['mobile'] as String?;
    _accessToMulticounter = snapshotData['accessToMulticounter'] as bool?;
    _createdDate = castToType<int>(snapshotData['createdDate']);
    _outletId = snapshotData['outletId'] as String?;
    _outlets = getDataList(snapshotData['outlets']);
    _quickPin = snapshotData['quickPin'] as String?;
    _renewalDate = castToType<int>(snapshotData['renewalDate']);
    _diplayName = snapshotData['diplay_name'] as String?;
    _userSettings = snapshotData['userSettings'] as String?;
    _code = castToType<int>(snapshotData['code']);
    _businessType = snapshotData['businessType'] as DocumentReference?;
    _userAccessList = getStructList(
      snapshotData['userAccessList'],
      UserAccessStruct.fromMap,
    );
    _password = snapshotData['password'] as String?;
    _permissionList = getStructList(
      snapshotData['permissionList'],
      UserAccessCStruct.fromMap,
    );
    _upiId = snapshotData['upiId'] as String?;
    _expenseBalance = castToType<double>(snapshotData['expenseBalance']);
    _cityList = getDataList(snapshotData['cityList']);
    _isDeleted = snapshotData['isDeleted'] as bool?;
    _isDealer = snapshotData['isDealer'] as bool?;
    _dealerCode = snapshotData['dealerCode'] as String?;
    _permissions = getStructList(
      snapshotData['permissions'],
      PermissionsDTOStruct.fromMap,
    );
    _faceAttendanceImageUrl = snapshotData['faceAttendanceImageUrl'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('USER_PROFILE');

  static Stream<UserProfileRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserProfileRecord.fromSnapshot(s));

  static Future<UserProfileRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserProfileRecord.fromSnapshot(s));

  static UserProfileRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserProfileRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserProfileRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserProfileRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserProfileRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserProfileRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createUserProfileRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? id,
  String? name,
  bool? active,
  String? role,
  String? address,
  String? city,
  String? state,
  int? pincode,
  String? mobile,
  bool? accessToMulticounter,
  int? createdDate,
  String? outletId,
  String? quickPin,
  int? renewalDate,
  String? diplayName,
  String? userSettings,
  int? code,
  DocumentReference? businessType,
  String? password,
  String? upiId,
  double? expenseBalance,
  bool? isDeleted,
  bool? isDealer,
  String? dealerCode,
  String? faceAttendanceImageUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'id': id,
      'name': name,
      'active': active,
      'role': role,
      'address': address,
      'city': city,
      'state': state,
      'pincode': pincode,
      'mobile': mobile,
      'accessToMulticounter': accessToMulticounter,
      'createdDate': createdDate,
      'outletId': outletId,
      'quickPin': quickPin,
      'renewalDate': renewalDate,
      'diplay_name': diplayName,
      'userSettings': userSettings,
      'code': code,
      'businessType': businessType,
      'password': password,
      'upiId': upiId,
      'expenseBalance': expenseBalance,
      'isDeleted': isDeleted,
      'isDealer': isDealer,
      'dealerCode': dealerCode,
      'faceAttendanceImageUrl': faceAttendanceImageUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserProfileRecordDocumentEquality implements Equality<UserProfileRecord> {
  const UserProfileRecordDocumentEquality();

  @override
  bool equals(UserProfileRecord? e1, UserProfileRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.id == e2?.id &&
        e1?.name == e2?.name &&
        e1?.active == e2?.active &&
        e1?.role == e2?.role &&
        e1?.address == e2?.address &&
        e1?.city == e2?.city &&
        e1?.state == e2?.state &&
        e1?.pincode == e2?.pincode &&
        e1?.mobile == e2?.mobile &&
        e1?.accessToMulticounter == e2?.accessToMulticounter &&
        e1?.createdDate == e2?.createdDate &&
        e1?.outletId == e2?.outletId &&
        listEquality.equals(e1?.outlets, e2?.outlets) &&
        e1?.quickPin == e2?.quickPin &&
        e1?.renewalDate == e2?.renewalDate &&
        e1?.diplayName == e2?.diplayName &&
        e1?.userSettings == e2?.userSettings &&
        e1?.code == e2?.code &&
        e1?.businessType == e2?.businessType &&
        listEquality.equals(e1?.userAccessList, e2?.userAccessList) &&
        e1?.password == e2?.password &&
        listEquality.equals(e1?.permissionList, e2?.permissionList) &&
        e1?.upiId == e2?.upiId &&
        e1?.expenseBalance == e2?.expenseBalance &&
        listEquality.equals(e1?.cityList, e2?.cityList) &&
        e1?.isDeleted == e2?.isDeleted &&
        e1?.isDealer == e2?.isDealer &&
        e1?.dealerCode == e2?.dealerCode &&
        listEquality.equals(e1?.permissions, e2?.permissions) &&
        e1?.faceAttendanceImageUrl == e2?.faceAttendanceImageUrl;
  }

  @override
  int hash(UserProfileRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.id,
        e?.name,
        e?.active,
        e?.role,
        e?.address,
        e?.city,
        e?.state,
        e?.pincode,
        e?.mobile,
        e?.accessToMulticounter,
        e?.createdDate,
        e?.outletId,
        const ListEquality().hash(e?.outlets),
        e?.quickPin,
        e?.renewalDate,
        e?.diplayName,
        e?.userSettings,
        e?.code,
        e?.businessType,
        const ListEquality().hash(e?.userAccessList),
        e?.password,
        const ListEquality().hash(e?.permissionList),
        e?.upiId,
        e?.expenseBalance,
        const ListEquality().hash(e?.cityList),
        e?.isDeleted,
        e?.isDealer,
        e?.dealerCode,
        const ListEquality().hash(e?.permissions),
        e?.faceAttendanceImageUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is UserProfileRecord;
}
