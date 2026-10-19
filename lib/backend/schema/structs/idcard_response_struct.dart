// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IdcardResponseStruct extends FFFirebaseStruct {
  IdcardResponseStruct({
    String? idcardResponse,
    String? companyName,
    String? name,
    String? mobile,
    String? email,
    String? address,
    List<String>? list,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _idcardResponse = idcardResponse,
        _companyName = companyName,
        _name = name,
        _mobile = mobile,
        _email = email,
        _address = address,
        _list = list,
        super(firestoreUtilData);

  // "idcardResponse" field.
  String? _idcardResponse;
  String get idcardResponse => _idcardResponse ?? '';
  set idcardResponse(String? val) => _idcardResponse = val;

  bool hasIdcardResponse() => _idcardResponse != null;

  // "CompanyName" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  set companyName(String? val) => _companyName = val;

  bool hasCompanyName() => _companyName != null;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "Mobile" field.
  String? _mobile;
  String get mobile => _mobile ?? '';
  set mobile(String? val) => _mobile = val;

  bool hasMobile() => _mobile != null;

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "Address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "list" field.
  List<String>? _list;
  List<String> get list => _list ?? const [];
  set list(List<String>? val) => _list = val;

  void updateList(Function(List<String>) updateFn) {
    updateFn(_list ??= []);
  }

  bool hasList() => _list != null;

  static IdcardResponseStruct fromMap(Map<String, dynamic> data) =>
      IdcardResponseStruct(
        idcardResponse: data['idcardResponse'] as String?,
        companyName: data['CompanyName'] as String?,
        name: data['Name'] as String?,
        mobile: data['Mobile'] as String?,
        email: data['Email'] as String?,
        address: data['Address'] as String?,
        list: getDataList(data['list']),
      );

  static IdcardResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? IdcardResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'idcardResponse': _idcardResponse,
        'CompanyName': _companyName,
        'Name': _name,
        'Mobile': _mobile,
        'Email': _email,
        'Address': _address,
        'list': _list,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'idcardResponse': serializeParam(
          _idcardResponse,
          ParamType.String,
        ),
        'CompanyName': serializeParam(
          _companyName,
          ParamType.String,
        ),
        'Name': serializeParam(
          _name,
          ParamType.String,
        ),
        'Mobile': serializeParam(
          _mobile,
          ParamType.String,
        ),
        'Email': serializeParam(
          _email,
          ParamType.String,
        ),
        'Address': serializeParam(
          _address,
          ParamType.String,
        ),
        'list': serializeParam(
          _list,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static IdcardResponseStruct fromSerializableMap(Map<String, dynamic> data) =>
      IdcardResponseStruct(
        idcardResponse: deserializeParam(
          data['idcardResponse'],
          ParamType.String,
          false,
        ),
        companyName: deserializeParam(
          data['CompanyName'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['Name'],
          ParamType.String,
          false,
        ),
        mobile: deserializeParam(
          data['Mobile'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['Email'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['Address'],
          ParamType.String,
          false,
        ),
        list: deserializeParam<String>(
          data['list'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'IdcardResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is IdcardResponseStruct &&
        idcardResponse == other.idcardResponse &&
        companyName == other.companyName &&
        name == other.name &&
        mobile == other.mobile &&
        email == other.email &&
        address == other.address &&
        listEquality.equals(list, other.list);
  }

  @override
  int get hashCode => const ListEquality().hash([
        idcardResponse,
        companyName,
        name,
        mobile,
        email,
        address,
        const ListEquality().hash(list)
      ]);
}

IdcardResponseStruct createIdcardResponseStruct({
  String? idcardResponse,
  String? companyName,
  String? name,
  String? mobile,
  String? email,
  String? address,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    IdcardResponseStruct(
      idcardResponse: idcardResponse,
      companyName: companyName,
      name: name,
      mobile: mobile,
      email: email,
      address: address,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

IdcardResponseStruct? updateIdcardResponseStruct(
  IdcardResponseStruct? idcardResponseStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    idcardResponseStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addIdcardResponseStructData(
  Map<String, dynamic> firestoreData,
  IdcardResponseStruct? idcardResponseStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (idcardResponseStruct == null) {
    return;
  }
  if (idcardResponseStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && idcardResponseStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final idcardResponseStructData =
      getIdcardResponseFirestoreData(idcardResponseStruct, forFieldValue);
  final nestedData =
      idcardResponseStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      idcardResponseStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getIdcardResponseFirestoreData(
  IdcardResponseStruct? idcardResponseStruct, [
  bool forFieldValue = false,
]) {
  if (idcardResponseStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(idcardResponseStruct.toMap());

  // Add any Firestore field values
  mapToFirestore(idcardResponseStruct.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getIdcardResponseListFirestoreData(
  List<IdcardResponseStruct>? idcardResponseStructs,
) =>
    idcardResponseStructs
        ?.map((e) => getIdcardResponseFirestoreData(e, true))
        .toList() ??
    [];
