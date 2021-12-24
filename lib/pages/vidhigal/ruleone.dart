import 'package:flutter/material.dart';

class RuleOne extends StatelessWidget {
  const RuleOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ட்ற்ல்ள் + கசப"),
        ),
        body: SafeArea(
          child: ListView(
            children: const [
              Text("ஒரு சொல்லில் ட்‌,ற்‌, ல்‌, ள்‌ ஆகிய"),
              Text(
                  "எழுத்துக்களுக்கு பின்பு கிய க, சபய எழுத்துக்கள்‌ மயங்கி வரும்‌")
            ],
          ),
        ));
  }
}
