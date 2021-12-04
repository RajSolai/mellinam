import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mellinam/components/signature.dart';

Widget buildTestPage(
    List<Offset?> _points, onPanUpdateFunction, recognizeText, clearPad) {
  return SafeArea(
    child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 8.0, // soften the shadow
                    spreadRadius: 1.0, //extend the shadow
                    offset: Offset(
                      1.0, // Move to right 10  horizontally
                      1.0, // Move to bottom 10 Vertically
                    ),
                  )
                ]),
            margin: EdgeInsets.all(20.0),
            height: 300.0,
            width: 300.0,
            child: GestureDetector(
              onPanUpdate: (DragUpdateDetails details) {
                onPanUpdateFunction(details);
                recognizeText();
              },
              onPanEnd: (DragEndDetails details) {
                _points.add(null);
              },
              child: CustomPaint(
                painter: Signature(points: _points),
                size: Size.fromHeight(300.0),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Container(
            child: Row(
              children: [
                CupertinoButton.filled(
                    child: Text("Clear"), onPressed: clearPad)
              ],
            ),
          )
        ],
      ),
    ),
  );
}
