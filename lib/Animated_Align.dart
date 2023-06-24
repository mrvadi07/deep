import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedDemo extends StatefulWidget {
  const AnimatedDemo({Key? key}) : super(key: key);

  @override
  State<AnimatedDemo> createState() => _AnimatedDemoState();
}

class _AnimatedDemoState extends State<AnimatedDemo> {
  double width = 100;
  double height = 100;
  double turn = 5;
  Color colorvalue = Colors.green;
  Alignment alignment = Alignment.topCenter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkResponse(
        onTap: () {
          setState(() {});
          height = height == 100 ? 270 : 100;
          width = width == 100 ? 270 : 100;
          final random = Random();
          if (colorvalue == colorvalue) {
            colorvalue = Color.fromRGBO(
              random.nextInt(256),
              random.nextInt(256),
              random.nextInt(256),
              1,
            );
          } else {
            colorvalue = Colors.red;
          }
          turn = turn == 5 ? 10 : 5;
          alignment = alignment == Alignment.topCenter
              ? Alignment.bottomCenter
              : Alignment.topCenter;
        },
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: SafeArea(
            child: Column(
              children: [
                AnimatedAlign(
                  duration: Duration(seconds: 2),
                  alignment: alignment,
                  child: AnimatedRotation(
                    turns: turn,
                    duration: Duration(seconds: 2),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 2),
                      width: width,
                      height: height,
                      color: colorvalue,
                      onEnd: () {
                        setState(() {});
                        height = height == 100 ? 270 : 100;
                        width = width == 100 ? 270 : 100;
                        final random = Random();
                        if (colorvalue == colorvalue) {
                          colorvalue = Color.fromRGBO(
                            random.nextInt(256),
                            random.nextInt(256),
                            random.nextInt(256),
                            1,
                          );
                        } else {
                          colorvalue = Colors.red;
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
