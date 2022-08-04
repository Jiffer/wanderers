import 'package:flutter/material.dart';
import 'package:flutter_pd/flutter_pd.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  final String title = '';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pd = FlutterPd.instance;
  late PdFileHandle _pdFileHandle;

  final _assetPath = 'assets/patches/SolarSystem_noSound.pd';

  double _sliderValue = 0.5;

  late Stream<ListEvent> _pdEvent;

  @override
  void initState() {
    super.initState();
    _pdEvent = _receivePdEvent();

  }

  @override
  void dispose() {
    _pdFileHandle.close();
    _pd.stopPd();
    super.dispose();
  }


  /// Prepare pd and setup Stream from pd.
  Stream<ListEvent> _receivePdEvent() async* {
    final hasPermission = await _pd.checkPermission();
    if (!hasPermission) {
      return;
    }

    await _pd.startPd();

    _pdFileHandle = await _pd.openAsset(_assetPath);

    await _pd.startAudio(
      requireInput: false,
    );
    yield* _pd.receive('orbitAngleList').where((it) => it is ListEvent).cast();
    // yield* _pd.receive('snappy').where((it) => it is FloatEvent).cast();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          StreamBuilder<ListEvent>(
              stream: _pdEvent,
              builder: (context, snapshot) {
                if(snapshot.hasData) {
                  final event = snapshot.data;
                  return Text("value: ${event?.data[0]}");
                }else{
                  return Text("no data");
                }
              }
          ),
          InkWell(
              onTap: _sendTap,
              child: Container(width: 100, height: 40, child: Text ('init'))
          ),
          Slider(
              onChanged: _sendSlider,
              value: _sliderValue
          ),
        ],
      ),
    );
  }

  void _sendSlider(double value) {
    // send to Pd
    _pd.send('orbitSpeed', value);
    setState((){
      _sliderValue = value;
    });
  }

  void _sendTap(){
    _pd.send('initSequence', 1);
  }
}
