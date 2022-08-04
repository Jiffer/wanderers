import 'package:wanderers/shared/location_constants.dart';
import 'package:flutter/material.dart';

const IconData kControlsIcon = Icons.settings_input_component_rounded;
const IconData kCenterOnSunIcon = Icons.wb_sunny;
const IconData kCenterOnUserIcon = Icons.my_location;

enum PAGE_INDEX {
  HOME,
  ABOUT,
  CREDITS,
  CU,
  OBJECT,
  DEV,
}

enum HOME_VIEW {
  START,
  LOCATION_REQUEST,
  INTRO,
  LOADING,
  SYSTEM,
  OUT_OF_RANGE,
  DEFAULT
}

enum OBJECT_INDEX {
  SUN,
  MERCURY,
  VENUS,
  EARTH,
  MARS,
  ASTEROID,
  JUPITER,
  TROJANS,
  SATURN,
  URANUS,
  NEPTUNE,
  PLUTO,
  KUIPER
}

final List<String> kObjectNames = [
  'Sun', 'Mercury', 'Venus', 'Earth', 'Mars', 'Asteroid Belt',
  'Jupiter', 'Jupiter Trojans', 'Saturn', 'Uranus', 'Neptune', 'Pluto', 'Kuiper Belt',
];

final String kTitleImage = 'assets/images/w-wordmark+28x2.png'; //'assets/images/WonderersWordmarkArtboard_white-150.png';

final List<String> kObjectMenuImages = [
  'assets/images/menu/sun.png',
  'assets/images/menu/mercury.png',
  'assets/images/menu/venus.png',
  'assets/images/menu/earth.png',
  'assets/images/menu/mars.png',
  'assets/images/menu/bennu-beauty.jpg',
  'assets/images/menu/jupiter.png',
  'assets/images/menu/trojans.png' ,
  'assets/images/menu/saturn.png',
  'assets/images/menu/uranus.png',
  'assets/images/menu/neptune.png',
  'assets/images/menu/pluto.png',
  'assets/images/menu/arrokoth.png',
];

final List<String> kPlanetImages = [
  'assets/images/map/0.png',
  'assets/images/map/1.png',
  'assets/images/map/2.png',
  'assets/images/map/3.png',
  'assets/images/map/4.png',
  'assets/images/map/AbeltRes2.png',
  'assets/images/map/6.png',
  'assets/images/map/trojans.png',
  'assets/images/map/7.png',
  'assets/images/map/8.png',
  'assets/images/map/9.png',
  'assets/images/map/10.png',
  'assets/images/map/KBeltRes2.png',
];

final List<String> kObjectVideoUrls = [
  'https://drive.google.com/uc?export=download&id=10j94GjwhPwItIAq5BAEJvjmXRDQQmgSg', // Sun
  'https://drive.google.com/uc?export=download&id=1fkaOHT_8rBIcXzk2IWKCIEAtakYj6Pf9', // Mercury
  'https://drive.google.com/uc?export=download&id=1xTYZ3EPNnR73M7aLk1RWq6oP8ZiCMeT7', // Venus
  'https://drive.google.com/uc?export=download&id=1jQpSaxQbKzWrwkxjQl76bt4yfsWDZGiP', // Earth
  'https://drive.google.com/uc?export=download&id=1-ApAO-ALKBboKPSJ9Txqx4ErUripnu2L', // Mars
  'https://drive.google.com/uc?export=download&id=1gzSJMQ3jppHr4K_urpm2-j8L2wTGBs7V', // Asteroid Belt (Bennu)
  'https://drive.google.com/uc?export=download&id=1tUy6GjWN8My0VxNIIpZKnZNDabivmfVl', // Jupiter
  'https://drive.google.com/uc?export=download&id=1O5qeonJUBEpFNVaJlfhi2dEJ68iQxO8b', // J's Trojans
  'https://drive.google.com/uc?export=download&id=16g3mQUWrUsKY86w1lmbcQX0y1cfT6Ids', // Saturn
  'https://drive.google.com/uc?export=download&id=1WYBWCJFEcYa6nXYbzzfqDWN28ciJr2wj', // Uranus
  'https://drive.google.com/uc?export=download&id=1zk0zvINEzORK2MwMCFdWteCaFOgWYdbQ', // Neptune
  'https://drive.google.com/uc?export=download&id=1lXtLv4OpfsT7GncUH-fJs1Zp3NkEWBlW', // Pluto
  'https://drive.google.com/uc?export=download&id=132Wjj806FhWBDBY3Fj01lLX5EhXBRKc_' // Kuiper Belt (Arrokoth animation)
  // 'https://creative.colorado.edu/~harrimj/wanderers_videos/sun.mp4', // sun
  // 'https://creative.colorado.edu/~harrimj/wanderers_videos/mercury.mp4', // mercury
  // 'https://creative.colorado.edu/~harrimj/wanderers_videos/Venus.mp4', // venus
  // 'https://creative.colorado.edu/~harrimj/wanderers_videos/earth.mp4', // earth
  // 'https://creative.colorado.edu/~harrimj/wanderers_videos/Mars.mp4', // mars
  // // 'https://drive.google.com/uc?export=download&id=1x6bBLnMl3CCpg8oOWjNfKGzYSNy31HTU', // asteroid // Ceres via SOS
  // 'https://creative.colorado.edu/~harrimj/wanderers_videos/benu-trim.mov', // asteroid belt // Benu
  // 'https://creative.colorado.edu/~harrimj/wanderers_videos/jupiter.mp4', // jupiter
  // 'https://creative.colorado.edu/~harrimj/wanderers_videos/trojan-loop-wJ.mov', // jupiter trojans
  // 'https://creative.colorado.edu/~harrimj/wanderers_videos/saturn.mp4', // saturn
  // 'https://creative.colorado.edu/~harrimj/wanderers_videos/uranus.mp4', // uranus
  // 'https://creative.colorado.edu/~harrimj/wanderers_videos/Neptune.mp4', // neptune
  // 'https://creative.colorado.edu/~harrimj/wanderers_videos/pluto.mp4', // pluto
  // 'https://creative.colorado.edu/~harrimj/wanderers_videos/Arrokath_animation_color.mp4', // kuiper
];

final List<String> kDataIcons = [
  'assets/images/icons/balance.png', // mass
  'assets/images/icons/world.png', // rotational
  'assets/images/icons/solar-system.png' // orbital
];

// values (source: https://nssdc.gsfc.nasa.gov/planetary/factsheet/)
// sun rotational period: http://www.star.bris.ac.uk/bjm/solar/solarrot.html#:~:text=AT%20the%20equator%20the%20Solar,position%20as%20viewed%20from%20Earth.
final List<List<String>> kObjectFacts =
[
  ['333,000 x Earth', '25.4', '-'], // sun
  ['6.8% Earth', '1407.6', '88'], // mercury
  ['80% Earth', '-5832.5', '224.7'], // venus
  ['5.97 x 10^24 kg', '23.9', '365.2'], // earth
  ['11% Earth', '24.6', '687'], // mars
  ['.04% Earth', '-', '1,191-2,089'], // asteroid ?
  ['318 x Earth', '9.9', '4,331'], // Jupiter
  ['.009% Earth', '-', '4,331'], // trojans?
  ['95 x Earth', '10.7', '10,747'], // saturn
  ['14.5 x Earth', '-17.2', '30,589'], // uranus
  ['17.2 x Earth', '16.1', '59,800'], // neptune
  ['.2% Earth', '-153.3', '90,560'], // pluto
  ['2% Earth', '-', '59,976-148,880'], // kuiper
  // ['19,890,000', '-', '-'], // sun
  // ['0.33', '1407.6', '88'], // mercury
  // ['4.87', '-5832.5', '224.7'], // venus
  // ['5.97', '23.9', '365.2'], // earth
  // ['0.642', '24.6', '687'], // mars
  // ['-', '-', '-'], // asteroid ?
  // ['1,898', '9.9', '4,331'], // Jupiter
  // ['-', '-', '4,331'], // trojans?
  // ['568', '10.7', '10,747'], // saturn
  // ['86.6', '-17.2', '30,589'], // uranus
  // ['102', '16.1', '59,800'], // neptune
  // ['0.0146', '-153.3', '90,560'], // pluto
  // ['-', '-', '100,000+'], // kuiper
];

final List<String> kObjectNotes = [
  '', // sun
  '', // mercury
  '', // venus
  '', // earth
  '', // mars
  'Bennu is an asteroid in the Apollo group.', // asteroid belt
  '',// jupiter
  'The Trojans are a group of asteroids that share Jupiter\'s orbit around the Sun.', // trojans
  '', //sat
  '', //uranus
  '', // neptune
  '', // pluto
  'Arrokoth is a trans-Neptunian object located in the Kuiper belt.' // Kuipter Belt
];

final List<List<String>> kObjectIcons = [
  ['assets/images/icons/sun1.png','assets/images/icons/sun2.png', 'assets/images/icons/sun3.png'], // sun
  ['assets/images/icons/mercury1.png','assets/images/icons/mercury2.png', 'assets/images/icons/mercury3.png'], // mercury
  ['assets/images/icons/venus1.png','assets/images/icons/venus2.png'], // venus
  ['assets/images/icons/earth1.png','assets/images/icons/sun2.png', ], // earth
  ['assets/images/icons/mars1.png','assets/images/icons/sun2.png', ], // mars
  ['assets/images/icons/asteroid1.png','assets/images/icons/sun2.png',], // asteroid
  ['assets/images/icons/icon1.png','assets/images/icons/icon2.png', 'assets/images/icons/icon3.png'], // jupiter
  ['assets/images/icons/icon1.png','assets/images/icons/icon2.png', 'assets/images/icons/icon3.png'], // trojans
  ['assets/images/icons/icon1.png','assets/images/icons/icon2.png', 'assets/images/icons/icon3.png'], // saturn
  ['assets/images/icons/icon1.png','assets/images/icons/icon2.png', 'assets/images/icons/icon3.png'], // uranus
  ['assets/images/icons/icon1.png','assets/images/icons/icon2.png', 'assets/images/icons/icon3.png'], // neptune
  ['assets/images/icons/icon1.png','assets/images/icons/icon2.png', 'assets/images/icons/icon3.png'], // pluto
  ['assets/images/icons/icon1.png','assets/images/icons/icon2.png', 'assets/images/icons/icon3.png'], // kuiper
];

final List<String> kTutorialImages = [
  'assets/images/tutorial/controls.png',
  'assets/images/tutorial/sonificationControls.png',
  'assets/images/tutorial/objectMenu.png',
  'assets/images/tutorial/mainMenu.png',
  'assets/images/tutorial/mapButton.png',
  'assets/images/tutorial/WonderersW_150Artboard20-150x-8.png', // w
  'assets/images/tutorial/WonderersH_150Artboard-150x-8.png', // headphones
  'assets/images/tutorial/home_system.png',
];

//
// double kKuiperImageSize = 3622; // pixels
double kKuiperImageSize = 4079; // pixels
double kKuiperTargetSize = 2 * ((700 + 200) * kOrbitScreenScaler); // center of kuiper (m) and range on either end
double kKuiperScaler = kKuiperImageSize / kKuiperTargetSize;
double kKuiperOffset = -kKuiperTargetSize * .5;


double kAsteroidImageSize = 2826;
// double kAsteroidImageSize = 2826;
double kAsteroidTargetSize = 2 * ((51 + 10) * kOrbitScreenScaler);
double kAsteroidScaler = kAsteroidImageSize / kAsteroidTargetSize;
double kAsteroidOffset = -kAsteroidTargetSize * .5;

// Theme data