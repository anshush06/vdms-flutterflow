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

import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'dart:io';

Future<void> shareLogFile() async {
  try {
    final directory = await getExternalStorageDirectory();
    if (directory == null) {
      throw Exception("Unable to access external storage directory.");
    }

    final logFilePath = '${directory.path}/vdms_log.txt';
    File logFile = File(logFilePath);

    if (await logFile.exists()) {
      // Share the log file
      await Share.shareFiles([logFilePath], text: 'VDMS Log File');
    } else {
      print('Log file does not exist.');
    }
  } catch (e) {
    print('Error sharing log file: ${e.toString()}');
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
