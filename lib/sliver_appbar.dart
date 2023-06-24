import 'package:flutter/material.dart';

class SliverAppBaeDemo extends StatefulWidget {
  const SliverAppBaeDemo({Key? key}) : super(key: key);

  @override
  State<SliverAppBaeDemo> createState() => _SliverAppBaeDemoState();
}

class _SliverAppBaeDemoState extends State<SliverAppBaeDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            title: Text("hello"),
            // toolbarHeight: 100,
            backgroundColor: Colors.teal,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Sliver App Bar"),
              background: Image.asset("assets/images/instagram.png"),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                height: 200,
                width: 300,
                color: Colors.blue,
              ),
              Container(
                height: 200,
                width: 300,
                color: Colors.blue,
              ),
              Container(
                height: 200,
                width: 300,
                color: Colors.blue,
              ),
              Container(
                height: 200,
                width: 300,
                color: Colors.blue,
              ),
              Container(
                height: 200,
                width: 300,
                color: Colors.blue,
              ),
              Container(
                height: 200,
                width: 300,
                color: Colors.blue,
              ),
            ],
          )),
        ],
      ),
    );
  }
}
