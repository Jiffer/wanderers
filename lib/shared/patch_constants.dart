enum PdFlavors {
  SYSTEM,
  SUN,
  INNER,
  ORBIT_PATH,
  OUTER,
  UNDEFINED
}

class OrbitAngles {
  static double? mercury;
  static double? venus;
}

final String kSystemPatchPath = 'assets/patches/SolarSystem_noSound.pd';
final String kSendUserX = 'userX';
final String kSendUserY = 'userY';

////////////////////////////////////////
// patch paths and message strings
////////////////////////////////////////

final List<String> kOrbitPathsPatch = [
  'sun.pd',
  'assets/patches/MercuryOrbitalSine.pd',
  'assets/patches/VenusOrbitalSine.pd',
  'assets/patches/EarthOrbitalSine.pd',
  'assets/patches/MarsOrbitalSine.pd',
  //
  'assets/patches/AsteroidBelt.pd',
  'assets/patches/JupiterOrbitalSine.pd',
  'assets/patches/SaturnOrbitalSine.pd',
  'assets/patches/UranusOrbitalSine.pd',
  'assets/patches/NeptuneOrbitalSine.pd',
  'assets/patches/Pluto.pd',
];

final List<String> kOrbitPatchOnOff = [
  'SunOnOff',
  'MercuryOnOff',
  'VenusOnOff',
  'EarthOnOff',
  'MarsOnOff',
  //
  'AsteroidOnOff',
  'JupiterOnOff',
  'TrojansOnOff',
  'SaturnOnOff',
  'UranusOnOff',
  'NeptuneOnOff',
  'PlutoOnOff',
  'KuiperOnOff',
];

final List<String> kOrbitTouchMessage = [
  'sunTouch1',
  'mercuryTouch1',
  'venusTouch1',
  'earthTouch1',
  'marsTouch1',
  //
  'asteroidTouch1',
  'jupiterTouch1',
  'saturnTouch1',
  'uranusTouch1',
  'neptuneTouch1',
  'plutoTouch1',
];

////////////////////////////////////////
// Plaque patch paths and message strings
////////////////////////////////////////
final List<String> kPlaquePatchPaths = [
  'assets/patches/Plaque08.pd'
];

final List<String> kPlaquePatchOnOff = [
  'PlaqueOnOff'
];

final List<String> kPlaqueTouchMessage = [
  'plaqueTouch1'
];

////////////////////////////////////////
// Sun patch path + messages
////////////////////////////////////////
final String kSunPatchPath = 'assets/patches/Sun.pd';
final String kSunPatchOnOff = 'SunOnOff';
final String kSunTouchMessage = 'SunTouch';
final String kSunVolumeMessage = 'SunVolume';

////////////////////////////////////////
// Inner system patch paths and message strings
////////////////////////////////////////
final List<String> kInnerPatchPath = [
  'assets/patches/inner02.pd'
];
final List<String> kInnerPatchOnOff = [
  'innerOnOff',
];
final List<String> kInnerTouchMessage = ['innerSelect'];

////////////////////////////////////////
// Outer system patch paths and message strings
////////////////////////////////////////
final List<String> kOuterPatchPath = [
  'assets/patches/Outer.pd'
];
final List<String> kOuterPatchOnOff = [
  'outerOnOff',
];
final List<String> kOuterTouchMessage = [
  'outerTouch1',
];