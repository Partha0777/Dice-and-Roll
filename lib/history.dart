import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({super.key, required this.historyList});

  final List<int> historyList;

  @override
  State<StatefulWidget> createState() => HistoryState();
}

class HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(

        ),
      ),
    );
  }
}
