// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'dart:typed_data';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:image/image.dart' as img;
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';

String base64ConvertedString(String str) {
  return base64.encode(utf8.encode(str));
}

Future<bool> convertCompressAndUpload(
    String fileName, // Directly receive the file name
    List<int> byteArray, // Directly receive the byte array
    String outputFileName,
    String reading,
    String message,
    String fieldengineerid) async {
  try {
    // Convert the byte array to Uint8List
    Uint8List uint8List = Uint8List.fromList(byteArray);

    // Get the temporary directory to save the file
    Directory tempDir = await getTemporaryDirectory();
    String tempPath = tempDir.path;

    // Create a file in the temporary directory
    File file = File('$tempPath/$fileName');
    print('FILE HERE =============== $file');

    // Write the byte array to the file
    await file.writeAsBytes(uint8List);

    // Read the image from the file
    img.Image? image = img.decodeImage(file.readAsBytesSync());

    if (image == null) {
      print('Failed to decode image');
      return false;
    }

    // Compress the image (example: encode as JPEG with quality = 70)
    List<int> compressedBytes = img.encodeJpg(image, quality: 70);

    // Write the compressed bytes to a new file
    File compressedFile = File('$tempPath/$outputFileName');
    await compressedFile.writeAsBytes(compressedBytes);

    // Upload the image
    double timeStamp = DateTime.now().millisecondsSinceEpoch / 1000;
    String stringTimeStamp = timeStamp.toInt().toString();
    String type = (message == 'Start your day') ? 'start' : 'end';
    var params = {
      'meter_reading': reading,
      'type': type, // Replace with the actual type
      'field_engineer_id': fieldengineerid,
      'datetime': DateTime.now().toUtc().toString(),
    };

    var headers = {
      'device_id': ' 96db57db06605205', // Replace with the actual device id
      'correlation_id': 'zSF1clTyQX', // Replace with the actual correlation id
      'app_version': '2.1',
      'api_version': '1',
      'app_version_code': '1',
      'developer': 'velocity',
    };

    // Generate the URL (replace with your actual method to generate the URL)
    var url =
        'http://vdmsstaging.pvplglobal.com/api/saveStartEndDayReading'; // Replace with the actual URL
    if (url.contains('mock_url')) {
      headers['apitoken'] = base64Encode(utf8.encode(stringTimeStamp));
    } else {
      headers['api_token'] = base64Encode(utf8.encode(stringTimeStamp));
    }

    var request = http.MultipartRequest('POST', Uri.parse(url));
    print('COMPRESSED FILE HERE =============== $compressedFile');
    request.files.add(await http.MultipartFile.fromPath(
      'meter_reading_image',
      file.path,
      contentType: MediaType('image', file.path.split('.').last),
    ));
    headers.forEach((key, value) {
      request.headers[key] = value;
    });
    params.forEach((key, value) {
      request.fields[key] = value;
    });

    print('API URL: $url');
    print('Request: ${request.files.first.contentType.toString()}');

    final response = await request.send();

    var responseData = await response.stream.bytesToString();
    print('API PARAMS: $params');
    print('API HEADERS: ${request.headers.toString()}');
    print('API RESPONSE: $responseData');

    if (response.statusCode == 200) {
      var decodedData = jsonDecode(responseData.toString());
      print('Response: $decodedData');
      if (decodedData['error'] != null && decodedData['error'].isNotEmpty) {
        print('Error Message: ${decodedData['error']['message']}');
        return false; // Indicate that there was an error
      }
      return true;
    } else {
      print(response.statusCode.toString());
      return false;
    }
  } catch (e, stackTrace) {
    print('Failed to process and upload image: $e');
    print(stackTrace);
    return false;
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
