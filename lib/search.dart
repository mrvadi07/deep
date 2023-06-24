import 'package:flutter/material.dart';

class SearchDemo extends StatefulWidget {
  const SearchDemo({Key? key}) : super(key: key);

  @override
  State<SearchDemo> createState() => _SearchDemoState();
}

class _SearchDemoState extends State<SearchDemo> {
  TextEditingController namecontroller = TextEditingController();

  List<String> data = [];

  List<String> name = [
    "Nikunj",
    "Jaydeep",
    "Milan",
    "Deep",
    "Viraj",
    "Denish",
    "Mahesh",
    "Nevil",
    "Jenis",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: (value) {
                    data.clear();
                    name.forEach(
                      (element) {
                        if (element.contains(value)) {
                          data.add(element);
                          setState(() {});
                        }
                      },
                    );
                  },
                  controller: namecontroller,
                  decoration: InputDecoration(
                    hintText: "Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                namecontroller.text == ""
                    ? ListView.builder(
                        shrinkWrap: true,
                        itemCount: name.length,
                        itemBuilder: (context, index) {
                          return Text(
                            "${name[index]}",
                            style: TextStyle(height: 3),
                          );
                        },
                      )
                    : ListView.builder(
                        shrinkWrap: true,
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return Text(
                            "${data[index]}",
                            style: TextStyle(height: 3),
                          );
                        },
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
