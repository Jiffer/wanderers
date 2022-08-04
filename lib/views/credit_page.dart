// dart
import 'dart:core';
// flutter
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

class CreditPage extends StatefulWidget {
  @override
  _CreditPageState createState() => _CreditPageState();
}

class _CreditPageState extends State<CreditPage> {

  @override
  Widget build(BuildContext context) {
    double hFontSize = 16.0;

    // AudioService audioService = Provider.of<AudioService>(context);
    return Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.fromLTRB(0, 40, 20, 40),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Credits", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 16.0, ),
                    children: <InlineSpan>[
                      TextSpan(text: 'Created by:\n',
                          style: TextStyle(fontSize: hFontSize, fontWeight: FontWeight.bold)),

                      WidgetSpan(child: InkWell(
                        child: Text('Roberto Azaretto', style: TextStyle(color: Colors.black, fontSize: 16.0, decoration: TextDecoration.underline)),
                        onTap: () => launch('https://robertoazaretto.wordpress.com/'),
                      )),
                      TextSpan(text: '\n'),
                      WidgetSpan(child: InkWell(
                        child: Text('Jiffer Harriman', style: TextStyle(color: Colors.black, fontSize: 16.0, decoration: TextDecoration.underline)),
                        onTap: () => launch('http://www.jifferharriman.com'),
                      )),
                      TextSpan(text: '\n'),
                      WidgetSpan(child: InkWell(
                        child: Text('Teri Rueb\n', style: TextStyle(color: Colors.black, fontSize: 16.0, decoration: TextDecoration.underline)),
                        onTap: () => launch('http://terirueb.net/'),
                      )),
                      TextSpan(text: '\nCommissioned by: \n',
                          style: TextStyle(fontSize: hFontSize, fontWeight: FontWeight.bold )
                      ),
                      TextSpan(text: 'The '),
                      WidgetSpan(child: InkWell(
                        child: Text('Fiske Planetarium', style: TextStyle(color: Colors.black, fontSize: 16.0, decoration: TextDecoration.underline)),
                        onTap: () => launch('https://www.colorado.edu/fiske/'),
                      )),
                      TextSpan(text: " and " ),
                      WidgetSpan(child: InkWell(
                        child: Text('Sommers-', style: TextStyle(color: Colors.black, fontSize: 16.0, decoration: TextDecoration.underline)),
                        onTap: () => launch('https://www.colorado.edu/sbo/'),
                      )),
                      WidgetSpan(child: InkWell(
                        child: Text('Bausch', style: TextStyle(color: Colors.black, fontSize: 16.0, decoration: TextDecoration.underline)),
                        onTap: () => launch('https://www.colorado.edu/sbo/'),
                      )),
                      WidgetSpan(child: InkWell(
                        child: Text('Observatory', style: TextStyle(color: Colors.black, fontSize: 16.0, decoration: TextDecoration.underline)),
                        onTap: () => launch('https://www.colorado.edu/sbo/'),
                      )),
                      TextSpan(text: ' with funds from the CU Boulder Grand Challenge, Dr. Jeff Bennett/Big Kid Science, CU '),
                      WidgetSpan(child: InkWell(
                        child: Text('Laboratory ', style: TextStyle(color: Colors.black, fontSize: 16.0, decoration: TextDecoration.underline)),
                        onTap: () => launch('https://lasp.colorado.edu/home/'),
                      )),
                      WidgetSpan(child: InkWell(
                        child: Text('for ', style: TextStyle(color: Colors.black, fontSize: 16.0, decoration: TextDecoration.underline)),
                        onTap: () => launch('https://lasp.colorado.edu/home/'),
                      )),
                      WidgetSpan(child: InkWell(
                        child: Text('Atmospheric ', style: TextStyle(color: Colors.black, fontSize: 16.0, decoration: TextDecoration.underline)),
                        onTap: () => launch('https://lasp.colorado.edu/home/'),
                      )),
                      WidgetSpan(child: InkWell(
                        child: Text('and ', style: TextStyle(color: Colors.black, fontSize: 16.0, decoration: TextDecoration.underline)),
                        onTap: () => launch('https://lasp.colorado.edu/home/'),
                      )),
                      WidgetSpan(child: InkWell(
                        child: Text('Space ', style: TextStyle(color: Colors.black, fontSize: 16.0, decoration: TextDecoration.underline)),
                        onTap: () => launch('https://lasp.colorado.edu/home/'),
                      )),
                      WidgetSpan(child: InkWell(
                        child: Text('Physics ', style: TextStyle(color: Colors.black, fontSize: 16.0, decoration: TextDecoration.underline)),
                        onTap: () => launch('https://lasp.colorado.edu/home/'),
                      )),

                      TextSpan(text: ' (LASP), CU Office of the Chancellor, CU Department of Aerospace Engineering, CU Department of Astrophysical and Planetary Sciences, and the CU Department of Critical Media Practices.'),
                      // WidgetSpan(child: InkWell(
                      //   child: Text('CU Department of Critical Media Practices.', style: TextStyle(color: Colors.black, fontSize: 16.0, decoration: TextDecoration.underline)),
                      //   onTap: () => launch('https://lasp.colorado.edu/home/'),
                      // )),
                      // and the CU Department of Critical Media Practices.


                      TextSpan(text: '\n\nTypographic Design:\n',
                          style: TextStyle(fontSize: hFontSize, fontWeight: FontWeight.bold)),
                      WidgetSpan(child: InkWell(
                        child: Text('Siena Scarff Design', style: TextStyle(color: Colors.black, fontSize: 16.0, decoration: TextDecoration.underline)),
                        onTap: () => launch('https://www.sienascarff.com/'),
                      )),
                      TextSpan(text: '\n\nGraphic Design Assistant:\n',
                          style: TextStyle(fontSize: hFontSize, fontWeight: FontWeight.bold)), // decoration: TextDecoration.underline
                      TextSpan(text: 'Sophie Barnes Adams\n\n'),

                      TextSpan(text: 'Archival sounds: ', style: TextStyle(fontWeight: FontWeight.bold)), // decoration: TextDecoration.underline
                      TextSpan(text: 'All archival sounds are courtesy of NASA unless otherwise noted.\n'),
                      TextSpan(text: 'Still images: ', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'All images courtesy of NASA unless otherwise noted.\n'),
                      TextSpan(text: '3D planet animations: ', style: TextStyle(fontWeight: FontWeight.bold)), // decoration: TextDecoration.underline
                      TextSpan(text: 'courtesy of NOAA\n'),
                      TextSpan(text: '3D animation of Arrokoth (Kuiper Belt): ', style: TextStyle(fontWeight: FontWeight.bold)), // decoration: TextDecoration.underline
                      TextSpan(text: 'Ilias Syed Hosain\n\n'),
                      // TextSpan(text: 'Visualization of Jupiter’s Trojans:', style: TextStyle(fontWeight: FontWeight.bold)),
                      // TextSpan(text: 'Jiffer Harriman\n\n'),

                      TextSpan(text: 'About screen quote from the '),
                      WidgetSpan(child: InkWell(
                        child: Text('Smithsonian Museum of Air and Space', style: TextStyle(color: Colors.black, fontSize: 16.0, decoration: TextDecoration.underline)),
                        onTap: () => launch('https://airandspace.si.edu/exhibitions/exploring-the-planets/online/discovery/greeks.cfm'),
                      )),

                      TextSpan(text: '\n\nAcknowledgements:\n',
                          style: TextStyle(fontSize: hFontSize, fontWeight: FontWeight.bold)), // decoration: TextDecoration.underline


                      TextSpan(text: 'We would like to thank Dr. John Keller, Director of the Fiske Planetarium, for originally conceiving of a sonification of the Colorado Scale Model Solar System (CSMSS) and entrusting it to artists to carry out the idea in dialogue with him.  James Negus has also been a key figure and friend, firstly conceiving of updating the CSMSS stanchions and connecting with Dr. Jeff Bennett, whose generous support for the update and original inspiration for the CSMSS provided the impetus for this project.  Finally we would like to express our gratitude to Dr. Seth Hornstein, Observatory and Education Director of the Sommers-Bausch Observatory, who directed the CSMSS update on the ground and kept our feet on the ground, and our eyes lifted to the sky.'),
                      TextSpan(text: '\n\nThe artists wish to especially thank the Department of Critical Media Practices for their support.'),



                    ],
                  ),
                ),
              ),

            ],
          ),
        )
    );
  }

  void _launchURL(String _url) async =>
      await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
}
