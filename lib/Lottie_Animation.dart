import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class jay extends StatefulWidget {
  const jay({Key? key}) : super(key: key);

  @override
  State<jay> createState() => _jayState();
}

class _jayState extends State<jay> with SingleTickerProviderStateMixin {
  AnimationController? controller;
  bool selected = false;
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )..forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkResponse(
        onTap: () {
          setState(() {
            selected = !selected;
          });
          if (controller!.isAnimating) {
            controller!.stop();
          } else if (controller!.isCompleted) {
            controller!.reverse();
          } else
            controller!.forward();
        },
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Lottie.network(
                    "https://assets9.lottiefiles.com/packages/lf20_pWTOxQsYjN.json",
                    controller: controller,
                  ),
                ),
                // TextButton(
                //   onPressed: () {
                //     if (controller!.isAnimating) {
                //       controller!.stop();
                //       setState(() {
                //         isAnimating = isAnimating;
                //       });
                //     } else {
                //       controller!.forward();
                //       setState(() {
                //         isAnimating = isAnimating;
                //       });
                //     }
                //   },
                //   child: Text(isAnimating ? "Stop" : "Play"),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
