import 'package:confetti/confetti.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:mellinam/components/confetti.dart';
import 'package:mellinam/components/darwingtest.dart';
import 'package:mellinam/services/db.dart';

class TestScreen extends StatefulWidget {
  final Widget returnScreen;
  final String letterToCheck;
  final String groupName;
  TestScreen(
      {Key? key,
      required this.returnScreen,
      required this.letterToCheck,
      required this.groupName})
      : super(key: key);

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  bool isPassed = false;
  LanguageModelManager languageModelManager =
      GoogleMlKit.vision.languageModelManager();
  String statusText = "";
  DigitalInkRecogniser digitalInkRecogniser =
      GoogleMlKit.vision.digitalInkRecogniser();
  List<Offset?> _points = <Offset>[];
  final String _language = 'ta';
  late ConfettiController _controllerCenter;

  @override
  void initState() {
    super.initState();
    _controllerCenter =
        ConfettiController(duration: const Duration(seconds: 10));
  }

  void onPanUpdateEvent(details) {
    setState(() {
      RenderObject? object = context.findRenderObject();
      final _localPosition =
          (object as RenderBox?)?.globalToLocal(details.localPosition);
      _points = List.from(_points)..add(_localPosition);
    });
  }

  void clearPad() {
    setState(() {
      _points.clear();
    });
  }

  Future<void> recognizeText() async {
    try {
      final candidates =
          await digitalInkRecogniser.readText(_points, _language);
      var text = candidates[0].text;
      if (text == widget.letterToCheck) {
        isPassed = true;
        Respository()
            .addLetter("${widget.letterToCheck} - ${widget.groupName}");
      } else {
        statusText = "அச்சச்சோ, தவறான எழுத்து";
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
          : buildTestPage(_points, onPanUpdateEvent, recognizeText, clearPad, statusText),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controllerCenter.dispose();
  }
}
