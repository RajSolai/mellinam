import 'package:flutter/material.dart';

class RuleFive extends StatelessWidget {
  const RuleFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ம் + வ"),
        ),
        body: SafeArea(
          child: ListView(
            children: const [
              Text(
                  "ம்‌ எழுத்துக்களுக்குப்‌ பின்பு ய எழுத்து மயஙகி வருவதைப்போல்‌ வஎழுத்தும்‌ மயங்கி வரும்‌."),
              Text("௭-டு. நிலம்வலிது.")
            ],
          ),
        ));
  }
}
