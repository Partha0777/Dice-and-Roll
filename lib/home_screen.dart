import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => HomeState();
}

const image = "assets/images/dice_{}.png";
const imagePlaceHolderValue = "{}";
const buttonDiceAndRoll = "Click to Dice And Roll!!";

class HomeState extends State<HomeScreen> {
  var diceValue = 1;

  void generateRandomNumber() {
    setState(() {
      diceValue = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$diceValue",
                style:
                    const TextStyle(fontSize: 62, fontWeight: FontWeight.bold)),
            const SizedBox(height: 40),
            Image(image: AssetImage(image.replaceAll(imagePlaceHolderValue, diceValue.toString()))),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black)),
              onPressed: () {
                generateRandomNumber();
              },
              child: const Text(
                buttonDiceAndRoll,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
