import 'dart:async';

import 'package:flutter/material.dart';

class Timer1 extends StatefulWidget {
  const Timer1({Key? key}) : super(key: key);

  @override
  State<Timer1> createState() => _Timer1State();
}

class _Timer1State extends State<Timer1> {
  int second = 0;
  int minit = 0;
  int hours = 0;
  @override
  void initState() {
    Timerdemo();
    // TODO: implement initState
    super.initState();
  }

  void Timerdemo() {
    Timer timer = Timer.periodic(Duration(seconds: 1), (timer) {
      second++;
      if (second == 60) {
        minit++;
        second = 0;
        if (minit == 60) {
          hours++;
          second = 0;
          minit = 0;
          if (hours == 12) {
            second = 0;
            minit = 0;
            hours = 0;
          }
        }
      }
      setState(() {});
      print("$second:$minit:$hours");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "$second:$minit:$hours",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
