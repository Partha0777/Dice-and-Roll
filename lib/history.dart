import 'package:copydice/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({super.key, required this.historyList, required this.history});

  final List<int> historyList;
  final void Function(String data) history;

  String uppercaseFunction(String input) {
    return input.toUpperCase();
  }

  @override
  State<StatefulWidget> createState() => HistoryState();
}

class HistoryState extends State<History> {
  @override
  void initState() {
    super.initState();
    widget.history("");
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              history,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }

  Widget historyItem(String data) {
    return Row(
      children: [Text(data)],
    );
  }
}
