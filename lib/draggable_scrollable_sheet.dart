import 'package:flutter/material.dart';

class DraggableScrollableSheetDemo extends StatefulWidget {
  const DraggableScrollableSheetDemo({Key? key}) : super(key: key);

  @override
  State<DraggableScrollableSheetDemo> createState() =>
      _DraggableScrollableSheeatDemoState();
}

class _DraggableScrollableSheeatDemoState
    extends State<DraggableScrollableSheetDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
              "https://images.unsplash.com/photo-1678285118872-cb268d551e4c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyNHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
          Expanded(
            child: DraggableScrollableSheet(
              minChildSize: 0.1,
              maxChildSize: 0.8,
              snap: true,
              snapSizes: [0.3, 0.5],
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return ListView.builder(
                  controller: scrollController,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(vertical: 5),
                      color: Colors.blue.withOpacity(0.3),
                      // margin: EdgeInsets.symmetric(vertical: 10),
                      child: Center(
                        child: Text(
                          "index $index",
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
