import 'dart:async';

import 'package:flutter/material.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  int second = 60;
  bool isresend = false;
  void Timerdemo() {
    Timer timer = Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        setState(() {});
        second--;
        if (second == 0) {
          timer.cancel();
          setState(() {});
          second = 60;
          isresend = true;
        }
      },
    );
  }

  @override
  void initState() {
    Timerdemo();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$second",
              style: TextStyle(fontSize: 30),
            ),
            isresend
                ? ElevatedButton(
                    onPressed: () {
                      setState(() {});
                      isresend = false;
                      Timerdemo();
                    },
                    child: Text("enter"),
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
