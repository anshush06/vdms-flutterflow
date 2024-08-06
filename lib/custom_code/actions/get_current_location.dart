// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:geolocator/geolocator.dart';

Future<String> getCurrentLocation() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Check if location services are enabled
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    return 'Location services are disabled.';
  }

  // Check for location permissions
  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return 'Location permissions are denied.';
    }
  }

  if (permission == LocationPermission.deniedForever) {
    bool openedSettings = await Geolocator.openAppSettings();
    if (openedSettings) {
      return 'Please enable location permissions in settings.';
    } else {
      return 'Location permissions are permanently denied. Please enable them in settings.';
    }
  }

  // Get the current location
  Position position = await Geolocator.getCurrentPosition();
  return '${position.latitude}-${position.longitude}';
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
