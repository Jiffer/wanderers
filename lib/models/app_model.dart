// global settings
// current state of UI navigation
import 'package:wanderers/shared/ui_constants.dart';
import 'package:flutter/material.dart';

class AppModel extends ChangeNotifier{

  PAGE_INDEX _selectedScreenIndex = PAGE_INDEX.HOME;
  OBJECT_INDEX _selectedObject = OBJECT_INDEX.SUN;
  bool _locationServicesActive = false;
  bool _gotValidLocation = false;


  AppModel(){
    _selectedScreenIndex = PAGE_INDEX.HOME;
    _locationServicesActive = false;
    _gotValidLocation = false;
  }

  PAGE_INDEX get selectedScreenIndex => _selectedScreenIndex;
  set selectedScreenIndex(PAGE_INDEX value){
    _selectedScreenIndex = value;
    notifyListeners();
  }

  OBJECT_INDEX get selectedObject => _selectedObject;
  set selectedObject(OBJECT_INDEX value){
    _selectedObject = value;
    notifyListeners();
  }

  bool get gotValidLocation => _gotValidLocation;
  set gotValidLocation(bool value) {
    _gotValidLocation = value;
    notifyListeners();
  }

  bool get locationServicesActive => _locationServicesActive;
  set locationServicesActive(bool value) {
    print('setting lsA: $value');
    _locationServicesActive = value;
    notifyListeners();
  }
}