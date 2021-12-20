import 'package:flutter/material.dart';
import 'package:mellinam/components/lettercart.dart';

var groupName = "வல்லினம்";

class VallinamHome extends StatelessWidget {
  const VallinamHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("வல்லின வார்த்தைகள்"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  LetterCard(
                    returnScreen: this,
                    group: groupName,
                    letter: "க",
                    animation: "assets/animations/ka-animation.riv",
                  ),
                  LetterCard(
                    returnScreen: this,
                    group: groupName,
                    letter: "ச",
                    animation: "assets/animations/sa-animation.riv",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  LetterCard(
                    returnScreen: this,
                    group: groupName,
                    letter: "ட",
                    animation: "assets/animations/da-animation.riv",
                  ),
                  LetterCard(
                    returnScreen: this,
                    group: groupName,
                    letter: "த",
                    animation: "assets/animations/tha-animation.riv",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  LetterCard(
                    returnScreen: this,
                    group: groupName,
                    letter: "ப",
                    animation: "assets/animations/pa-animation.riv",
                  ),
                  LetterCard(
                    returnScreen: this,
                    group: groupName,
                    letter: "ர",
                    animation: "assets/animations/ra-animation.riv",
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
