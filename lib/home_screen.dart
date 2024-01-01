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

  void generateRandomNumber(){
    setState(() {
      diceValue = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("images/dice_$diceValue.png")),
            const SizedBox(height: 20),
            ElevatedButton(child: const Text("Click to Dice And Roll!!"),onPressed: (){
              generateRandomNumber();
            })
          ],
        ),
      ),
    );
  }
}
