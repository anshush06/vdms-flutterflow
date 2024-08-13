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
import 'package:geolocator/geolocator.dart';

Future<List<int>> addTimestampAndNameToImage(
    List<int> byteArray, String imageName) async {
  // Convert the byte array to Uint8List
  Uint8List imageBytes = Uint8List.fromList(byteArray);

  // Decode the image from the bytes
  img.Image image = img.decodeImage(imageBytes)!;

  // Add timestamp text
  String timestamp = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

  // Get the current location
  Position position = await _determinePosition();
  String coordinates =
      'Lat: ${position.latitude.toStringAsFixed(4)}, Long: ${position.longitude.toStringAsFixed(4)}';

  // Combine timestamp and coordinates
  String text = '$timestamp\n$coordinates';

  int padding = 10;
  int fontSize = 48;
  int textWidth = text.length * fontSize ~/ 3.5; // Estimation
  int textHeight = fontSize * 2 + padding; // Considering two lines of text

  // Draw a black rectangle as background
  img.fillRect(
    image,
    0,
    0,
    textWidth + padding * 2,
    textHeight + padding * 2,
    img.getColor(0, 0, 0),
  );

  // Draw the combined text on the image (on top of the black rectangle)
  img.drawString(image, img.arial_48, padding, padding, text,
      color: img.getColor(255, 255, 255));
  // Encode the image back to a List<int> (byte array)
  List<int> resultBytes = img.encodeJpg(image);
  return resultBytes;
}

Future<Position> _determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // Location services are not enabled don't continue
    // accessing the position and request users of the
    // App to enable the location services.
    return Future.error('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // Permissions are denied, next time you could try
      // requesting permissions again (this is also where
      // Android's shouldShowRequestPermissionRationale
      // returned true. According to Android guidelines
      // your App should show an explanatory UI now.
      return Future.error('Location permissions are denied');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    // Permissions are denied forever, handle appropriately.
    return Future.error(
      'Location permissions are permanently denied, we cannot request permissions.',
    );
  }

  // When we reach here, permissions are granted and we can
  // continue accessing the position of the device.
  return await Geolocator.getCurrentPosition();
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
