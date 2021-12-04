import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mellinam/components/menucart.dart';
import 'package:mellinam/pages/completed.dart';
import 'package:mellinam/pages/idaiyinam/main.dart';
import 'package:mellinam/pages/mellinam/main.dart';
import 'package:mellinam/pages/vallinam/main.dart';
import 'package:mellinam/services/db.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("மெல்லினம்"),
        actions: [
          IconButton(
            onPressed: () => {
              Navigator.push(context,
                  CupertinoPageRoute(builder: (context) => CompletedScreen()))
            },
            icon: Icon(Icons.library_add_check_rounded),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Container(
                  width: 180.0,
                  height: 250.0,
                  child: MenuCard(
                      screen: VallinamHome(),
                      animationName: "assets/animations/ka-animation.riv",
                      title: "வல்லினம்"),
                ),
                Container(
                  width: 180.0,
                  height: 250.0,
                  child: MenuCard(
                      screen: MellinamScreen(),
                      animationName: "assets/animations/ka-animation.riv",
                      title: "மெல்லினம்"),
                )
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 180.0,
                    height: 250.0,
                    child: MenuCard(
                        screen: IdaiyinamScreen(),
                        animationName: "assets/animations/ya-animation.riv",
                        title: "இடையினம்"),
                  ),
                  Container(
                    width: 180.0,
                    height: 250.0,
                    child: MenuCard(
                        screen: VallinamHome(),
                        animationName: "assets/animations/ka-animation.riv",
                        title: "உயிர் எழுத்துகள்"),
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
