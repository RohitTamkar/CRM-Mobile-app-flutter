// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OutletDataStruct extends FFFirebaseStruct {
  OutletDataStruct({
    String? outletId,
    String? outletName,
    DocumentReference? outletIdRef,
    int? createdDate,
    int? renewalDate,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _outletId = outletId,
        _outletName = outletName,
        _outletIdRef = outletIdRef,
        _createdDate = createdDate,
        _renewalDate = renewalDate,
        super(firestoreUtilData);

  // "outletId" field.
  String? _outletId;
  String get outletId => _outletId ?? '';
  set outletId(String? val) => _outletId = val;

  bool hasOutletId() => _outletId != null;

  // "outletName" field.
  String? _outletName;
  String get outletName => _outletName ?? '';
  set outletName(String? val) => _outletName = val;

  bool hasOutletName() => _outletName != null;

  // "outletIdRef" field.
  DocumentReference? _outletIdRef;
  DocumentReference? get outletIdRef => _outletIdRef;
  set outletIdRef(DocumentReference? val) => _outletIdRef = val;

  bool hasOutletIdRef() => _outletIdRef != null;

  // "createdDate" field.
  int? _createdDate;
  int get createdDate => _createdDate ?? 0;
  set createdDate(int? val) => _createdDate = val;

  void incrementCreatedDate(int amount) => createdDate = createdDate + amount;

  bool hasCreatedDate() => _createdDate != null;

  // "renewalDate" field.
  int? _renewalDate;
  int get renewalDate => _renewalDate ?? 0;
  set renewalDate(int? val) => _renewalDate = val;

  void incrementRenewalDate(int amount) => renewalDate = renewalDate + amount;

  bool hasRenewalDate() => _renewalDate != null;

  static OutletDataStruct fromMap(Map<String, dynamic> data) =>
      OutletDataStruct(
        outletId: data['outletId'] as String?,
        outletName: data['outletName'] as String?,
        outletIdRef: data['outletIdRef'] as DocumentReference?,
        createdDate: castToType<int>(data['createdDate']),
        renewalDate: castToType<int>(data['renewalDate']),
      );

  static OutletDataStruct? maybeFromMap(dynamic data) => data is Map
      ? OutletDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'outletId': _outletId,
        'outletName': _outletName,
        'outletIdRef': _outletIdRef,
        'createdDate': _createdDate,
        'renewalDate': _renewalDate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'outletId': serializeParam(
          _outletId,
          ParamType.String,
        ),
        'outletName': serializeParam(
          _outletName,
          ParamType.String,
        ),
        'outletIdRef': serializeParam(
          _outletIdRef,
          ParamType.DocumentReference,
        ),
        'createdDate': serializeParam(
          _createdDate,
          ParamType.int,
        ),
        'renewalDate': serializeParam(
          _renewalDate,
          ParamType.int,
        ),
      }.withoutNulls;

  static OutletDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      OutletDataStruct(
        outletId: deserializeParam(
          data['outletId'],
          ParamType.String,
          false,
        ),
        outletName: deserializeParam(
          data['outletName'],
          ParamType.String,
          false,
        ),
        outletIdRef: deserializeParam(
          data['outletIdRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['OUTLET'],
        ),
        createdDate: deserializeParam(
          data['createdDate'],
          ParamType.int,
          false,
        ),
        renewalDate: deserializeParam(
          data['renewalDate'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'OutletDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OutletDataStruct &&
        outletId == other.outletId &&
        outletName == other.outletName &&
        outletIdRef == other.outletIdRef &&
        createdDate == other.createdDate &&
        renewalDate == other.renewalDate;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([outletId, outletName, outletIdRef, createdDate, renewalDate]);
}

OutletDataStruct createOutletDataStruct({
  String? outletId,
  String? outletName,
  DocumentReference? outletIdRef,
  int? createdDate,
  int? renewalDate,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OutletDataStruct(
      outletId: outletId,
      outletName: outletName,
      outletIdRef: outletIdRef,
      createdDate: createdDate,
      renewalDate: renewalDate,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OutletDataStruct? updateOutletDataStruct(
  OutletDataStruct? outletData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    outletData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOutletDataStructData(
  Map<String, dynamic> firestoreData,
  OutletDataStruct? outletData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (outletData == null) {
    return;
  }
  if (outletData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && outletData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final outletDataData = getOutletDataFirestoreData(outletData, forFieldValue);
  final nestedData = outletDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = outletData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOutletDataFirestoreData(
  OutletDataStruct? outletData, [
  bool forFieldValue = false,
]) {
  if (outletData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(outletData.toMap());

  // Add any Firestore field values
  mapToFirestore(outletData.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOutletDataListFirestoreData(
  List<OutletDataStruct>? outletDatas,
) =>
    outletDatas?.map((e) => getOutletDataFirestoreData(e, true)).toList() ?? [];
