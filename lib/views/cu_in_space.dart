// dart
import 'dart:core';
// flutter
import 'package:wanderers/models/app_model.dart';
import 'package:wanderers/views/view_widgets/webview_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class   CUPage extends StatefulWidget {
  @override
  _CUPageState createState() => _CUPageState();
}

class _CUPageState extends State<CUPage> {



  @override
  Widget build(BuildContext context) {
    // AudioService audioService = Provider.of<AudioService>(context);
    return _getObjectView();
  }

  Widget _getObjectView() {
    // return Selector<LocationViewModel, HOME_VIEW>( // with Tuple2?
    //   builder: (context, mapIndexData, child) {
    AppModel _model = Provider.of<AppModel>(context);
    // LocationModel _locationModel = Provider.of<LocationModel>(context);
    switch (_model.selectedObject) {
    // case OBJECT_INDEX.SUN:
    //   return WebViewContainer('https://en.wikipedia.org/wiki/Sun');
    // case OBJECT_INDEX.MERCURY:
    //   return WebViewContainer('https://en.wikipedia.org/wiki/Mercury_(planet)');

      default: // HOME_VIEW.OUTER
        return WebViewContainer('https://www.colorado.edu/fiske/colorado-scale-model-solar-system/cu-in-space');
    // return WebViewContainer('https://www.bigkidscience.com/eclipse-glasses/', 'Outer System test');
    }
    // },
    // selector: (context, lvm) => lvm.mapIndex,);
  } // _getObjectView
}

