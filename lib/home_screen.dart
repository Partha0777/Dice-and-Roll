import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<HomeScreen> {
  var diceValue = 1;
  var list = ["Hello", "How", "What"];

  void generateRandomNumber() {
    setState(() {
      diceValue = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: home());
  }

  Widget home() {

    return Column(
      children: [
        Expanded(
            flex: 3,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("$diceValue",
                      style: const TextStyle(
                          fontSize: 62, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 40),
                  Image(
                      image: AssetImage(image.replaceAll(
                          imagePlaceHolderValue, diceValue.toString()))),
                ],
              ),
            )),

        Expanded(
            flex: 2,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black)),
                      onPressed: () {
                        generateRandomNumber();
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          buttonDiceAndRoll,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )),
      ],
    );
  }
}
