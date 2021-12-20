import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mellinam/pages/test.dart';
import 'package:rive/rive.dart';

class TutorialScreen extends StatefulWidget {
  final String animationName;
  final String groupName;
  final Widget returnScreen;
  final String letterName;
  const TutorialScreen(
      {Key? key,
      required this.animationName,
      required this.groupName,
      required this.letterName,
      required this.returnScreen})
      : super(key: key);

  @override
  _TutorialScreenState createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.groupName} ${widget.letterName}"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 300.0,
                child: RiveAnimation.asset(widget.animationName),
              ),
              Text("${widget.letterName} எப்படி என்பதை அறிக"),
              const SizedBox(
                height: 50.0,
              ),
              CupertinoButton(
                color: Colors.purple,
                child: const Text("எழுதப் பழகுங்கள்"),
                onPressed: () => {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => TestScreen(
                        groupName: widget.groupName,
                        letterToCheck: widget.letterName,
                        returnScreen: widget.returnScreen,
                      ),
                    ),
                  )
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
