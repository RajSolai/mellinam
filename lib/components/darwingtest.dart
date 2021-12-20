import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mellinam/components/signature.dart';

Widget buildTestPage(List<Offset?> _points, onPanUpdateFunction, recognizeText,
    clearPad, statusText) {
  return SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
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
          margin: const EdgeInsets.all(20.0),
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
              size: const Size.fromHeight(300.0),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  CupertinoButton(
                      color: Colors.purple,
                      child: const Text("எழுத்துக்களை அழிக்கவும்"),
                      onPressed: clearPad)
                ],
              ),
            )
          ],
        ),
        Text(statusText, style: const TextStyle(fontWeight: FontWeight.bold))
      ],
    ),
  );
}
