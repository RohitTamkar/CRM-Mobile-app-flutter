import 'package:flutter/material.dart'
    show ChangeNotifier, Color, Colors, VoidCallback;
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _mobile = prefs.getString('ff_mobile') ?? _mobile;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_outletDetails')) {
        try {
          final serializedData = prefs.getString('ff_outletDetails') ?? '{}';
          _outletDetails =
              OutletDataStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _currentAddress = prefs.getString('ff_currentAddress') ?? _currentAddress;
    });
    _safeInit(() {
      _userNotificationList = prefs.getStringList('ff_userNotificationList') ??
          _userNotificationList;
    });
    _safeInit(() {
      _userManagerRef =
          prefs.getString('ff_userManagerRef')?.ref ?? _userManagerRef;
    });
    _safeInit(() {
      _managerUid = prefs.getString('ff_managerUid') ?? _managerUid;
    });
    _safeInit(() {
      _startdate = prefs.containsKey('ff_startdate')
          ? DateTime.fromMillisecondsSinceEpoch(prefs.getInt('ff_startdate')!)
          : _startdate;
    });
    _safeInit(() {
      _enddate = prefs.containsKey('ff_enddate')
          ? DateTime.fromMillisecondsSinceEpoch(prefs.getInt('ff_enddate')!)
          : _enddate;
    });
    _safeInit(() {
      _storeVersion = prefs.getString('ff_storeVersion') ?? _storeVersion;
    });
    _safeInit(() {
      _localVersion = prefs.getString('ff_localVersion') ?? _localVersion;
    });
    _safeInit(() {
      _role = prefs.getString('ff_role') ?? _role;
    });
    _safeInit(() {
      _setCatName = prefs.getString('ff_setCatName') ?? _setCatName;
    });
    _safeInit(() {
      _catCodeLegth = prefs.getInt('ff_catCodeLegth') ?? _catCodeLegth;
    });
    _safeInit(() {
      _userRef = prefs.getString('ff_userRef')?.ref ?? _userRef;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_userDoc')) {
        try {
          final serializedData = prefs.getString('ff_userDoc') ?? '{}';
          _userDoc =
              UserDetailsStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _enabled = prefs.getBool('ff_enabled') ?? _enabled;
    });
    _safeInit(() {
      _travelKm = prefs.getString('ff_travelKm') ?? _travelKm;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_curUserFCMToken')) {
        try {
          final serializedData = prefs.getString('ff_curUserFCMToken') ?? '{}';
          _curUserFCMToken =
              FcmTokenStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _isdarkmode = prefs.getBool('ff_isdarkmode') ?? _isdarkmode;
    });
    _safeInit(() {
      _homeIndex = prefs.getInt('ff_homeIndex') ?? _homeIndex;
    });
    _safeInit(() {
      _bottomIndex = prefs.getInt('ff_bottomIndex') ?? _bottomIndex;
    });
    _safeInit(() {
      _cachedContacts = prefs
              .getStringList('ff_cachedContacts')
              ?.map((x) {
                try {
                  return CachedContactStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _cachedContacts;
    });
    _safeInit(() {
      _contactsLastSyncTime =
          prefs.getInt('ff_contactsLastSyncTime') ?? _contactsLastSyncTime;
    });
    _safeInit(() {
      _contactsCacheOwner =
          prefs.getString('ff_contactsCacheOwner') ?? _contactsCacheOwner;
    });
    _safeInit(() {
      _contactsCacheReady =
          prefs.getBool('ff_contactsCacheReady') ?? _contactsCacheReady;
    });
    _safeInit(() {
      _cachedEventNames =
          prefs.getStringList('ff_cachedEventNames') ?? _cachedEventNames;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _mobile = '';
  String get mobile => _mobile;
  set mobile(String value) {
    _mobile = value;
    prefs.setString('ff_mobile', value);
  }

  OutletDataStruct _outletDetails = OutletDataStruct.fromSerializableMap(
      jsonDecode('{\"outletIdRef\":\"outletDetails\"}'));
  OutletDataStruct get outletDetails => _outletDetails;
  set outletDetails(OutletDataStruct value) {
    _outletDetails = value;
    prefs.setString('ff_outletDetails', value.serialize());
  }

  void updateOutletDetailsStruct(Function(OutletDataStruct) updateFn) {
    updateFn(_outletDetails);
    prefs.setString('ff_outletDetails', _outletDetails.serialize());
  }

  String _currentAddress = '';
  String get currentAddress => _currentAddress;
  set currentAddress(String value) {
    _currentAddress = value;
    prefs.setString('ff_currentAddress', value);
  }

  String _imageurl = '';
  String get imageurl => _imageurl;
  set imageurl(String value) {
    _imageurl = value;
  }

  List<String> _userNotificationList = [];
  List<String> get userNotificationList => _userNotificationList;
  set userNotificationList(List<String> value) {
    _userNotificationList = value;
    prefs.setStringList('ff_userNotificationList', value);
  }

  void addToUserNotificationList(String value) {
    userNotificationList.add(value);
    prefs.setStringList('ff_userNotificationList', _userNotificationList);
  }

  void removeFromUserNotificationList(String value) {
    userNotificationList.remove(value);
    prefs.setStringList('ff_userNotificationList', _userNotificationList);
  }

  void removeAtIndexFromUserNotificationList(int index) {
    userNotificationList.removeAt(index);
    prefs.setStringList('ff_userNotificationList', _userNotificationList);
  }

  void updateUserNotificationListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    userNotificationList[index] = updateFn(_userNotificationList[index]);
    prefs.setStringList('ff_userNotificationList', _userNotificationList);
  }

  void insertAtIndexInUserNotificationList(int index, String value) {
    userNotificationList.insert(index, value);
    prefs.setStringList('ff_userNotificationList', _userNotificationList);
  }

  DocumentReference? _userManagerRef;
  DocumentReference? get userManagerRef => _userManagerRef;
  set userManagerRef(DocumentReference? value) {
    _userManagerRef = value;
    value != null
        ? prefs.setString('ff_userManagerRef', value.path)
        : prefs.remove('ff_userManagerRef');
  }

  String _managerUid = '';
  String get managerUid => _managerUid;
  set managerUid(String value) {
    _managerUid = value;
    prefs.setString('ff_managerUid', value);
  }

  DateTime? _startdate;
  DateTime? get startdate => _startdate;
  set startdate(DateTime? value) {
    _startdate = value;
    value != null
        ? prefs.setInt('ff_startdate', value.millisecondsSinceEpoch)
        : prefs.remove('ff_startdate');
  }

  DateTime? _enddate;
  DateTime? get enddate => _enddate;
  set enddate(DateTime? value) {
    _enddate = value;
    value != null
        ? prefs.setInt('ff_enddate', value.millisecondsSinceEpoch)
        : prefs.remove('ff_enddate');
  }

  String _categoryExpense = '';
  String get categoryExpense => _categoryExpense;
  set categoryExpense(String value) {
    _categoryExpense = value;
  }

  String _paymentExpense = '';
  String get paymentExpense => _paymentExpense;
  set paymentExpense(String value) {
    _paymentExpense = value;
  }

  String _storeVersion = '';
  String get storeVersion => _storeVersion;
  set storeVersion(String value) {
    _storeVersion = value;
    prefs.setString('ff_storeVersion', value);
  }

  String _localVersion = '';
  String get localVersion => _localVersion;
  set localVersion(String value) {
    _localVersion = value;
    prefs.setString('ff_localVersion', value);
  }

  List<UserExpPayTransactionsStruct> _userExpPayList = [];
  List<UserExpPayTransactionsStruct> get userExpPayList => _userExpPayList;
  set userExpPayList(List<UserExpPayTransactionsStruct> value) {
    _userExpPayList = value;
  }

  void addToUserExpPayList(UserExpPayTransactionsStruct value) {
    userExpPayList.add(value);
  }

  void removeFromUserExpPayList(UserExpPayTransactionsStruct value) {
    userExpPayList.remove(value);
  }

  void removeAtIndexFromUserExpPayList(int index) {
    userExpPayList.removeAt(index);
  }

  void updateUserExpPayListAtIndex(
    int index,
    UserExpPayTransactionsStruct Function(UserExpPayTransactionsStruct)
        updateFn,
  ) {
    userExpPayList[index] = updateFn(_userExpPayList[index]);
  }

  void insertAtIndexInUserExpPayList(
      int index, UserExpPayTransactionsStruct value) {
    userExpPayList.insert(index, value);
  }

  String _role = '';
  String get role => _role;
  set role(String value) {
    _role = value;
    prefs.setString('ff_role', value);
  }

  String _setCatName = '';
  String get setCatName => _setCatName;
  set setCatName(String value) {
    _setCatName = value;
    prefs.setString('ff_setCatName', value);
  }

  int _catCodeLegth = 0;
  int get catCodeLegth => _catCodeLegth;
  set catCodeLegth(int value) {
    _catCodeLegth = value;
    prefs.setInt('ff_catCodeLegth', value);
  }

  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  set userRef(DocumentReference? value) {
    _userRef = value;
    value != null
        ? prefs.setString('ff_userRef', value.path)
        : prefs.remove('ff_userRef');
  }

  UserDetailsStruct _userDoc = UserDetailsStruct();
  UserDetailsStruct get userDoc => _userDoc;
  set userDoc(UserDetailsStruct value) {
    _userDoc = value;
    prefs.setString('ff_userDoc', value.serialize());
  }

  void updateUserDocStruct(Function(UserDetailsStruct) updateFn) {
    updateFn(_userDoc);
    prefs.setString('ff_userDoc', _userDoc.serialize());
  }

  bool _enabled = false;
  bool get enabled => _enabled;
  set enabled(bool value) {
    _enabled = value;
    prefs.setBool('ff_enabled', value);
  }

  String _travelKm = '';
  String get travelKm => _travelKm;
  set travelKm(String value) {
    _travelKm = value;
    prefs.setString('ff_travelKm', value);
  }

  FcmTokenStruct _curUserFCMToken = FcmTokenStruct();
  FcmTokenStruct get curUserFCMToken => _curUserFCMToken;
  set curUserFCMToken(FcmTokenStruct value) {
    _curUserFCMToken = value;
    prefs.setString('ff_curUserFCMToken', value.serialize());
  }

  void updateCurUserFCMTokenStruct(Function(FcmTokenStruct) updateFn) {
    updateFn(_curUserFCMToken);
    prefs.setString('ff_curUserFCMToken', _curUserFCMToken.serialize());
  }

  bool _isdarkmode = false;
  bool get isdarkmode => _isdarkmode;
  set isdarkmode(bool value) {
    _isdarkmode = value;
    prefs.setBool('ff_isdarkmode', value);
  }

  int _homeIndex = 0;
  int get homeIndex => _homeIndex;
  set homeIndex(int value) {
    _homeIndex = value;
    prefs.setInt('ff_homeIndex', value);
  }

  int _bottomIndex = 0;
  int get bottomIndex => _bottomIndex;
  set bottomIndex(int value) {
    _bottomIndex = value;
    prefs.setInt('ff_bottomIndex', value);
  }

  bool _isInsideRadius = false;
  bool get isInsideRadius => _isInsideRadius;
  set isInsideRadius(bool value) {
    _isInsideRadius = value;
  }

  bool _checkedIn = false;
  bool get checkedIn => _checkedIn;
  set checkedIn(bool value) {
    _checkedIn = value;
  }

  DateTime? _fromtime;
  DateTime? get fromtime => _fromtime;
  set fromtime(DateTime? value) {
    _fromtime = value;
  }

  DateTime? _totime;
  DateTime? get totime => _totime;
  set totime(DateTime? value) {
    _totime = value;
  }

  int _totalEmployee = 0;
  int get totalEmployee => _totalEmployee;
  set totalEmployee(int value) {
    _totalEmployee = value;
  }

  int _present = 0;
  int get present => _present;
  set present(int value) {
    _present = value;
  }

  int _onLeave = 0;
  int get onLeave => _onLeave;
  set onLeave(int value) {
    _onLeave = value;
  }

  IdcardResponseStruct _ocrOutput = IdcardResponseStruct();
  IdcardResponseStruct get ocrOutput => _ocrOutput;
  set ocrOutput(IdcardResponseStruct value) {
    _ocrOutput = value;
  }

  void updateOcrOutputStruct(Function(IdcardResponseStruct) updateFn) {
    updateFn(_ocrOutput);
  }

  String _createdAt = '';
  String get createdAt => _createdAt;
  set createdAt(String value) {
    _createdAt = value;
  }

  String _today = '';
  String get today => _today;
  set today(String value) {
    _today = value;
  }

  String _tomorrow = '';
  String get tomorrow => _tomorrow;
  set tomorrow(String value) {
    _tomorrow = value;
  }

  String _eventMessage = '';
  String get eventMessage => _eventMessage;
  set eventMessage(String value) {
    _eventMessage = value;
  }

  String _rejectReason = '';
  String get rejectReason => _rejectReason;
  set rejectReason(String value) {
    _rejectReason = value;
  }

  List<CachedContactStruct> _cachedContacts = [];
  List<CachedContactStruct> get cachedContacts => _cachedContacts;
  set cachedContacts(List<CachedContactStruct> value) {
    _cachedContacts = value;
    prefs.setStringList(
        'ff_cachedContacts', value.map((x) => x.serialize()).toList());
  }

  void addToCachedContacts(CachedContactStruct value) {
    cachedContacts.add(value);
    prefs.setStringList('ff_cachedContacts',
        _cachedContacts.map((x) => x.serialize()).toList());
  }

  void removeFromCachedContacts(CachedContactStruct value) {
    cachedContacts.remove(value);
    prefs.setStringList('ff_cachedContacts',
        _cachedContacts.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCachedContacts(int index) {
    cachedContacts.removeAt(index);
    prefs.setStringList('ff_cachedContacts',
        _cachedContacts.map((x) => x.serialize()).toList());
  }

  void updateCachedContactsAtIndex(
    int index,
    CachedContactStruct Function(CachedContactStruct) updateFn,
  ) {
    cachedContacts[index] = updateFn(_cachedContacts[index]);
    prefs.setStringList('ff_cachedContacts',
        _cachedContacts.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCachedContacts(int index, CachedContactStruct value) {
    cachedContacts.insert(index, value);
    prefs.setStringList('ff_cachedContacts',
        _cachedContacts.map((x) => x.serialize()).toList());
  }

  int _contactsLastSyncTime = 0;
  int get contactsLastSyncTime => _contactsLastSyncTime;
  set contactsLastSyncTime(int value) {
    _contactsLastSyncTime = value;
    prefs.setInt('ff_contactsLastSyncTime', value);
  }

  String _contactsCacheOwner = '';
  String get contactsCacheOwner => _contactsCacheOwner;
  set contactsCacheOwner(String value) {
    _contactsCacheOwner = value;
    prefs.setString('ff_contactsCacheOwner', value);
  }

  bool _contactsCacheReady = false;
  bool get contactsCacheReady => _contactsCacheReady;
  set contactsCacheReady(bool value) {
    _contactsCacheReady = value;
    prefs.setBool('ff_contactsCacheReady', value);
  }

  List<String> _cachedEventNames = [];
  List<String> get cachedEventNames => _cachedEventNames;
  set cachedEventNames(List<String> value) {
    _cachedEventNames = value;
    prefs.setStringList('ff_cachedEventNames', value);
  }

  void addToCachedEventNames(String value) {
    cachedEventNames.add(value);
    prefs.setStringList('ff_cachedEventNames', _cachedEventNames);
  }

  void removeFromCachedEventNames(String value) {
    cachedEventNames.remove(value);
    prefs.setStringList('ff_cachedEventNames', _cachedEventNames);
  }

  void removeAtIndexFromCachedEventNames(int index) {
    cachedEventNames.removeAt(index);
    prefs.setStringList('ff_cachedEventNames', _cachedEventNames);
  }

  void updateCachedEventNamesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    cachedEventNames[index] = updateFn(_cachedEventNames[index]);
    prefs.setStringList('ff_cachedEventNames', _cachedEventNames);
  }

  void insertAtIndexInCachedEventNames(int index, String value) {
    cachedEventNames.insert(index, value);
    prefs.setStringList('ff_cachedEventNames', _cachedEventNames);
  }

  final _stateManager = StreamRequestManager<List<StateRecord>>();
  Stream<List<StateRecord>> state({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<StateRecord>> Function() requestFn,
  }) =>
      _stateManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearStateCache() => _stateManager.clear();
  void clearStateCacheKey(String? uniqueKey) =>
      _stateManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
