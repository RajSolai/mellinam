import 'package:flutter/material.dart';
import 'package:mellinam/components/menucart.dart';
import 'package:mellinam/pages/tutorial.dart';

class VallinamHome extends StatelessWidget {
  const VallinamHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("வல்லின வார்த்தைகள்"),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 180.0,
                        height: 250.0,
                        child: MenuCard(
                            screen: TutorialScreen(
                              groupName: "வல்லினம்",
                              returnScreen: this,
                              letterName: "க",
                              animationName:
                                  "assets/animations/ka-animation.riv",
                            ),
                            animationName: "assets/animations/ka-animation.riv",
                            title: "க"),
                      ),
                      Container(
                        width: 180.0,
                        height: 250.0,
                        child: MenuCard(
                            screen: TutorialScreen(
                              groupName: "வல்லினம்",
                              returnScreen: this,
                              letterName: "ச",
                              animationName:
                                  "assets/animations/sa-animation.riv",
                            ),
                            animationName: "assets/animations/sa-animation.riv",
                            title: "ச"),
                      )
                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 180.0,
                      height: 250.0,
                      child: MenuCard(
                          screen: TutorialScreen(
                            groupName: "வல்லினம்",
                            returnScreen: this,
                            letterName: "ட",
                            animationName: "assets/animations/da-animation.riv",
                          ),
                          animationName: "assets/animations/da-animation.riv",
                          title: "ட"),
                    ),
                    Container(
                      width: 180.0,
                      height: 250.0,
                      child: MenuCard(
                          screen: TutorialScreen(
                            returnScreen: this,
                            groupName: "வல்லினம்",
                            letterName: "த",
                            animationName:
                                "assets/animations/tha-animation.riv",
                          ),
                          animationName: "assets/animations/tha-animation.riv",
                          title: "த"),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 180.0,
                      height: 250.0,
                      child: MenuCard(
                          screen: TutorialScreen(
                            returnScreen: this,
                            groupName: "வல்லினம்",
                            letterName: "ப",
                            animationName: "assets/animations/pa-animation.riv",
                          ),
                          animationName: "assets/animations/pa-animation.riv",
                          title: "ப"),
                    ),
                    Container(
                      width: 180.0,
                      height: 250.0,
                      child: MenuCard(
                          screen: TutorialScreen(
                            groupName: "வல்லினம்",
                            letterName: "ற",
                            returnScreen: this,
                            animationName:
                                "assets/animations/ra-vali-animation.riv",
                          ),
                          animationName:
                              "assets/animations/ra-vali-animation.riv",
                          title: "ற"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
