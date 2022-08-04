import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wanderers/models/app_model.dart';
import 'package:wanderers/shared/ui_constants.dart';
import 'package:wanderers/views/about_page.dart';
import 'package:wanderers/views/credit_page.dart';
import 'package:wanderers/views/cu_in_space.dart';
import 'package:wanderers/views/home_page.dart';
import 'package:wanderers/views/main_menu.dart';

// the Launch page routes to the various app views based
// on selections from the main menu
class LaunchPage extends StatefulWidget {
  const LaunchPage({Key? key}) : super(key: key);

  @override
  _LaunchPageState createState() => _LaunchPageState();
}

class _LaunchPageState extends State<LaunchPage> {

  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white,
    child: Container(
        color: Colors.black,
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 56.0,
              backgroundColor: Colors.black,
              elevation: 0,
              title: Text(''),
              iconTheme: IconThemeData(color: Colors.blueGrey),
            ),
            body: _getView(),
            backgroundColor: Colors.white,
            // drawers go here
            drawer: MainMenu(),
          ),
        ),
      ),
    );
  }

  Widget _getView() {
    AppModel model = Provider.of<AppModel>(context);
    switch(model.selectedScreenIndex) {
      case PAGE_INDEX.HOME:
        return HomePage();

      case PAGE_INDEX.ABOUT:
        return AboutPage();

      case PAGE_INDEX.CU:
        return CUPage();

      case PAGE_INDEX.CREDITS:
        return CreditPage();

      // case PAGE_INDEX.OBJECT:
      //   return ObjectPage();
      //
      // case PAGE_INDEX.DEV:
      //   return DevPage();
    }
    return Container(child: Text("uh oh"));
  }
}
