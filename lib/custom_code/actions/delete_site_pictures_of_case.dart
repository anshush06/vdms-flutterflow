// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
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
  List<int> indicesToDelete = [];

  for (int index = 0; index < sitePictures.length; index++) {
    if (sitePictures[index].caseId == caseId) {
      indicesToDelete.add(index);
    }
  }

  // Remove items starting from the end of the list to avoid reindexing issues.
  for (int i = indicesToDelete.length - 1; i >= 0; i--) {
    FFAppState().removeAtIndexFromSitePictures(indicesToDelete[i]);
  }
  return true;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
