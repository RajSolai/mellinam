import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class MenuCard extends StatelessWidget {
  final String animationName;
  final Widget screen;
  final String title;
  const MenuCard(
      {Key? key,
      required this.screen,
      required this.animationName,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => screen)),
      child: Container(
        margin: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 3.0, // soften the shadow
                  spreadRadius: 0.0, //extend the shadow
                  offset: Offset(
                    0.0, // Move to right 10  horizontally
                    1, // Move to bottom 10 Vertically
                  ),
                )
              ]),
          child: Column(
            children: [
              Container(
                  height: 200.0, child: RiveAnimation.asset(animationName)),
              Text(title)
            ],
          ),
        ),
      ),
    );
  }
}
