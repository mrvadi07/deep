import 'package:flutter/material.dart';

class AnimationControllerDemo extends StatefulWidget {
  const AnimationControllerDemo({Key? key}) : super(key: key);

  @override
  State<AnimationControllerDemo> createState() =>
      _AnimationControllerDemoState();
}

class _AnimationControllerDemoState extends State<AnimationControllerDemo>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;

  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2))
          ..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (controller!.isAnimating) {
              controller!.stop();
            } else if (controller!.isCompleted) {
              controller!.reverse();
            } else {
              controller!.forward();
            }
          });
        },
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: controller!,
          builder: (BuildContext context, Widget? child) {
            return Container(
              height: controller!.value * 200,
              width: controller!.value * 200,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(20),
              ),
            );
          },
        ),
      ),
    );
  }
}
