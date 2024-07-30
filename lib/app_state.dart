import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
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
      _username = prefs.getString('ff_username') ?? _username;
    });
    _safeInit(() {
      _userId = prefs.getString('ff_userId') ?? _userId;
    });
    _safeInit(() {
      _password = prefs.getString('ff_password') ?? _password;
    });
    _safeInit(() {
      _caseDetails = prefs
              .getStringList('ff_caseDetails')
              ?.map((x) {
                try {
                  return ResponseStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _caseDetails;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _username = '';
  String get username => _username;
  set username(String value) {
    _username = value;
    prefs.setString('ff_username', value);
  }

  String _userId = '';
  String get userId => _userId;
  set userId(String value) {
    _userId = value;
    prefs.setString('ff_userId', value);
  }

  String _password = '';
  String get password => _password;
  set password(String value) {
    _password = value;
    prefs.setString('ff_password', value);
  }

  List<ResponseStruct> _caseDetails = [];
  List<ResponseStruct> get caseDetails => _caseDetails;
  set caseDetails(List<ResponseStruct> value) {
    _caseDetails = value;
    prefs.setStringList(
        'ff_caseDetails', value.map((x) => x.serialize()).toList());
  }

  void addToCaseDetails(ResponseStruct value) {
    caseDetails.add(value);
    prefs.setStringList(
        'ff_caseDetails', _caseDetails.map((x) => x.serialize()).toList());
  }

  void removeFromCaseDetails(ResponseStruct value) {
    caseDetails.remove(value);
    prefs.setStringList(
        'ff_caseDetails', _caseDetails.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCaseDetails(int index) {
    caseDetails.removeAt(index);
    prefs.setStringList(
        'ff_caseDetails', _caseDetails.map((x) => x.serialize()).toList());
  }

  void updateCaseDetailsAtIndex(
    int index,
    ResponseStruct Function(ResponseStruct) updateFn,
  ) {
    caseDetails[index] = updateFn(_caseDetails[index]);
    prefs.setStringList(
        'ff_caseDetails', _caseDetails.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCaseDetails(int index, ResponseStruct value) {
    caseDetails.insert(index, value);
    prefs.setStringList(
        'ff_caseDetails', _caseDetails.map((x) => x.serialize()).toList());
  }
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
