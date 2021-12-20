import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:mellinam/pages/home.dart';
import 'package:rive/rive.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isModelDownloaded = false;
  Timer? timer;
  LanguageModelManager languageModelManager =
      GoogleMlKit.vision.languageModelManager();

  Future<void> _isModelDownloaded() async {
    bool isDownloaded = await languageModelManager.isModelDownloaded('ta');
    setState(() {
      isModelDownloaded = isDownloaded;
    });
  }

  Future<void> _downloadModel() async {
    languageModelManager.downloadModel('ta');
  }

  Widget _cancelTimer() {
    Future.delayed(const Duration(minutes: 2), () {});
    return const Home();
  }

  @override
  void initState() {
    super.initState();
    _downloadModel();
    timer = Timer.periodic(
        const Duration(milliseconds: 3000), (Timer t) => _isModelDownloaded());
  }

  @override
  Widget build(BuildContext context) {
    if (!isModelDownloaded) {
      return Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Column(children: const [
            SizedBox(
              height: 100.0,
            ),
            SizedBox(
              height: 300.0,
              child: RiveAnimation.asset("assets/animations/ka-animation.riv"),
            ),
            Text("தயவுசெய்து காத்திருக்கவும்")
          ]),
        ),
      );
    } else {
      timer!.cancel();
      return _cancelTimer();
    }
  }
}
