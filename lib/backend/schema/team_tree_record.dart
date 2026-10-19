import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeamTreeRecord extends FirestoreRecord {
  TeamTreeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "roleInZone" field.
  String? _roleInZone;
  String get roleInZone => _roleInZone ?? '';
  bool hasRoleInZone() => _roleInZone != null;

  // "teamHeadProfileId" field.
  String? _teamHeadProfileId;
  String get teamHeadProfileId => _teamHeadProfileId ?? '';
  bool hasTeamHeadProfileId() => _teamHeadProfileId != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "userProfileId" field.
  String? _userProfileId;
  String get userProfileId => _userProfileId ?? '';
  bool hasUserProfileId() => _userProfileId != null;

  // "zone" field.
  String? _zone;
  String get zone => _zone ?? '';
  bool hasZone() => _zone != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "zoneHeadProfileId" field.
  String? _zoneHeadProfileId;
  String get zoneHeadProfileId => _zoneHeadProfileId ?? '';
  bool hasZoneHeadProfileId() => _zoneHeadProfileId != null;

  // "zoneList" field.
  List<String>? _zoneList;
  List<String> get zoneList => _zoneList ?? const [];
  bool hasZoneList() => _zoneList != null;

  // "workMode" field.
  String? _workMode;
  String get workMode => _workMode ?? '';
  bool hasWorkMode() => _workMode != null;

  // "stageAccessList" field.
  List<StageAccessListDtStruct>? _stageAccessList;
  List<StageAccessListDtStruct> get stageAccessList =>
      _stageAccessList ?? const [];
  bool hasStageAccessList() => _stageAccessList != null;

  // "isOnPayRoll" field.
  bool? _isOnPayRoll;
  bool get isOnPayRoll => _isOnPayRoll ?? false;
  bool hasIsOnPayRoll() => _isOnPayRoll != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  bool hasCode() => _code != null;

  // "team" field.
  String? _team;
  String get team => _team ?? '';
  bool hasTeam() => _team != null;

  // "designation" field.
  String? _designation;
  String get designation => _designation ?? '';
  bool hasDesignation() => _designation != null;

  // "appPermissionsList" field.
  AppPermissionsDatatypeStruct? _appPermissionsList;
  AppPermissionsDatatypeStruct get appPermissionsList =>
      _appPermissionsList ?? AppPermissionsDatatypeStruct();
  bool hasAppPermissionsList() => _appPermissionsList != null;

  // "appVersion" field.
  String? _appVersion;
  String get appVersion => _appVersion ?? '';
  bool hasAppVersion() => _appVersion != null;

  // "department" field.
  String? _department;
  String get department => _department ?? '';
  bool hasDepartment() => _department != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _isActive = snapshotData['isActive'] as bool?;
    _roleInZone = snapshotData['roleInZone'] as String?;
    _teamHeadProfileId = snapshotData['teamHeadProfileId'] as String?;
    _userName = snapshotData['userName'] as String?;
    _userProfileId = snapshotData['userProfileId'] as String?;
    _zone = snapshotData['zone'] as String?;
    _uid = snapshotData['uid'] as String?;
    _zoneHeadProfileId = snapshotData['zoneHeadProfileId'] as String?;
    _zoneList = getDataList(snapshotData['zoneList']);
    _workMode = snapshotData['workMode'] as String?;
    _stageAccessList = getStructList(
      snapshotData['stageAccessList'],
      StageAccessListDtStruct.fromMap,
    );
    _isOnPayRoll = snapshotData['isOnPayRoll'] as bool?;
    _code = snapshotData['code'] as String?;
    _team = snapshotData['team'] as String?;
    _designation = snapshotData['designation'] as String?;
    _appPermissionsList =
        snapshotData['appPermissionsList'] is AppPermissionsDatatypeStruct
            ? snapshotData['appPermissionsList']
            : AppPermissionsDatatypeStruct.maybeFromMap(
                snapshotData['appPermissionsList']);
    _appVersion = snapshotData['appVersion'] as String?;
    _department = snapshotData['department'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('TEAM_TREE')
          : FirebaseFirestore.instance.collectionGroup('TEAM_TREE');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('TEAM_TREE').doc(id);

  static Stream<TeamTreeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TeamTreeRecord.fromSnapshot(s));

  static Future<TeamTreeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TeamTreeRecord.fromSnapshot(s));

  static TeamTreeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TeamTreeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TeamTreeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TeamTreeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TeamTreeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TeamTreeRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createTeamTreeRecordData({
  String? id,
  bool? isActive,
  String? roleInZone,
  String? teamHeadProfileId,
  String? userName,
  String? userProfileId,
  String? zone,
  String? uid,
  String? zoneHeadProfileId,
  String? workMode,
  bool? isOnPayRoll,
  String? code,
  String? team,
  String? designation,
  AppPermissionsDatatypeStruct? appPermissionsList,
  String? appVersion,
  String? department,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'isActive': isActive,
      'roleInZone': roleInZone,
      'teamHeadProfileId': teamHeadProfileId,
      'userName': userName,
      'userProfileId': userProfileId,
      'zone': zone,
      'uid': uid,
      'zoneHeadProfileId': zoneHeadProfileId,
      'workMode': workMode,
      'isOnPayRoll': isOnPayRoll,
      'code': code,
      'team': team,
      'designation': designation,
      'appPermissionsList': AppPermissionsDatatypeStruct().toMap(),
      'appVersion': appVersion,
      'department': department,
    }.withoutNulls,
  );

  // Handle nested data for "appPermissionsList" field.
  addAppPermissionsDatatypeStructData(
      firestoreData, appPermissionsList, 'appPermissionsList');

  return firestoreData;
}

class TeamTreeRecordDocumentEquality implements Equality<TeamTreeRecord> {
  const TeamTreeRecordDocumentEquality();

  @override
  bool equals(TeamTreeRecord? e1, TeamTreeRecord? e2) {
    const listEquality = ListEquality();
    return e1?.id == e2?.id &&
        e1?.isActive == e2?.isActive &&
        e1?.roleInZone == e2?.roleInZone &&
        e1?.teamHeadProfileId == e2?.teamHeadProfileId &&
        e1?.userName == e2?.userName &&
        e1?.userProfileId == e2?.userProfileId &&
        e1?.zone == e2?.zone &&
        e1?.uid == e2?.uid &&
        e1?.zoneHeadProfileId == e2?.zoneHeadProfileId &&
        listEquality.equals(e1?.zoneList, e2?.zoneList) &&
        e1?.workMode == e2?.workMode &&
        listEquality.equals(e1?.stageAccessList, e2?.stageAccessList) &&
        e1?.isOnPayRoll == e2?.isOnPayRoll &&
        e1?.code == e2?.code &&
        e1?.team == e2?.team &&
        e1?.designation == e2?.designation &&
        e1?.appPermissionsList == e2?.appPermissionsList &&
        e1?.appVersion == e2?.appVersion &&
        e1?.department == e2?.department;
  }

  @override
  int hash(TeamTreeRecord? e) => const ListEquality().hash([
        e?.id,
        e?.isActive,
        e?.roleInZone,
        e?.teamHeadProfileId,
        e?.userName,
        e?.userProfileId,
        e?.zone,
        e?.uid,
        e?.zoneHeadProfileId,
        const ListEquality().hash(e?.zoneList),
        e?.workMode,
        const ListEquality().hash(e?.stageAccessList),
        e?.isOnPayRoll,
        e?.code,
        e?.team,
        e?.designation,
        e?.appPermissionsList,
        e?.appVersion,
        e?.department
      ]);

  @override
  bool isValidKey(Object? o) => o is TeamTreeRecord;
}
