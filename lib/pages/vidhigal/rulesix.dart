import 'package:flutter/material.dart';

class RuleSix extends StatelessWidget {
  const RuleSix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ய்ர்ழ்‌ +கசதபஞநமயவங"),
        ),
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(10.0),
            children: const [
              Text("ய், ர் ,ழ்‌"),
              Text("ஆகிய எழுத்துக்களுக்குப்‌ பின்பு"),
              Text("க ,ச ,த ,ப ,ஞ ,ந ,ம ,ய ,வ ,ங"),
              Text("எழுத்துக்கள்‌ மயங்கி வரும்‌."),
              Text("எ-டு. நாய்க்கடி, வாழ்க்கை, வேர்வை,வாழ்வு, வேய்ங்குழல்‌",
                  style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
        ));
  }
}
