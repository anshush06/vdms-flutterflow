// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/backend/api_requests/api_interceptor.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

import '/backend/api_requests/api_interceptor.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class CaptureLogs extends FFApiInterceptor {
  @override
  Future<void> deleteContentOfLogFileIfAccordingToSize() async {
    try {
      final directory = await getExternalStorageDirectory();
      if (directory == null) {
        throw Exception("Unable to access external storage directory.");
      }

      final logFilePath = '${directory.path}/vdms_log.txt';
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
      print(
          'Error in deleteContentOfLogFileIfAccordingToSize: ${e.toString()}');
    }
  }

  @override
  Future<void> enterLogMessage(String message) async {
    try {
      await deleteContentOfLogFileIfAccordingToSize();
      // Get external storage directory
      final directory = await getExternalStorageDirectory();
      if (directory == null) {
        throw Exception("Unable to access external storage directory.");
      }

      final logFilePath = '${directory.path}/vdms_log.txt';
      File logFile = File(logFilePath);

      // Write or append the message to the log file
      await logFile.writeAsString('$message\n', mode: FileMode.append);
    } catch (e) {
      print('Error writing to log file: ${e.toString()}');
    }
  }

  @override
  Future<ApiCallOptions> onRequest({
    required ApiCallOptions options,
  }) async {
    // Perform any necessary calls or modifications to the [options] before
    // the API call is made.
    String mes = 'Current Time:- ' + DateTime.now().toString() + "\n";
    mes += 'API URL:- ' + options.apiUrl + "\n";

    // Handling potential null value for body (String?)
    mes += "PARAMS:- " + (options.body ?? "No Body") + "\n";

    // Convert headers (Map<String, dynamic>) to a string
    mes += "HEADERS:- " + options.headers.toString() + "\n";

    await enterLogMessage(mes);
    return options;
  }

  @override
  Future<ApiCallResponse> onResponse({
    required ApiCallResponse response,
    required Future<ApiCallResponse> Function() retryFn,
  }) async {
    // Perform any necessary calls or modifications to the [response] prior
    // to returning it.
    String message = response.statusCode.toString();
    message += 'Current Time:- ' + DateTime.now().toString() + "\n";
    message = message + 'STATUS CODE' + response.response?.statusCode;
    // Convert headers (Map<String, String>) to a string
    message += "HEADERS:- " + response.response?.headers.toString() + "\n";

    // Convert response to string
    message += "\t" + "RESPONSE PARAM" + "\n";
    message += "\t" + (response.response?.body ?? "No Response Body") + "\n";

    await enterLogMessage(message);
    return response;
  }
}
