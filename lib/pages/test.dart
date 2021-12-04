import 'package:confetti/confetti.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:mellinam/components/confetti.dart';
import 'package:mellinam/components/darwingtest.dart';

class TestScreen extends StatefulWidget {
  final Widget returnScreen;
  final String letterToCheck;
  TestScreen(
      {Key? key, required this.returnScreen, required this.letterToCheck})
      : super(key: key);

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  bool isPassed = false;
  LanguageModelManager languageModelManager =
      GoogleMlKit.vision.languageModelManager();
  DigitalInkRecogniser digitalInkRecogniser =
      GoogleMlKit.vision.digitalInkRecogniser();
  List<Offset?> _points = <Offset>[];
  final String _language = 'ta';
  late ConfettiController _controllerCenter;

  void onPanUpdateEvent(details) {
    setState(() {
      RenderObject? object = context.findRenderObject();
      final _localPosition =
          (object as RenderBox?)?.globalToLocal(details.localPosition);
      _points = List.from(_points)..add(_localPosition);
    });
  }

  Future<void> recognizeText() async {
    try {
      final candidates =
          await digitalInkRecogniser.readText(_points, _language);
      var text = candidates[0].text;
      if (text == "asdf") {
        isPassed = true;
      }
      setState(() {});
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(e.toString()),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("'${widget.letterToCheck}' எழுத்து பயிற்சி"),
      ),
      body: isPassed
          ? buildConfettiPage(
              controllerCenter: _controllerCenter,
              returnScreen: widget.returnScreen,
              context: context)
          : buildTestPage(_points, onPanUpdateEvent, recognizeText),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controllerCenter.dispose();
  }
}
