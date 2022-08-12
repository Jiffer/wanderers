
import 'dart:async';

import 'package:wanderers/services/pd_patch_controller.dart';
import 'package:wanderers/shared/patch_constants.dart';
import 'package:flutter_pd/flutter_pd.dart';

class PdService {
  // libPd
  static final _pd = FlutterPd.instance;
  static PdPatchController _solarSystemPatch = PdPatchController((PdFlavors.SYSTEM), 0);

  Stream<ListEvent>? orbitAngleListEvent;

  PdService(){
    _setupPd();
  }

  ///////// DO NOT USE ME///////////
  Future<void> restartPd() async {
    // _pd.close(_solarSystemPatch.fileHandle.handle);
    _solarSystemPatch?.fileHandle?.close();

    // _pd = FlutterPd.instance; // ?????
    // https://www.oreilly.com/library/view/making-musical-apps/9781449331375/ch04.html
    // await _setupPd(); // need to call initAudio with restart = true ??
    // await _pd.startPd();
    print('restarting');
    await _pd.restartAudio(false);
    //do I need to also call pdbase.release() ? and/or  [PdBase setDispatcher:nil]
    openSolarSystemPatch();
  }
  Future<void> closePdPatch() async {
    // _pd.close(_solarSystemPatch.fileHandle.handle);
    _solarSystemPatch?.fileHandle?.close();

  }
  Future<void> restartPdReopenPatch() async {
    print('restarting and opening');
    await _pd.restartAudio(false);
    //do I need to also call pdbase.release() ? and/or  [PdBase setDispatcher:nil]
    openSolarSystemPatch();
  }

  Future<bool> _setupPd() async {
    await _pd.startPd();
    await _pd.startAudio(
      requireInput: false,
    );

    orbitAngleListEvent = _orbitAngleListEvent().asBroadcastStream();

    return true;
  }

  void openSolarSystemPatch() async{
    if(!_solarSystemPatch.isOpen) {
      print('checking if open');
      _solarSystemPatch?.isOpen = true;
      _solarSystemPatch?.fileHandle = await _pd.openAsset(_solarSystemPatch.path);

      await _pd.startAudio(
               requireInput: false,
             );

      print('opened solar system: ${_solarSystemPatch.isOpen}');
    }
  }

  ////////////////////////////////////////
  // send 1 to ramp sun sound on
  // send 0 to ramp sun sound off
  void sendOnOff(int index, bool value){
    //print('sending ${kOrbitPatchOnOff[index]}, $value');
    if(value)
      _pd.send(kOrbitPatchOnOff[index], 1);
    else _pd.send(kOrbitPatchOnOff[index], 0);
  }

  void initSequence(){
    _pd.send('initSequence', 1);
  }

  void startSystem(){
    _pd.send('startSystem', 1);
  }

  void sendSunOnOff(double value){
    _pd.send(_solarSystemPatch.onOffMessage, value);
  }

  void sendSunVolume(double value){
    _pd.send(kSunVolumeMessage, value);
  }

  void sendWaveformSelect(double value){
    _pd.send('waveformSelect', value);
  }

  void updateUserLocation(double x, double y){
    _pd.send(kSendUserX, x);
    _pd.send(kSendUserY, y);
  }

  void setHearingRange(double newRange){
    _pd.send('hearingRange', newRange);
  }


  void sendOrbitSpeed(double value){
    _pd.send('orbitSpeed', value);
  }
  void sendHeading(double value){
    //print('sending $value');
    _pd.send('heading', value);
  }

  Stream<ListEvent> _orbitAngleListEvent() async*{

    yield* _pd.receive('orbitAngleList').where((it) => it is ListEvent).cast();
  }

}