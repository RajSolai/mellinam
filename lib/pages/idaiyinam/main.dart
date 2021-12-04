import 'package:flutter/material.dart';
import 'package:mellinam/components/lettercart.dart';
import 'package:mellinam/components/menucart.dart';
import 'package:mellinam/pages/tutorial.dart';

var groupName = "இடையினம்";

class IdaiyinamScreen extends StatelessWidget {
  const IdaiyinamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("இடையின  வார்த்தைகள்"),
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
                    letter: "ய",
                    animation: "assets/animations/ya-animation.riv",
                  ),
                  LetterCard(
                    returnScreen: this,
                    group: groupName,
                    letter: "ர",
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
                    letter: "ல",
                    animation: "assets/animations/mel-la-animation.riv",
                  ),
                  LetterCard(
                    returnScreen: this,
                    group: groupName,
                    letter: "வ",
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
                    letter: "ழ",
                    animation: "assets/animations/zlha-animation.riv",
                  ),
                  LetterCard(
                    returnScreen: this,
                    group: groupName,
                    letter: "ள",
                    animation: "assets/animations/kil-la-animation.riv",
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
