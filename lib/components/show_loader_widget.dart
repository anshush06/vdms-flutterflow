import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'show_loader_model.dart';
export 'show_loader_model.dart';

class ShowLoaderWidget extends StatefulWidget {
  const ShowLoaderWidget({super.key});

  @override
  State<ShowLoaderWidget> createState() => _ShowLoaderWidgetState();
}

class _ShowLoaderWidgetState extends State<ShowLoaderWidget> {
  late ShowLoaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShowLoaderModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Loading....',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Roboto',
                        letterSpacing: 0.0,
                      ),
                ),
                Builder(
                  builder: (context) {
                    final sitepictures = FFAppState().sitePictures.toList();

                    return SizedBox(
                      width: double.infinity,
                      height: 180.0,
                      child: CarouselSlider.builder(
                        itemCount: sitepictures.length,
                        itemBuilder: (context, sitepicturesIndex, _) {
                          final sitepicturesItem =
                              sitepictures[sitepicturesIndex];
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://picsum.photos/seed/207/600',
                              width: 300.0,
                              height: 200.0,
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                        carouselController: _model.carouselController ??=
                            CarouselController(),
                        options: CarouselOptions(
                          initialPage: max(0, min(1, sitepictures.length - 1)),
                          viewportFraction: 0.5,
                          disableCenter: true,
                          enlargeCenterPage: true,
                          enlargeFactor: 0.25,
                          enableInfiniteScroll: true,
                          scrollDirection: Axis.horizontal,
                          autoPlay: false,
                          onPageChanged: (index, _) =>
                              _model.carouselCurrentIndex = index,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
