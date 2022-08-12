
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wanderers/models/app_model.dart';
import 'package:wanderers/shared/provider_setup.dart';
import 'package:wanderers/views/home_page.dart';
import 'package:wanderers/views/launch_page.dart';

class FiskeApp extends StatelessWidget {
  const FiskeApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providersList,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const LaunchPage(),
      ),
    );
  }
}

