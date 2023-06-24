import 'package:flutter/material.dart';

class TabBar1 extends StatefulWidget {
  const TabBar1({Key? key}) : super(key: key);

  @override
  State<TabBar1> createState() => _TabBar1State();
}

class _TabBar1State extends State<TabBar1> {
  TabController? tabController;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: TabBar(
          controller: tabController,
          onTap: (value) {
            setState(() {});
          },
          tabs: [
            Tab(
              icon: Icon(Icons.account_tree_rounded),
            ),
            Tab(
              icon: Icon(Icons.account_tree_rounded),
            ),
            Tab(
              icon: Icon(Icons.account_tree_rounded),
            ),
            Tab(
              icon: Icon(Icons.account_tree_rounded),
            )
          ],
        ),
      ),
    );
  }
}
