import 'package:flutter/material.dart';

class RuleFour extends StatelessWidget {
  const RuleFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ஞ்ந்‌ம்வ் + ய"),
        ),
        body: SafeArea(
          child: ListView(
            children: const [
              Text("ஞ்,ந்‌,ம்,வ்"),
              Text("எழுத்துக்களுக்குப்‌ பின்பு யஎழுத்து மயங்கி வரும்‌."),
              Text("எ-டு. உரிஞ்யாது, தெவ்யாது.",
                  style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
        ));
  }
}
