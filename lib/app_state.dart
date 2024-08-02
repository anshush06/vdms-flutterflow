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
    _safeInit(() {
      _selfieImages = prefs
              .getStringList('ff_selfieImages')
              ?.map((x) {
                try {
                  return SelfieImagesStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _selfieImages;
    });
    _safeInit(() {
      _travelStatus = prefs.getString('ff_travelStatus') ?? _travelStatus;
    });
    _safeInit(() {
      _startReading = prefs.getString('ff_startReading') ?? _startReading;
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

  List<SelfieImagesStruct> _selfieImages = [];
  List<SelfieImagesStruct> get selfieImages => _selfieImages;
  set selfieImages(List<SelfieImagesStruct> value) {
    _selfieImages = value;
    prefs.setStringList(
        'ff_selfieImages', value.map((x) => x.serialize()).toList());
  }

  void addToSelfieImages(SelfieImagesStruct value) {
    selfieImages.add(value);
    prefs.setStringList(
        'ff_selfieImages', _selfieImages.map((x) => x.serialize()).toList());
  }

  void removeFromSelfieImages(SelfieImagesStruct value) {
    selfieImages.remove(value);
    prefs.setStringList(
        'ff_selfieImages', _selfieImages.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromSelfieImages(int index) {
    selfieImages.removeAt(index);
    prefs.setStringList(
        'ff_selfieImages', _selfieImages.map((x) => x.serialize()).toList());
  }

  void updateSelfieImagesAtIndex(
    int index,
    SelfieImagesStruct Function(SelfieImagesStruct) updateFn,
  ) {
    selfieImages[index] = updateFn(_selfieImages[index]);
    prefs.setStringList(
        'ff_selfieImages', _selfieImages.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInSelfieImages(int index, SelfieImagesStruct value) {
    selfieImages.insert(index, value);
    prefs.setStringList(
        'ff_selfieImages', _selfieImages.map((x) => x.serialize()).toList());
  }

  String _travelStatus = '';
  String get travelStatus => _travelStatus;
  set travelStatus(String value) {
    _travelStatus = value;
    prefs.setString('ff_travelStatus', value);
  }

  String _startReading = '';
  String get startReading => _startReading;
  set startReading(String value) {
    _startReading = value;
    prefs.setString('ff_startReading', value);
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
