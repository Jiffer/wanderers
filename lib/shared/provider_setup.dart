//import 'package:fiske/services/audio_service.dart';
//import 'package:fiske/models/location_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:wanderers/models/location_view_model.dart';
import 'package:wanderers/services/pd_service.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import '../models/location_model.dart';
import '../models/app_model.dart';

List<SingleChildWidget> providersList = [
  ...models,
  ...independentServices,
  ...viewModels,
];

List<SingleChildWidget> models = [
  ChangeNotifierProvider<AppModel>(create: (_) => AppModel()),
  Provider<LocationModel>(create: (_) => LocationModel()),
];
List<SingleChildWidget> independentServices = [
 // Provider<AudioService>(create: (_) => AudioService()),
  Provider<PdService>(create: (_) => PdService())
];
List<SingleChildWidget> viewModels = [
  // ChangeNotifierProxyProvider3<LocationModel, AudioService, PdService, LocationViewModel>(
  //     create: (context) => LocationViewModel(locationModel: LocationModel(), audioService: AudioService(), pdService: PdService()),
  //     update: (context, locationModel, audioService, pdService, locationViewModel) =>
  //         LocationViewModel(locationModel: Provider.of<LocationModel>(context), audioService: Provider.of<AudioService>(context),
  //             pdService: Provider.of<PdService>(context))
  // ),

  ChangeNotifierProxyProvider(
      create: (context) => LocationViewModel(
          locationModel: LocationModel(),
          // AudioService...
          pdService: PdService()),
      update: (context, locationModel, pdService) =>
          LocationViewModel(locationModel: Provider.of<LocationModel>(context),
               pdService: Provider.of<PdService>(context)
          )
  )

];