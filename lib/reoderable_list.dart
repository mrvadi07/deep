import 'package:flutter/material.dart';

class ReoderableListDemo extends StatefulWidget {
  const ReoderableListDemo({Key? key}) : super(key: key);

  @override
  State<ReoderableListDemo> createState() => _ReoderableListDemoState();
}

class _ReoderableListDemoState extends State<ReoderableListDemo> {
  List name = [
    "Nikunj",
    "Jaydeep",
    "Milan",
    "Deep",
    "Viraj",
    "Denish",
    "Nikunj",
    "Jaydeep",
    "Milan",
    "Deep",
    "Viraj",
    "Denish",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ReorderableListView.builder(
          itemBuilder: (context, index) {
            return Center(
              key: UniqueKey(),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "${name[index]}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            );
          },
          itemCount: name.length,
          onReorder: (int oldIndex, int newIndex) {
            if (oldIndex < newIndex) {
              newIndex -= 1;
            }
            var addindex = name.removeAt(oldIndex);
            name.insert(newIndex, addindex);
            setState(() {});
          },
          // itemCount: name.length,
          // onReorder: (int oldIndex, int newIndex) {
          //   if (oldIndex < newIndex) {
          //     newIndex -= 1;
          //   }
          //   var addindex = name.removeAt(oldIndex);
          //   name.insert(newIndex, addindex);
          //   setState(() {});
          // },
        ),
      ),
    );
  }
}
