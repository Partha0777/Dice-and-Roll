import 'dart:async';

import 'package:copydice/home_screen.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false, home: SplashWidget()));
}


class SplashWidget extends StatefulWidget {
  const SplashWidget({super.key});

  @override
  State<StatefulWidget> createState() => SplashStateWidget();
}

class SplashStateWidget extends State<SplashWidget> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: splashDuration), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (con) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              appName,
              style: TextStyle(fontSize: 24),
            ),
          )
        ],
      ),
    );
  }
}
