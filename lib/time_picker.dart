import 'package:flutter/material.dart';

class TimePickerDemo extends StatefulWidget {
  const TimePickerDemo({Key? key}) : super(key: key);

  @override
  State<TimePickerDemo> createState() => _TimePickerDemoState();
}

class _TimePickerDemoState extends State<TimePickerDemo> {
  String? time;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
          showTimePicker(
                  context: context,
                  initialTime: TimeOfDay(hour: 12, minute: 60))
              .then(
            (value) {
              time = value!.format(context);
              setState(() {});
            },
          );
        },
        child: Text("Click"),
      ),
      body: Center(
        child: Text(
          "${time}",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
