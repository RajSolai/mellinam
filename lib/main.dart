import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mellinam/dink.dart';
import 'package:mellinam/pages/home.dart';
import 'package:mellinam/pages/splash.dart';
import 'package:mellinam/services/db.dart';

void main() => {runApp(const MyApp())};

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: const SplashScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          elevation: 1.0,
          backgroundColor: Colors.white,
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarColor: Colors.grey),
          titleTextStyle: TextStyle(
              color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w500),
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
    );
  }
}
