import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerDemo extends StatefulWidget {
  const DatePickerDemo({Key? key}) : super(key: key);

  @override
  State<DatePickerDemo> createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  DateTime initialdate = DateTime.now();

  DateTime currentdate = DateTime.now();

  DateFormat formate = DateFormat("dd/MM/yyyy : hh:mm:ss");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          setState(() {});
          currentdate = (await showDatePicker(
              context: context,
              initialDate: initialdate,
              firstDate: DateTime(1900),
              lastDate: DateTime(2100),
              currentDate: currentdate))!;
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Text("${formate.format(currentdate)}"),
      ),
    );
  }
}
