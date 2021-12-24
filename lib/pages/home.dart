import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mellinam/components/menucart.dart';
import 'package:mellinam/pages/about.dart';
import 'package:mellinam/pages/completed.dart';
import 'package:mellinam/pages/idaiyinam/main.dart';
import 'package:mellinam/pages/mellinam/main.dart';
import 'package:mellinam/pages/vallinam/main.dart';
import 'package:mellinam/pages/vidhigal/main.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("மெல்லினம்"),
        actions: [
          IconButton(
            onPressed: () => {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => const CompletedScreen()))
            },
            icon: const Icon(Icons.library_add_check_rounded),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    SizedBox(
                      width: 180.0,
                      height: 250.0,
                      child: MenuCard(
                          screen: VallinamHome(),
                          animationName: "assets/animations/ka-animation.riv",
                          title: "வல்லினம்",
                          isAnim: true),
                    ),
                    SizedBox(
                      width: 180.0,
                      height: 250.0,
                      child: MenuCard(
                          screen: MellinamScreen(),
                          animationName: "assets/animations/nga-animation.riv",
                          title: "மெல்லினம்",
                          isAnim: true),
                    )
                  ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  SizedBox(
                    width: 180.0,
                    height: 250.0,
                    child: MenuCard(
                      screen: IdaiyinamScreen(),
                      animationName: "assets/animations/ya-animation.riv",
                      title: "இடையினம்",
                      isAnim: true,
                    ),
                  ),
                  SizedBox(
                    width: 180.0,
                    height: 250.0,
                    child: MenuCard(
                      screen: AboutPage(),
                      animationName: "assets/images/information.png",
                      title: "மேலும்",
                      isAnim: false,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  SizedBox(
                    width: 180.0,
                    height: 250.0,
                    child: MenuCard(
                      screen: VidigalMenuScreen(),
                      animationName: "assets/images/rules.png",
                      title: "எழுத விதிகள்",
                      isAnim: false,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
