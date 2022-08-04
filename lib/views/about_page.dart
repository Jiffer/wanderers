// dart
import 'dart:core';
// flutter
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {

  @override
  Widget build(BuildContext context) {
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
                child: RichText(text: const TextSpan(
                    style:TextStyle( color: Colors.black),
                    children: <InlineSpan>[
                      TextSpan(text: "About\n", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24) ),
                      WidgetSpan( child: Padding(padding: EdgeInsets.fromLTRB(18.0, 8.0, 18.0, 8.0), child: Text("Five planets — Mercury, Venus, Mars, Jupiter, and Saturn were known to the ancients. To the unaided eye, these planets appear starlike. However, the planets moved relative to the stars. For this reason they were called wandering stars. Our word \"planet\" comes from the Greek word planetes, meaning \"wanderer\"", style: TextStyle(fontStyle: FontStyle.italic)),)),
                      WidgetSpan( child: Padding(padding: EdgeInsets.fromLTRB(18.0, 0, 18.0, 0), child: Text("Smithsonian Museum of Air and Space\n\n", style: TextStyle(fontStyle: FontStyle.italic)), )),
                      TextSpan(text: "\nWanderers ", style: TextStyle(fontStyle: FontStyle.italic) ),
                      TextSpan(text: "is a responsive sound experience delivered via a mobile app that responds to the visitor’s movement as sensed by GPS.  A complement to the Colorado Scale Model Solar System represented by plaques that extend from the Fiske Planetarium to Colorado Boulevard on the CU Boulder campus, "),
                      TextSpan(text: "Wanderers ", style: TextStyle(fontStyle: FontStyle.italic)),
                      TextSpan(text: "offers another mode of experiencing this model where visitors are free to explore the sonic, temporal and spatial dynamics of our Solar System as a responsive soundscape that extends in all directions from the Sun, located in front of the Fiske Planetarium.\n\n"),
                      TextSpan(text: "The Solar System as a model conjures the image of spinning spheres marching around the Sun in a grand promenade, lined up as if in formation.  Yet our more common experience of the Solar System is found in staring at a night sky, pondering the planets, or noting the rising and setting of the Sun as it carves its daily path, rendering us as tiny figures in a complex pattern of space and time.  "),
                      TextSpan(text: "Wanderers ", style: TextStyle(fontStyle: FontStyle.italic)),
                      TextSpan(text: "invites the mobile listener to explore a sonification of the Solar System in which the relative mass and orbital period of the planets in our Solar System are expressed sonically, with each celestial body having its own “soundprint”.  As the mobile listener wanders, and the sonified celestial bodies move at their relative orbital speeds, the participant hears a dynamic soundscape where the volume and direction of the sounds changes depending on the participant’s position and perspective.  Participants may toggle sounds on/off using the right menu, and using the slider tools (bottom left icon) may alter parameters of the sonification including: speed of orbit, audio range: radius within which sounds can be heard, sound palette used, and heading.\n\n"),
                      TextSpan(text: "Note: ", style: TextStyle(fontWeight: FontWeight.bold, ) ),
                      TextSpan(text: "graphical representation of planets, Sun and other celestial bodies on the Home screen is not to scale. ")
                    ])),
              ),
              const Padding(padding: EdgeInsets.all(8.0),
                child:   Text('Sonification Design', style: TextStyle(fontWeight: FontWeight.bold, fontSize:20)),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(text: TextSpan(
                    style:TextStyle( color: Colors.black),
                    children: <InlineSpan>[
                      // TextSpan(text: "Sonification Design\n", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24) ),

                      TextSpan(text: "Wanderers ", style: TextStyle(fontStyle: FontStyle.italic) ),
                      TextSpan(text: "is a mobile app locative listening experience based on the sonification of data from the planets in the Solar System. The sonification represents the relative mass and orbital rotation period of each planet, as well as the dwarf planet Pluto. The Sun is represented by a constant drone that grows louder or softer based on the participant’s proximity to its location in the plaza in front of the Fiske Planetarium. Asteroid belts (including the Kuiper belt, Jupiter’s Trojans and the Main Belt) are represented by another type of model consisting of a drone punctuated by short sound bursts in different frequencies, freely illustrating the relative density of bodies in the belts. Each planet has a sound signature made up of nine tones, with the pitch of lowest tone being determined by the relative mass of the planet in relation to the other planets in the Solar System, and the remaining tones reproducing the set of proportions existing between the lowest frequencies.  The orbital rotation period of the planets is represented on a compressed time scale with the individual sounds of the planets, Pluto, and the Jupiter Trojans spatialized, relative to the position of the participant. The application allows listeners to interact with the sonification by changing the way the sound is rendered and the data is represented (speed of orbit, audio range: radius within which sounds can be heard, sound palette used, heading, etc.).\n\n"),
                      WidgetSpan(child: InkWell(
                        child: Text('Click here', style: TextStyle( decoration: TextDecoration.underline)),
                        onTap: () => launch('http://www.terirueb.net/wanderers'),
                      )),
                      TextSpan(text: ' to visit the project web page for detailed information about the sonification, frequencies and other components of the design.'),

                    ])),
              ),
            ],
          ),
        )
    );
  }
}
