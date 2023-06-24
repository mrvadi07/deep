import 'dart:ui';

import 'package:flutter/material.dart';

class ImageFilteredDemo extends StatefulWidget {
  const ImageFilteredDemo({Key? key}) : super(key: key);

  @override
  State<ImageFilteredDemo> createState() => _ImageFilteredDemoState();
}

class _ImageFilteredDemoState extends State<ImageFilteredDemo> {
  double sigmax = 0.0;
  double sigmay = 0.0;
  double rotation = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: sigmax, sigmaY: sigmay),
            child: Image.network(
                "https://images.unsplash.com/photo-1676474048621-631d8bb3ff3a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60"),
          ),
          SizedBox(height: 10),
          ImageFiltered(
            imageFilter: ImageFilter.matrix(Matrix4.skewX(rotation).storage),
            child: Text(
                "hello codeline infotech,anupam bussiness hub,yogichowk,surat"),
          ),
          SizedBox(height: 10),
          Slider(
            min: 0,
            max: 10,
            value: sigmax,
            onChanged: (double value) {
              setState(() {
                sigmax = value;
              });
            },
          ),
          SizedBox(height: 10),
          Text("${sigmax.toStringAsFixed(0)}"),
          SizedBox(height: 10),
          Slider(
            value: sigmay,
            min: 0,
            max: 10,
            onChanged: (double value) {
              setState(() {
                sigmay = value;
              });
            },
          ),
          SizedBox(height: 10),
          Text("${sigmay.toStringAsFixed(0)}"),
          SizedBox(height: 10),
          Slider(
            value: rotation,
            min: 0,
            max: 1,
            onChanged: (double value) {
              setState(() {
                rotation = value;
              });
            },
          ),
          SizedBox(height: 10),
          Text("${rotation.toStringAsFixed(0)}"),
        ],
      ),
    );
  }
}
