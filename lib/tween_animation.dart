import 'package:flutter/material.dart';

class TweenDemo extends StatefulWidget {
  const TweenDemo({Key? key}) : super(key: key);

  @override
  State<TweenDemo> createState() => _TweenDemoState();
}

class _TweenDemoState extends State<TweenDemo> {
  Color color = Colors.green;
  Alignment alignment = Alignment.centerLeft;
  double height = 200;
  double width = 200;
  double radius = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: TweenAnimationBuilder(
                curve: Curves.bounceInOut,
                onEnd: () {
                  setState(() {});
                  color = color == Colors.red ? Colors.green : Colors.red;
                  // alignment = alignment == Alignment.centerLeft
                  //     ? Alignment.centerRight
                  //     : Alignment.centerLeft;
                  height = height == 200 ? 100 : 200;
                  width = width == 200 ? 100 : 200;
                },
                tween: ColorTween(begin: Colors.red, end: color),
                duration: Duration(seconds: 1),
                builder: (BuildContext context, Object? value, Widget? child) {
                  return Container(
                    height: height,
                    width: width,
                    color: color,
                  );
                },
              ),
            ),
            SizedBox(
              height: 100,
            ),
            TweenAnimationBuilder(
              curve: Curves.bounceInOut,
              onEnd: () {
                setState(() {});
                // color = color == Colors.red ? Colors.green : Colors.red;
                // alignment = alignment == Alignment.centerLeft
                //     ? Alignment.centerRight
                //     : Alignment.centerLeft;
                if (alignment == alignment) {
                  alignment = Alignment.topLeft;
                } else {
                  alignment = Alignment.topRight;
                }
              },
              tween: AlignmentTween(begin: Alignment.topRight, end: alignment),
              duration: Duration(seconds: 1),
              builder: (BuildContext context, Object? value, Widget? child) {
                return Container(
                  alignment: alignment,
                  height: 200,
                  width: 200,
                  color: color,
                );
              },
            ),
            SizedBox(
              height: 100,
            ),
            TweenAnimationBuilder(
              onEnd: () {
                setState(() {});
                if (radius == 40) {
                  radius = 10;
                } else {
                  radius = 40;
                }
              },
              builder: (context, value, child) {
                return Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(radius),
                  ),
                );
              },
              tween: BorderRadiusTween(
                begin: BorderRadius.circular(40),
                end: BorderRadius.circular(radius),
              ),
              duration: Duration(seconds: 1),
            ),
          ],
        ),
      ),
    );
  }
}
