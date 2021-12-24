import 'package:flutter/material.dart';

class RuleSeven extends StatelessWidget {
  const RuleSeven({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ர ழ அலங்கடை"),
        ),
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(10.0),
            children: const [
              Text(
                  "ர, ழ .என்ற எழுத்துக்கள்‌ தவிர பிற எழுத்துக்கள்‌ தன்‌ எழுத்துக்களோடு தன்‌எழுத்துக்கள்‌ மயங்கி வரும்‌.",
                  style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
        ));
  }
}
