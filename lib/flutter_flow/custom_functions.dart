import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/sqlite/sqlite_manager.dart';

String? hashPassword(String? userPassword) {
  List<int> utf8Bytes = utf8.encode(userPassword!);
  // Encode the UTF-8 bytes to a base64 string
  String base64String = base64.encode(utf8Bytes);
  return base64String;
}
