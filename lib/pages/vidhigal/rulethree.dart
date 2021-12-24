import 'package:flutter/material.dart';

class RuleThree extends StatelessWidget {
  const RuleThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ங்ஞ்ண்ந்ம்ன்‌ + தத்தமிசைகள்‌"),
        ),
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(10.0),
            children: const [
              Text(
                  "மெல்லின எழுத்துக்கள்‌ ஆகியங்‌, ஞ்‌, ண்‌, நீ, ம்‌,ன்‌ ஆகிய எழுத்துக்களுக்குப்‌ பின்பு அதனுடைய ஒத்த ஒலிகளாக அறியப்படுகின்ற வல்லின எழுத்துக்கள்‌ ஆகிய ௧, ச, ட, த,ப,ற ஆகிய எழுத்துகள்‌ மயங்கி வரும்‌. இதனை அடிப்படையாக வைத்தே கங்‌, ச்ஞ்‌, ட்ண்‌, த்ந்‌, ப்ம்‌, றன என்ற மெய்‌ எழுத்து வரிசைமுறை தமிழ்மொழியில்‌ இடம்பெறுகின்றன. இதனை இப்படிப்‌ புரிந்துகொள்ளலாம்‌. ங்‌ என்ற எழுத்தை அடுத்து க எழுத்து வரும்‌. அதுபோல்‌ ஞ்ச, ண்ட, ந்த, ம்ப, ன்ற என்ற என்ற எழுத்துக்கள்‌ மயங்கி வருவதை நாம்‌ பார்க்கமுடியும்‌."),
              Text("எ-டு. மாங்காய்‌, பிஞ்சு, மண்டை, வந்து, வம்பு, சென்ற.",
                  style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
        ));
  }
}
