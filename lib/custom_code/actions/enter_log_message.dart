// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:path_provider/path_provider.dart';
import 'dart:io'; // Ensure to include dart:io for File operations

Future<void> deleteContentOfLogFileIfAccordingToSize() async {
  try {
    final directory = await getExternalStorageDirectory();
    if (directory == null) {
      throw Exception("Unable to access external storage directory.");
    }

    final logFilePath = '${directory.path}/app_log.txt';
    File logFile = File(logFilePath);

    if (await logFile.exists()) {
      final fileSize = await logFile.length();
      const maxFileSize = 5242880; // 5 MB

      if (fileSize > maxFileSize) {
        await logFile.writeAsString(''); // Clear the log file
        String message = "Message:";
        message = message + "\t" + "Previous Log Deleted!" + "\n\n";
        await enterLogMessage(message); // Ensure await is used here
      }
    }
  } catch (e) {
    print('Error in deleteContentOfLogFileIfAccordingToSize: ${e.toString()}');
  }
}

Future<void> enterLogMessage(String message) async {
  try {
    await deleteContentOfLogFileIfAccordingToSize();
    // Get external storage directory
    final directory = await getExternalStorageDirectory();
    if (directory == null) {
      throw Exception("Unable to access external storage directory.");
    }

    final logFilePath = '${directory.path}/app_log.txt';
    File logFile = File(logFilePath);

    // Write or append the message to the log file
    await logFile.writeAsString('$message\n', mode: FileMode.append);
  } catch (e) {
    print('Error writing to log file: ${e.toString()}');
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
