import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mellinam/dink.dart';
import 'package:mellinam/pages/home.dart';
import 'package:mellinam/pages/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: SplashScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          elevation: 1.0,
          backgroundColor: Colors.white,
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarColor: Colors.black),
          titleTextStyle: TextStyle(
              color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w500),
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
    );
  }
}
