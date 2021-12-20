import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("மேலும் விவரங்கள்"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                    "வணக்கம் , நான் சோலை ராஜ் , இந்த ஆண்ட்ராய்டு செயலியை உருவாக்கியவன், இந்த செயலி மூலம் வருங்கால குழந்தைகள் மற்றும் பிறநாட்டு மக்கள் தமிழ் கற்க உதவும் என நம்புகிறேன்")
              ]),
        ),
      ),
    );
  }
}
