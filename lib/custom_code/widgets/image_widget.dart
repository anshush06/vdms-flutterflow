// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'dart:typed_data';
import 'package:image/image.dart' as img;

class ImageWidget extends StatefulWidget {
  const ImageWidget({
    super.key,
    this.width,
    this.height,
    this.fileName,
    this.byteArray,
    this.text,
  });

  final double? width;
  final double? height;
  final List<int>? byteArray;
  final String? fileName;
  final String? text;

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    if (widget.byteArray == null) {
      return Center(child: Text('No image data'));
    }

    Uint8List uint8List = Uint8List.fromList(widget.byteArray!);

    return Row(
      children: [
        Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF), // Fill color set to #FFFFFF
            shape: BoxShape.circle,
            image: DecorationImage(
              image: MemoryImage(uint8List),
              fit: BoxFit.cover,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08), // 8% opacity
                blurRadius: 50,
                offset: Offset(8, 0), // X-axis offset of 8, Y-axis offset of 0
              ),
            ],
          ),
        ),
        SizedBox(width: 10),
        Text(
          widget.text ?? 'No text provided',
        ),
      ],
    );
  }
}
