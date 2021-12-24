import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mellinam/pages/vidhigal/rulefive.dart';
import 'package:mellinam/pages/vidhigal/rulefour.dart';
import 'package:mellinam/pages/vidhigal/ruleone.dart';
import 'package:mellinam/pages/vidhigal/ruleseven.dart';
import 'package:mellinam/pages/vidhigal/rulesix.dart';
import 'package:mellinam/pages/vidhigal/rulethree.dart';
import 'package:mellinam/pages/vidhigal/ruletwo.dart';

class VidigalMenuScreen extends StatelessWidget {
  const VidigalMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("பிழையின்றி எழுத விதிகள்"),
        ),
        body: SafeArea(
          child: ListView(
            children: [
              ListTile(
                  title: const Text("ட்ற்ல்ள் + கசப"),
                  onTap: () => {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => const RuleOne()),
                        )
                      }),
              ListTile(
                  title: const Text("ல்ள் + யவ"),
                  onTap: () => {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => const RuleTwo()),
                        )
                      }),
              ListTile(
                  title: const Text("ங்ஞ்ண்ந்ம்ன்‌ + தத்தமிசைகள்‌(கசடதபற)"),
                  onTap: () => {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => const RuleThree()),
                        )
                      }),
              ListTile(
                  title: const Text("ஞ்ந்‌ம்வ் + ய "),
                  onTap: () => {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => const RuleFour()),
                        )
                      }),
              ListTile(
                  title: const Text("ம் + வ "),
                  onTap: () => {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => const RuleFive()),
                        )
                      }),
              ListTile(
                  title: const Text("ய்ர்ழ்‌ +கசதபஞநமயவங"),
                  onTap: () => {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => const RuleSix()),
                        )
                      }),
              ListTile(
                  title: const Text("ர ழ அலங்கடை"),
                  onTap: () => {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => const RuleSeven()),
                        )
                      }),
            ],
          ),
        ));
  }
}
