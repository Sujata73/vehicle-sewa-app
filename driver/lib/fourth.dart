import 'package:driver/tabspage/earningsTabPage.dart';
import 'package:driver/tabspage/homeTabPage.dart';
import 'package:driver/tabspage/profileTabPage.dart';
import 'package:driver/tabspage/ratingTabPage.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  static const String idScreen = "mainScreen";

  @override
  _MainScreenState createState() => _MainScreenState();
}

abstract class _MainScreenState extends State<StatefulWidget>
    with SingleTickerProviderStateMixin {
  int selectedIndex = 0;

  void onItemClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<Widget> _widgetOptions = [
    Appbar4(),
    EarningTabPage(),
    RatingTabPage(),
    ProfileTabPage(),
  ];

  @override
  Widget Build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Vehicle Sewa'),
        backgroundColor: Colors.orange,
        elevation: 4.0,
      ),
      body: _widgetOptions[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Account",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "Ratings",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money),
            label: "Earnings",
          ),
        ],
        unselectedItemColor:Colors.black54,
        selectedItemColor: Colors.orange,
        selectedLabelStyle: TextStyle(fontSize: 12.0),
        showUnselectedLabels: true,
        currentIndex: selectedIndex,
        onTap: onItemClicked,
      ),
    );
  }
}

class BuildContext {
}
