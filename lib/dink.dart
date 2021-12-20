import 'package:flutter/material.dart';
import 'package:google_ml_kit/google_ml_kit.dart';

class DigitalInkView extends StatefulWidget {
  const DigitalInkView({Key? key}) : super(key: key);

  @override
  _DigitalInkViewState createState() => _DigitalInkViewState();
}

class _DigitalInkViewState extends State<DigitalInkView> {
  LanguageModelManager languageModelManager =
      GoogleMlKit.vision.languageModelManager();
  DigitalInkRecogniser digitalInkRecogniser =
      GoogleMlKit.vision.digitalInkRecogniser();
  List<Offset?> _points = <Offset>[];
  String _recognisedText = '';
  final String _language = 'ta';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Digital Ink Recognition')),
      body: SafeArea(
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
              margin: const EdgeInsets.all(20.0),
              height: 300.0,
              width: 300.0,
              child: GestureDetector(
                onPanUpdate: (DragUpdateDetails details) {
                  setState(() {
                    RenderObject? object = context.findRenderObject();
                    final _localPosition = (object as RenderBox?)
                        ?.globalToLocal(details.localPosition);
                    _points = List.from(_points)..add(_localPosition);
                  });
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
            if (_recognisedText.isNotEmpty)
              Text(
                'Candidates: $_recognisedText',
                style: TextStyle(fontSize: 23),
              ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    child: const Text('Read Text'),
                    onPressed: _recogniseText,
                  ),
                  ElevatedButton(
                    child: const Text('Clear Pad'),
                    onPressed: _clearPad,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    child: const Text('Check Model'),
                    onPressed: _isModelDownloaded,
                  ),
                  ElevatedButton(
                    child: const Text('Download'),
                    onPressed: _downloadModel,
                  ),
                  ElevatedButton(
                    child: const Text('Delete'),
                    onPressed: _deleteModel,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  void _clearPad() {
    setState(() {
      _points.clear();
      _recognisedText = '';
    });
  }

  Future<void> _isModelDownloaded() async {
    final isModelDownloaded =
        await languageModelManager.isModelDownloaded(_language);
    print(isModelDownloaded);
  }

  Future<void> _deleteModel() async {
    languageModelManager.deleteModel(_language);
    print('deleting model');
  }

  Future<void> _downloadModel() async {
    languageModelManager.downloadModel(_language);
    print('Downloading model...');
  }

  Future<void> _recogniseText() async {
    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              title: Text('Recognising'),
            ),
        barrierDismissible: true);
    try {
      final candidates =
          await digitalInkRecogniser.readText(_points, _language);
      setState(() {
        _recognisedText = candidates[0].text;
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(e.toString()),
      ));
    }
    Navigator.pop(context);
  }
}

class Signature extends CustomPainter {
  List<Offset?> points;

  Signature({this.points = const []});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.blue
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 8.0;

    for (int i = 0; i < points.length - 1; i++) {
      final p1 = points[i];
      final p2 = points[i + 1];
      if (p1 != null && p2 != null) {
        canvas.drawLine(p1, p2, paint);
      }
    }
  }

  @override
  bool shouldRepaint(Signature oldDelegate) => oldDelegate.points != points;
}
