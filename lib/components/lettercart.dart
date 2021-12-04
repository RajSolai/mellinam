import 'package:flutter/material.dart';
import 'package:mellinam/pages/tutorial.dart';
import 'menucart.dart';

class LetterCard extends StatelessWidget {
  final returnScreen, group, letter, animation;
  const LetterCard(
      {Key? key, this.returnScreen, this.group, this.letter, this.animation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180.0,
      height: 250.0,
      child: MenuCard(
        screen: TutorialScreen(
          returnScreen: this.returnScreen,
          groupName: this.group,
          letterName: this.letter,
          animationName: this.animation,
        ),
        animationName: this.animation,
        title: this.letter,
      ),
    );
  }
}
