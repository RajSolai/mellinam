import 'package:flutter/material.dart';
import 'package:mellinam/services/db.dart';

class CompletedScreen extends StatefulWidget {
  const CompletedScreen({Key? key}) : super(key: key);

  @override
  _CompletedScreenState createState() => _CompletedScreenState();
}

class _CompletedScreenState extends State<CompletedScreen> {
  Set completedLetters = {};

  @override
  void initState() {
    super.initState();
    Respository()
        .getAllLetters()
        .then((value) => {completedLetters = value, setState(() {})});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("கற்றுக்கொண்ட எழுத்துக்கள்"),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: completedLetters.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.all(2.0),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    completedLetters.elementAt(index),
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
