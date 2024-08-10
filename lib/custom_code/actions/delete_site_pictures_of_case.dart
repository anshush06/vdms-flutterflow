// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:vdms/app_state.dart';

bool deleteSitePicturesOfCase(
    List<SitePictureListResponseStruct> sitePictures, String caseId) {
  int index = 0;
  for (var image in sitePictures) {
    if (image.caseId == caseId) {
      FFAppState().removeAtIndexFromSitePictures(index);
    }
    index++;
  }
  return true;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!