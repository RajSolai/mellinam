import 'package:confetti/confetti.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  bool isPassed = true;
  late ConfettiController _controllerCenter;

  Widget buildTestPage() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }

  Widget buildConfettiPage() {
    _controllerCenter =
        ConfettiController(duration: const Duration(seconds: 10));
    _controllerCenter.play();
    return SafeArea(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/trophy.png",
                    height: MediaQuery.of(context).size.height / 6,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "வாழ்த்துக்கள்",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 28.0),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  CupertinoButton(
                    color: Colors.purple,
                    child: Text("தொடரவும்"),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => widget.returnScreen),
                      )
                    },
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: ConfettiWidget(
              confettiController: _controllerCenter,
              blastDirectionality: BlastDirectionality
                  .explosive, // don't specify a direction, blast randomly
              shouldLoop:
                  true, // start again as soon as the animation is finished
              colors: const [
                Colors.green,
                Colors.blue,
                Colors.pink,
                Colors.orange,
                Colors.purple
              ], // manually specify the colors to be used
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("'${widget.letterToCheck}' எழுத்து பயிற்சி"),
      ),
      body: isPassed ? buildConfettiPage() : buildTestPage(),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controllerCenter.dispose();
  }
}
