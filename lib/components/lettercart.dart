import 'package:flutter/material.dart';
import 'package:mellinam/pages/tutorial.dart';
import 'menucart.dart';

class LetterCard extends StatelessWidget {
  final Widget returnScreen;
  final String group;
  final String letter;
  final String animation;
  const LetterCard(
      {Key? key,
      required this.returnScreen,
      required this.group,
      required this.letter,
      required this.animation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180.0,
      height: 250.0,
      child: MenuCard(
        screen: TutorialScreen(
          returnScreen: returnScreen,
          groupName: group,
          letterName: letter,
          animationName: animation,
        ),
        animationName: animation,
        title: letter,
      ),
    );
  }
}
