// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:image/image.dart' as img;
import 'package:intl/intl.dart';
import 'dart:typed_data';

List<int> addTimestampAndNameToImage(List<int> byteArray, String imageName) {
  // Convert the byte array to Uint8List
  Uint8List imageBytes = Uint8List.fromList(byteArray);

  // Decode the image from the bytes
  img.Image image = img.decodeImage(imageBytes)!;

  // Add timestamp text
  String timestamp = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

  // Get the current location
  // Position position = await _determinePosition();
  // String coordinates =
  //  'Lat: ${position.latitude.toStringAsFixed(4)}, Long: ${position.longitude.toStringAsFixed(4)}';

  // Combine timestamp and coordinates
  String text = '$timestamp';

  int padding = 10;
  int fontSize = 48;
  int textWidth = text.length * fontSize ~/ 3.5; // Estimation
  int textHeight = fontSize * 2 + padding; // Considering two lines of text

  // Draw a black rectangle as background
  img.fillRect(
    image,
    x1: 0,
    y1: 0,
    x2: textWidth + padding * 2,
    y2: textHeight + padding * 2,
    color: img.ColorFloat16.rgb(0.0, 0.0, 0.0),
  );

  // Draw the combined text on the image (on top of the black rectangle)
  img.drawString(image, text,
      font: img.arial48,
      x: padding,
      y: padding,
      color: img.ColorFloat16.rgb(1.0, 1.0, 1.0));
  // Encode the image back to a List<int> (byte array)
  List<int> resultBytes = img.encodeJpg(image);
  return resultBytes;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
