// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:typed_data';

class ImageCarouselWidget extends StatefulWidget {
  const ImageCarouselWidget({
    super.key,
    required this.sitePictures,
    this.initialIndex = 0,
    this.width,
    this.height,
  });

  final List<SitePictureListResponseStruct> sitePictures;
  final int initialIndex;
  final double? width;
  final double? height;

  @override
  State<ImageCarouselWidget> createState() => _ImageCarouselWidgetState();
}

class _ImageCarouselWidgetState extends State<ImageCarouselWidget> {
  late PageController _controller;
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: widget.initialIndex);
    currentIndex = widget.initialIndex;
  }

  void nextPage() {
    if (currentIndex < widget.sitePictures.length - 1) {
      _controller.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void previousPage() {
    if (currentIndex > 0) {
      _controller.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _controller,
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemCount: widget.sitePictures.length,
                  itemBuilder: (context, index) {
                    // Convert byte array to Uint8List
                    Uint8List uint8List =
                        Uint8List.fromList(widget.sitePictures[index].bytes!);

                    return Container(
                      width: widget.width ?? double.infinity,
                      height: widget.height ?? double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: MemoryImage(uint8List),
                          fit: BoxFit.contain,
                        ),
                      ),
                    );
                  },
                ),
              ),
              // Navigation Buttons Below the Image
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios,
                        color: Colors.black, size: 40),
                    onPressed: previousPage,
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_forward_ios,
                        color: Colors.black, size: 40),
                    onPressed: nextPage,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
