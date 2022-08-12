import 'package:wanderers/shared/location_constants.dart';
import 'package:wanderers/shared/ui_constants.dart';
import 'package:flutter/rendering.dart';
import 'package:latlong/latlong.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' as goog;
// import 'package:flutter_background_geolocation/flutter_background_geolocation.dart' as bg;


class LocationModel {
  LatLng rawLoc = LatLng(40.00373067259841, -105.26337386459677);
  LatLng currentPosition = LatLng(40.00373067259841, -105.26337386459677);
  //bg.Location locationVector;
  LatLng? sunPosition;
  double? distanceFromSun;
  double? latDistanceFromSun;
  double? lonDistanceFromSun;
  double? userX; // relative to sun in meters
  double? userY;
  SPACE_REGIONS? currentRegion;
  int? currentZone;
  int? currentZoneDistance; // +/- from center of zone
  double? currentZonePlaqueDistance;
  bool inOrbitPathRange = false;
  bool inPlaqueRange = false;
  HOME_VIEW mapIndex = HOME_VIEW.START;
  List<bool> objectPatchEnabled = [true, true, true, true, true, true, true, true, true, true, true, true, true];
  bool toggleAllObjects = true;
  List<bool> planetUISelected = [true, false, false, false, false];


  LocationModel(){
    rawLoc = LatLng(0, 0);
    currentPosition = LatLng(-1, -1);
    sunPosition = kPlaqueLocations[0];
    distanceFromSun = -1;
    latDistanceFromSun = -1;
    lonDistanceFromSun = -1;
    currentRegion = SPACE_REGIONS.UNDEFINED;
    currentZone = -1;
    currentZoneDistance = 1000000;
    currentZonePlaqueDistance = 1000000;
  }

}