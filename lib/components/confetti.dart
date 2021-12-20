import 'package:confetti/confetti.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildConfettiPage({controllerCenter, returnScreen, context}) {
  controllerCenter.play();
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
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  "வாழ்த்துக்கள்",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28.0),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                CupertinoButton(
                  color: Colors.purple,
                  child: const Text("தொடரவும்"),
                  onPressed: () => {
                    Navigator.pushReplacement(
                      context,
                      CupertinoPageRoute(builder: (context) => returnScreen),
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
            confettiController: controllerCenter,
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
