import 'package:flutter/material.dart';
import 'package:mellinam/components/lettercart.dart';
import 'package:mellinam/components/menucart.dart';
import 'package:mellinam/pages/tutorial.dart';

var groupName = "மெல்லினம்";

class MellinamScreen extends StatelessWidget {
  const MellinamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("மெல்லின வார்த்தைகள்"),
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
                    letter: "ங",
                    animation: "assets/animations/ya-animation.riv",
                  ),
                  LetterCard(
                    returnScreen: this,
                    group: groupName,
                    letter: "ஞ",
                    animation: "assets/animations/ra-animation.riv",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  LetterCard(
                    returnScreen: this,
                    group: groupName,
                    letter: "ண",
                    animation: "assets/animations/mel-la-animation.riv",
                  ),
                  LetterCard(
                    returnScreen: this,
                    group: groupName,
                    letter: "ந",
                    animation: "assets/animations/va-animation.riv",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  LetterCard(
                    returnScreen: this,
                    group: groupName,
                    letter: "ம",
                    animation: "assets/animations/zlha-animation.riv",
                  ),
                  LetterCard(
                    returnScreen: this,
                    group: groupName,
                    letter: "ன",
                    animation: "assets/animations/kil-animation.riv",
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
