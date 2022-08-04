import 'package:wanderers/models/app_model.dart';
import 'package:wanderers/shared/ui_constants.dart';
import 'package:wanderers/views/tutorial_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// move to global theme constants file:
double menuTextSize = 20;
double planetImageSize = 40;

class MainMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    AppModel model = Provider.of<AppModel>(context);
// TODO: add location view model for mapRecall "redraw"
    return Drawer(
        child: Container(
          color: Colors.black,
          child: ListView(children: <Widget>
          [
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Container(
                    child: Column(children: [
                      Expanded(child: Image.asset(kTitleImage)),
                    ],
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,)
                )
            ),

            MainMenuTile(Icons.help, 'Home', ()=>{
              // _lvm.mapRecall = true,
              model.selectedScreenIndex = PAGE_INDEX.HOME,
              Navigator.pop(context)}),
            MainMenuTile(Icons.info, 'About', ()=>{
              model.selectedScreenIndex = PAGE_INDEX.ABOUT,
              Navigator.pop(context)}),
            MainMenuTile(Icons.info_outline, 'CU In Space', ()=>{
              model.selectedScreenIndex = PAGE_INDEX.CU,
              Navigator.pop(context)
            }),
            MainMenuTile(Icons.info, 'Credits', ()=>{
              model.selectedScreenIndex = PAGE_INDEX.CREDITS,
              Navigator.pop(context)}),
            MainMenuTile(Icons.info_outline, 'Tutorial', ()=>{
              model.selectedScreenIndex = PAGE_INDEX.HOME,
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => TutorialPage()),
              )}),
            MainMenuTile(Icons.info_outline, '', ()=>{
              Navigator.pop(context)}),
            MainMenuTile(Icons.info_outline, '     ', ()=>{
              model.selectedScreenIndex = PAGE_INDEX.DEV,
              Navigator.pop(context)}),
          ],
          ),
        )
    );
  }
}

class MainMenuTile extends StatelessWidget{
  final IconData icon;
  final String text;
  final Function? onTap;
  MainMenuTile(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: InkWell(
        onTap: (){ if(onTap!= null){
          onTap!();
        }
    },
        child: Container(
          color: Colors.black,
          // height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
//                Icon(icon),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(text, style: TextStyle(fontSize: menuTextSize, color: Colors.white), textScaleFactor: 1.0),
                ),
              ],
              ),
//              Icon(Icons.arrow_right),
            ],
          ),
        ),
      ),
    );
  }
}
