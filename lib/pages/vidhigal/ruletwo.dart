import 'package:flutter/material.dart';

class RuleTwo extends StatelessWidget {
  const RuleTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ல்ள் + யவ"),
        ),
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(10.0),
            children: const [
              Text(
                  "ல்‌, ள்‌ ஆகிய எழுத்துக்களுக்குப்‌ பின்பு ய,வ எழுத்துக்கள்‌ மயங்கிவரும்‌."),
              Text("எ-டு. கொல்யானை, வெள்வளை.")
            ],
          ),
        ));
  }
}
