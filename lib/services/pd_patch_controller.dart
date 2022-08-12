import 'dart:async';
import 'package:wanderers/shared/patch_constants.dart';
import 'package:flutter_pd/flutter_pd.dart';

class PdPatchController{
  PdFileHandle? fileHandle;
  String path = '/';
  PdFlavors? flavor;
  int? index;
  // need to know if this one is open/closed fading in or out
  bool isOpen = false;
  bool isClosing = false; // if its open but fading to close? or can I just cancel the timer
  Duration? fadeTime;
  Timer? fadeTimer;
  // messages that work for me
  String? touchMessage;
  String onOffMessage = '0';

  PdPatchController(PdFlavors _flavor, int _index){
    flavor = _flavor;
    index = _index;
    fadeTimer = Timer(Duration(seconds: 0), () =>{print('timer init')});
    switch(_flavor){
      case PdFlavors.SYSTEM:
        path = kSystemPatchPath;
        onOffMessage = 'none';
        touchMessage = 'none';
        fadeTime = Duration(seconds: 6);
        break;
      case PdFlavors.SUN:
        path = kSunPatchPath;
        onOffMessage = kOrbitPatchOnOff[0];
        touchMessage = kSunTouchMessage;
        fadeTime = Duration(seconds: 6);
        break;
      case PdFlavors.INNER:
        path = kInnerPatchPath[_index];
        onOffMessage = kInnerPatchOnOff[_index];
        touchMessage = kInnerTouchMessage[_index];
        fadeTime = Duration(seconds: 6);
        break;
      case PdFlavors.OUTER:
        path = kOuterPatchPath[_index];
        onOffMessage = kOuterPatchOnOff[_index];
        touchMessage = kOuterTouchMessage[_index];
        fadeTime = Duration(seconds: 6);
        break;
      case PdFlavors.ORBIT_PATH:
        path = kOrbitPathsPatch[_index];
        onOffMessage = kOrbitPatchOnOff[_index];
        touchMessage = kOrbitTouchMessage[_index];
        fadeTime = Duration(seconds: 6);
        break;

      default:
        print(' do I know you?');
        break;
    }
  }
}