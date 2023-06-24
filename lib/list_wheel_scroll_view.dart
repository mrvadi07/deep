import 'package:flutter/material.dart';

class ListWheelScrollViewDemo extends StatefulWidget {
  const ListWheelScrollViewDemo({Key? key}) : super(key: key);

  @override
  State<ListWheelScrollViewDemo> createState() =>
      _ListWheelScrollViewDemoState();
}

class _ListWheelScrollViewDemoState extends State<ListWheelScrollViewDemo> {
  List name = [
    "Nikunj",
    "Jaydeep",
    "Milan",
    "Deep",
    "Viraj",
    "Denish",
    "Nikunj",
    "Jaydeep",
    "Milan",
    "Deep",
    "Viraj",
    "Denish",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListWheelScrollView(
        itemExtent: 80,
        diameterRatio: 0.9,
        perspective: 0.0001,
        overAndUnderCenterOpacity: 0.3,
        // magnification: 0.5,
        // offAxisFraction: -1,
        squeeze: 3,
        useMagnifier: true,
        children: List.generate(
          name.length,
          (index) => Text("${name[index]}"),
        ),
      ),
    );
  }
}
