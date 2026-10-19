// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TimeRangeStruct extends FFFirebaseStruct {
  TimeRangeStruct({
    String? start,
    String? end,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _start = start,
        _end = end,
        super(firestoreUtilData);

  // "start" field.
  String? _start;
  String get start => _start ?? '';
  set start(String? val) => _start = val;

  bool hasStart() => _start != null;

  // "end" field.
  String? _end;
  String get end => _end ?? '';
  set end(String? val) => _end = val;

  bool hasEnd() => _end != null;

  static TimeRangeStruct fromMap(Map<String, dynamic> data) => TimeRangeStruct(
        start: data['start'] as String?,
        end: data['end'] as String?,
      );

  static TimeRangeStruct? maybeFromMap(dynamic data) => data is Map
      ? TimeRangeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'start': _start,
        'end': _end,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'start': serializeParam(
          _start,
          ParamType.String,
        ),
        'end': serializeParam(
          _end,
          ParamType.String,
        ),
      }.withoutNulls;

  static TimeRangeStruct fromSerializableMap(Map<String, dynamic> data) =>
      TimeRangeStruct(
        start: deserializeParam(
          data['start'],
          ParamType.String,
          false,
        ),
        end: deserializeParam(
          data['end'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TimeRangeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TimeRangeStruct && start == other.start && end == other.end;
  }

  @override
  int get hashCode => const ListEquality().hash([start, end]);
}

TimeRangeStruct createTimeRangeStruct({
  String? start,
  String? end,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TimeRangeStruct(
      start: start,
      end: end,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TimeRangeStruct? updateTimeRangeStruct(
  TimeRangeStruct? timeRange, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    timeRange
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTimeRangeStructData(
  Map<String, dynamic> firestoreData,
  TimeRangeStruct? timeRange,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (timeRange == null) {
    return;
  }
  if (timeRange.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && timeRange.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final timeRangeData = getTimeRangeFirestoreData(timeRange, forFieldValue);
  final nestedData = timeRangeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = timeRange.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTimeRangeFirestoreData(
  TimeRangeStruct? timeRange, [
  bool forFieldValue = false,
]) {
  if (timeRange == null) {
    return {};
  }
  final firestoreData = mapToFirestore(timeRange.toMap());

  // Add any Firestore field values
  mapToFirestore(timeRange.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTimeRangeListFirestoreData(
  List<TimeRangeStruct>? timeRanges,
) =>
    timeRanges?.map((e) => getTimeRangeFirestoreData(e, true)).toList() ?? [];
