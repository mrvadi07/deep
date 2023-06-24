import 'package:flutter/material.dart';

class AlertDialog1 extends StatefulWidget {
  const AlertDialog1({Key? key}) : super(key: key);

  @override
  State<AlertDialog1> createState() => _AlertDialog1State();
}

class _AlertDialog1State extends State<AlertDialog1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AlertDialog deep = AlertDialog(
            title: Text("Alert dialog"),
            content: Text("ncjhgyg"),
            backgroundColor: Colors.teal.shade100,
            actions: [
              IconButton(
                onPressed: () {},
                icon: Text("yes"),
              ),
              IconButton(
                onPressed: () {},
                icon: Text("no"),
              ),
            ],
          );
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return deep;
              });
        },
        child: Text("Show"),
      ),
    );
  }
}
