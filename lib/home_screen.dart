import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => HomeState();
}

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
            Image(image: AssetImage("assets/images/dice_$diceValue.png")),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black)),
              onPressed: () {
                generateRandomNumber();
              },
              child: const Text(
                "Click to Dice And Roll!!",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
