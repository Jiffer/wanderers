import 'package:latlong/latlong.dart';

enum SPACE_REGIONS {
  INNER,
  ASTEROID,
  OUTER,
  UNDEFINED
}

enum ZONES {
  SUN,
  MERCURY,
  VENUS,
  EARTH,
  MARS,
  ASTEROID_BELT,
  JUPITER,
  JUIPTER_TROJANS,
  SATURN,
  NEPTUNE,
  URANUS,
  PLUTO,
  KUIPER,
  UNDEFINED
}

final List<LatLng> kPlaqueLocations = [ // real
  // LatLng(40.00345527663827,  -105.26415880779294), // sun
  LatLng(40.00345527663827,  -105.26416), // sun
  // LatLng(40.00351206403226, -105.26408077227441), // mercury
  LatLng(40.00351206403226, -105.2641), // mercury
  // LatLng(40.00357849061489, -105.26411111476389), // venus
  LatLng(40.00357849061489, -105.26412), // venus
  // LatLng( 40.00361633490771,  -105.26412192741898), // earth
  LatLng( 40.00361633490771,  -105.264122), // earth
  // LatLng(40.003676181696356,  -105.26407130072383), // mars
  LatLng(40.003676181696356,  -105.26415), // mars
  LatLng(40.0039, -105.26402452970413), // asteroid belt...
  // belt inside (latitude: 40.00379960522056, longitude: -105.26402452970413), // 37 m
  // belt outside (latitude: 40.00393069818616, longitude: -105.26411413224903), // 50 m
  LatLng(40.00416710976511,  -105.26409602733818), // jupiter
  LatLng(40.004815910980106,  -105.26398387747375), // saturn
  LatLng(40.0062610,  -105.264390), // uranus
  LatLng(40.00756,  -105.26405), // neptune 264074
  LatLng(40.00803682491184,  -105.26407297710446)]; // pluto

// final List<double> kPlanetDistancesHardCoded = [
//   0, // sun
//   6.696, // mercury
//   13.63, // venus
//   14.75, // earth
//   29.14, // mars
//   86.56, // jupiter
//   151.7, // saturn
//   454.6, // neptune
//   501.6]; // pluto

final List<double> kOrbitPathDistances = [
  calculateDistance(kPlaqueLocations[0], kPlaqueLocations[0]), // Sun
  calculateDistance(kPlaqueLocations[1], kPlaqueLocations[0]), // Mercury
  calculateDistance(kPlaqueLocations[2], kPlaqueLocations[0]), // Venus
  calculateDistance(kPlaqueLocations[3], kPlaqueLocations[0]), // Earth
  calculateDistance(kPlaqueLocations[4], kPlaqueLocations[0]), // Mars
  calculateDistance(kPlaqueLocations[5], kPlaqueLocations[0]), // asteroid belt
  calculateDistance(kPlaqueLocations[6], kPlaqueLocations[0]), // Jupiter
  calculateDistance(kPlaqueLocations[6], kPlaqueLocations[0]), // Jupiter Trojans
  calculateDistance(kPlaqueLocations[7], kPlaqueLocations[0]), // Saturn
  calculateDistance(kPlaqueLocations[8], kPlaqueLocations[0]), // Uranus
  calculateDistance(kPlaqueLocations[9], kPlaqueLocations[0]), // Neptune
  calculateDistance(kPlaqueLocations[10], kPlaqueLocations[0]),  // pluto
  700]; // Kuiper Belt

// final double kOrbitScreenScaler = 5.555555; //( 5.55555 makes mercury ~50 pixels from sun)
const double kOrbitScreenScaler = 8.744483810392539; //( 8.744483810392539 = google map zoom scale of 20
// 7.353205089403228 for 19.75
final List<double> kOrbitScreenDistances = [
  -kOrbitScreenScaler * kOrbitPathDistances[0],
  -kOrbitScreenScaler * kOrbitPathDistances[1],
  -kOrbitScreenScaler * kOrbitPathDistances[2],
  -kOrbitScreenScaler * kOrbitPathDistances[3],
  -kOrbitScreenScaler * kOrbitPathDistances[4],
  -kOrbitScreenScaler * kOrbitPathDistances[5], // asteroid
  -kOrbitScreenScaler * kOrbitPathDistances[6],
  -kOrbitScreenScaler * kOrbitPathDistances[7], // trojans
  -kOrbitScreenScaler * kOrbitPathDistances[8],
  -kOrbitScreenScaler * kOrbitPathDistances[9],
  -kOrbitScreenScaler * kOrbitPathDistances[10],
  -kOrbitScreenScaler * kOrbitPathDistances[11],
  -kOrbitScreenScaler * kOrbitPathDistances[12], // kuiper
];



final double kInnerSolarSystemDistance = calculateDistance(kPlaqueLocations[0], kPlaqueLocations[4]) + 7;

final List<int> kPlanetPathWidth = [
  0, // sun
  0, // mercury
  0, // venus
  0, // earth
  0, // mars
  10, // asteroid belt
  10, // Jupiter
  0, // Jupiter Trojans
  10, // Saturn
  10, // Uranus
  10, // Neptune
  10, // Pluto
  100, // Kuiper Belt todo: adjust width and center based on actual size, +/- 100
];

final List<int> kPlaqueWidth = [
  0, // sun
  0, // mercury
  0, // venus
  0, // earth
  0, // mars
  0, // Asteroid Belt
  6, // Jupiter
  6, // Saturn
  7, // Uranus
  7, // Neptune
  6, // Pluto
];

double calculateDistance(LatLng distanceFrom, LatLng distanceTo) {
  const Distance distance = Distance();
  final double distanceInMeters = distance.as(LengthUnit.Meter,
      distanceTo, distanceFrom).toDouble();
  print('plaque distance calculated $distanceInMeters');
  return distanceInMeters;
}

double calculateLatDistanceFromSun(LatLng distanceFrom, LatLng distanceTo) {
  const Distance distance = Distance();
  LatLng _sunLat = LatLng(distanceTo.latitude, distanceFrom.longitude);
  final double distanceInMeters = distance.as(LengthUnit.Meter,
      _sunLat,
      distanceFrom).toDouble();
  return distanceInMeters;
}

double calculateLongDistanceFromSun(LatLng distanceFrom, LatLng distanceTo) {
  final Distance distance = Distance();
  LatLng _sunLong = LatLng(distanceFrom.latitude, distanceTo.longitude,);
  final double distanceInMeters = distance.as(LengthUnit.Meter,
      _sunLong,
      distanceFrom).toDouble();
  return distanceInMeters;
}

