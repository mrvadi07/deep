import 'package:flutter/material.dart';

class AnimatedContainerDemo extends StatefulWidget {
  const AnimatedContainerDemo({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerDemo> createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  double height = 200;
  double width = 200;
  Color color = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
          height = height == 200 ? 100 : 200;
          width = width == 200 ? 100 : 200;
          color = color == Colors.green ? Colors.red : Colors.green;
        },
      ),
      body: Center(
        child: AnimatedRotation(
          duration: Duration(seconds: 1),
          turns: 20.0,
          child: Container(
            height: height,
            width: width,
            color: color,
          ),
        ),
      ),
    );
  }
}
