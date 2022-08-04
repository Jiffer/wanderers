import 'package:wanderers/views/launch_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:wanderers/shared/ui_constants.dart';

class TutorialPage extends StatefulWidget {
  @override
  _TutorialPageState createState() => _TutorialPageState();
}

class _TutorialPageState extends State<TutorialPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => LaunchPage()),
    );
  }

  Widget _buildFullscrenImage() {
    return Image.asset(
      'assets/fullscreen.jpg',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return ClipRRect(child: Image.asset(assetName, width: width),
      borderRadius: BorderRadius.circular(10),);
  }

  Widget _buildSmallImage(String assetName, [double width = 100]) {
    return ClipRRect(child: Image.asset(assetName, width: width),
      borderRadius: BorderRadius.circular(10),);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0), // descriptionPadding deprecated?
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    double containerWidth = MediaQuery.of(context).size.width * 0.6;

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      globalHeader: Align(
        alignment: Alignment.topCenter,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, right: 16),
            // child: _buildImage(kPlanetImages[5], 100),
          ),
        ),
      ),
      globalFooter: SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFFBDBDBD))),
          child: const Text(
            'Skip Tutorial',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          onPressed: () => _onIntroEnd(context),
        ),
      ),
      pages: [
        PageViewModel(
          title: "Ways to wander...",
          body: "Let's have a quick walk through",
          image: _buildSmallImage(kTutorialImages[5]),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Please use headphones",
          body: "",
          image: _buildSmallImage(kTutorialImages[6]),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Sonification Controls",
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: containerWidth,
                child: RichText(
                    text: TextSpan(
                        style: TextStyle(fontSize: 20, color: Colors.black),
                        children: [
                          TextSpan(text: "Tap "),
                          WidgetSpan(child: Icon(kControlsIcon)),
                          TextSpan(
                              text:
                              " to access sonification control parameters\n\n"),
                        ])),
              ),
            ],
          ),
          image: _buildImage(kTutorialImages[0]),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Sonification Controls",
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: containerWidth,
                child: RichText(
                    text: TextSpan(
                        style: TextStyle(fontSize: 20, height: 1.5, color: Colors.black),
                        children: [
                          TextSpan(
                              text:
                              "Sinewave/Filtered Noise: Select your sonic palette\n\n"
                                  "Orbit Rate: Earth years per second\n\n"
                                  "Audio Range: Distance over which you can hear orbiting objects\n\n"
                                  "Heading: Direction you are heading (impacts audio panning)"
                                  "\n\n"
                          ),
                        ])),
              ),
            ],
          ),
          image: _buildImage(kTutorialImages[1]),
          decoration: pageDecoration,
        ),

        PageViewModel(
          title: "Map Controls",
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // ToDo: make text window taller
                width: containerWidth,
                child: RichText(
                    text: TextSpan(
                        style: TextStyle(fontSize: 20, color: Colors.black),
                        children: [
                          TextSpan(text: "Tap "),
                          WidgetSpan(child: Icon(kCenterOnUserIcon)),
                          TextSpan(text: " to center \non your location\n\n"),
                          TextSpan(text: "Tap "),
                          WidgetSpan(child: Icon(kCenterOnSunIcon)),
                          TextSpan(text: " to center \non the Sun\n\n"),
                          WidgetSpan(child: Icon(Icons.zoom_out_map)),
                          TextSpan(text: " Pinch and drag \nto explore\n\n"),
                        ])),
              ),
            ],
          ),
          image: _buildImage(kTutorialImages[0]),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Map Controls",
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // ToDo: make text window taller
                width: containerWidth,
                child: RichText(
                    text: TextSpan(
                        style: TextStyle(fontSize: 20, color: Colors.black),
                        children: [
                          TextSpan(text: "Tap "),
                          WidgetSpan(child: Icon(Icons.map_outlined)),
                          TextSpan(text: " to toggle local street map\n\n"),

                        ])),
              ),
            ],
          ),
          image: _buildImage(kTutorialImages[4]),
          decoration: pageDecoration,
        ),

        PageViewModel(
          title: "Solar System Menu",
          bodyWidget: RichText(
              text: TextSpan(
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  children: [
                    TextSpan(text: "Slide from the right to access Solar System menu.\n\n"),
                    TextSpan(text: "Toggle "),
                    WidgetSpan(child: Icon(Icons.toggle_on_outlined)),
                    TextSpan(text: " the sound of individual objects on and off "),
                    TextSpan(text: "\n\n"),
                    TextSpan(text: "Tap the object name to access additional information and archival sounds."),
                  ])),
          image: _buildImage(kTutorialImages[2]),
          decoration: pageDecoration.copyWith(contentMargin: const EdgeInsets.symmetric(horizontal: 16),),
        ),
        PageViewModel(
          title: "Main Menu",
          bodyWidget: RichText(text: TextSpan(style: TextStyle(fontSize: 20, color: Colors.black),
              children: [TextSpan(text: "Slide from the left to access the Main Menu.")])),
          image: _buildImage(kTutorialImages[3]),

          decoration: pageDecoration.copyWith(contentMargin: const EdgeInsets.symmetric(horizontal: 16)),
        ),
        PageViewModel(
          title: "",
          bodyWidget: RichText(text: TextSpan(style: TextStyle(fontSize: 20, color: Colors.black),
              children: [TextSpan(text: "Note: graphical representation of the planets, Sun and other celestial bodies on the Home screen is not to scale")])),
          image: _buildImage(kTutorialImages[7]),
          decoration: pageDecoration.copyWith(contentMargin: const EdgeInsets.symmetric(horizontal: 16)),
        ),

      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: false,
      // skipFlex: 0,
      nextFlex: 0,
      //rtl: true, // Display as right-to-left

      skipOrBackFlex: 0,

      skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward, color: Color(0xFFBDBDBD),),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFBDBDBD))),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(5.0, 5.0),
        color: Color(0xFFBDBDBD),
        activeColor: Colors.deepOrangeAccent,
        activeSize: Size(15.0, 10.0),
        spacing:  EdgeInsets.symmetric(horizontal: 3.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.black87,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
