import 'dart:async';
import 'dart:math';
import 'package:wanderers/services/pd_service.dart';
import 'package:wanderers/shared/location_constants.dart';
import 'package:wanderers/models/location_model.dart';
// import 'package:fiske/services/audio_service.dart';
import 'package:wanderers/shared/ui_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_background_geolocation/flutter_background_geolocation.dart' as bg;
import 'package:flutter_pd/flutter_pd.dart';
import 'package:latlong/latlong.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart' as goog;
// import 'package:audio_session/audio_session.dart';

// LocationViewModel is more than just the view on the screen
// this also includes the "sound view model"

class LocationViewModel extends ChangeNotifier{
  static LocationModel? _locationModel;
  PdService? _pdService;
  double orbitSpeedSlider = 0; // todo: set initial value make non-nullable
  double orbitSpeed = pow(10, 1).toDouble();

  // constructor
  LocationViewModel({@required locationModel, @required pdService}){
    _locationModel = locationModel;
    //aService = audioService;
    _pdService = pdService;
    //orbitSpeed = .1;
    //orbitSpeedSlider = -1;
    //_initPlatformState(); // for geolocation
  }

  void openPatch(){
    _pdService?.openSolarSystemPatch();
  }

  onOrbitSpeedChange(double value){
    orbitSpeedSlider = value;
    orbitSpeed = pow(10, value).toDouble();
    _pdService?.sendOrbitSpeed(orbitSpeed);

    notifyListeners();
  }

  Stream<ListEvent>? get orbitAngleListStream => _pdService?.orbitAngleListEvent;
}