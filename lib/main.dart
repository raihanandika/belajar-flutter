import 'dart:async';
import 'package:belajar_flutter/src/component/images.dart';
import 'package:belajar_flutter/src/view/sample.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startSplash();
  }

  startSplash() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => SamplePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(child: Image.asset(splashImg)),
      ),
    );
  }
}
