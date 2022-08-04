import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wanderers/app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    SystemUiOverlay.bottom,
    SystemUiOverlay.top
  ]);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const FiskeApp());
}
