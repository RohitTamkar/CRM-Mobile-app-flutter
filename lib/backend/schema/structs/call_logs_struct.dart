// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CallLogsStruct extends FFFirebaseStruct {
  CallLogsStruct({
    String? incoming,
    String? outgoing,
    String? missedcalls,
    String? rejected,
    String? totalCalls,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _incoming = incoming,
        _outgoing = outgoing,
        _missedcalls = missedcalls,
        _rejected = rejected,
        _totalCalls = totalCalls,
        super(firestoreUtilData);

  // "Incoming" field.
  String? _incoming;
  String get incoming => _incoming ?? '';
  set incoming(String? val) => _incoming = val;

  bool hasIncoming() => _incoming != null;

  // "outgoing" field.
  String? _outgoing;
  String get outgoing => _outgoing ?? '';
  set outgoing(String? val) => _outgoing = val;

  bool hasOutgoing() => _outgoing != null;

  // "missedcalls" field.
  String? _missedcalls;
  String get missedcalls => _missedcalls ?? '';
  set missedcalls(String? val) => _missedcalls = val;

  bool hasMissedcalls() => _missedcalls != null;

  // "rejected" field.
  String? _rejected;
  String get rejected => _rejected ?? '';
  set rejected(String? val) => _rejected = val;

  bool hasRejected() => _rejected != null;

  // "totalCalls" field.
  String? _totalCalls;
  String get totalCalls => _totalCalls ?? '';
  set totalCalls(String? val) => _totalCalls = val;

  bool hasTotalCalls() => _totalCalls != null;

  static CallLogsStruct fromMap(Map<String, dynamic> data) => CallLogsStruct(
        incoming: data['Incoming'] as String?,
        outgoing: data['outgoing'] as String?,
        missedcalls: data['missedcalls'] as String?,
        rejected: data['rejected'] as String?,
        totalCalls: data['totalCalls'] as String?,
      );

  static CallLogsStruct? maybeFromMap(dynamic data) =>
      data is Map ? CallLogsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Incoming': _incoming,
        'outgoing': _outgoing,
        'missedcalls': _missedcalls,
        'rejected': _rejected,
        'totalCalls': _totalCalls,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Incoming': serializeParam(
          _incoming,
          ParamType.String,
        ),
        'outgoing': serializeParam(
          _outgoing,
          ParamType.String,
        ),
        'missedcalls': serializeParam(
          _missedcalls,
          ParamType.String,
        ),
        'rejected': serializeParam(
          _rejected,
          ParamType.String,
        ),
        'totalCalls': serializeParam(
          _totalCalls,
          ParamType.String,
        ),
      }.withoutNulls;

  static CallLogsStruct fromSerializableMap(Map<String, dynamic> data) =>
      CallLogsStruct(
        incoming: deserializeParam(
          data['Incoming'],
          ParamType.String,
          false,
        ),
        outgoing: deserializeParam(
          data['outgoing'],
          ParamType.String,
          false,
        ),
        missedcalls: deserializeParam(
          data['missedcalls'],
          ParamType.String,
          false,
        ),
        rejected: deserializeParam(
          data['rejected'],
          ParamType.String,
          false,
        ),
        totalCalls: deserializeParam(
          data['totalCalls'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CallLogsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CallLogsStruct &&
        incoming == other.incoming &&
        outgoing == other.outgoing &&
        missedcalls == other.missedcalls &&
        rejected == other.rejected &&
        totalCalls == other.totalCalls;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([incoming, outgoing, missedcalls, rejected, totalCalls]);
}

CallLogsStruct createCallLogsStruct({
  String? incoming,
  String? outgoing,
  String? missedcalls,
  String? rejected,
  String? totalCalls,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CallLogsStruct(
      incoming: incoming,
      outgoing: outgoing,
      missedcalls: missedcalls,
      rejected: rejected,
      totalCalls: totalCalls,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CallLogsStruct? updateCallLogsStruct(
  CallLogsStruct? callLogs, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    callLogs
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCallLogsStructData(
  Map<String, dynamic> firestoreData,
  CallLogsStruct? callLogs,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (callLogs == null) {
    return;
  }
  if (callLogs.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && callLogs.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final callLogsData = getCallLogsFirestoreData(callLogs, forFieldValue);
  final nestedData = callLogsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = callLogs.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCallLogsFirestoreData(
  CallLogsStruct? callLogs, [
  bool forFieldValue = false,
]) {
  if (callLogs == null) {
    return {};
  }
  final firestoreData = mapToFirestore(callLogs.toMap());

  // Add any Firestore field values
  mapToFirestore(callLogs.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCallLogsListFirestoreData(
  List<CallLogsStruct>? callLogss,
) =>
    callLogss?.map((e) => getCallLogsFirestoreData(e, true)).toList() ?? [];
