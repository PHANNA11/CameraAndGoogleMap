import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test2/view/botton_navigation/pages/homepage.dart';
import 'package:test2/view/botton_navigation/pages/profilepage.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  List<Widget> listPage = [HomePage(), const ProfilePage()];
  int index = 0;
  void selectIndex(int index) {
    setState(() {
      this.index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(tabs: [
            Tab(
              child: Text(
                'Man Collectoin',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Tab(
              child: Text(
                'Women Collectoin',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              // text: 'Women Collectoin',
            )
          ]),
        ),
        body: TabBarView(children: [HomePage(), const ProfilePage()]),
        // bottomNavigationBar: BottomNavigationBar(
        //   items: const [
        //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        //     BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        //   ],
        //   currentIndex: index,
        //   onTap: selectIndex,
        // ),
      ),
    );
  }
}
