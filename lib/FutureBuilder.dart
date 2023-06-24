import 'dart:async';

import 'package:flutter/material.dart';

class FutureBuilder1 extends StatefulWidget {
  const FutureBuilder1({Key? key}) : super(key: key);

  @override
  State<FutureBuilder1> createState() => _FutureBuilder1State();
}

class _FutureBuilder1State extends State<FutureBuilder1> {
  Future futuree() async {
    await Future.delayed(Duration(seconds: 3));
    return 20;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: FutureBuilder(
            future: futuree(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Text(
                  "${snapshot.data}",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                );
              } else if (snapshot.hasError) {
                return Text("Somthing went wrong");
              } else {
                return CircularProgressIndicator();
              }
            },
          ),
        ),
      ),
    );
  }
}
