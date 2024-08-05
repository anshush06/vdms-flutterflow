// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Define the function that converts a byte array to an FFUploadedFile.
import 'dart:typed_data';
//import 'package:flutterflow/flutterflow.dart';

FFUploadedFile? convertToFFUploadedFile(
    List<int>? byteArray, String imageName) {
  // Check if the byte array is null or empty
  if (byteArray == null || byteArray.isEmpty) {
    return null;
  }
  // Convert the byte array to Uint8List
  Uint8List uint8List = Uint8List.fromList(byteArray);

  // Create and return an FFUploadedFile instance
  return FFUploadedFile(
    bytes: uint8List,
    name: imageName, // Set a default file name or customize it
    height: null, // Set the height if known, else leave as null
    width: null, // Set the width if known, else leave as null
  );
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
