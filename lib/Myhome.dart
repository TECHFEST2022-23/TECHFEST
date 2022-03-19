import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';
import 'package:techfest/about/about_screen.dart';
import 'package:techfest/event/event_screen.dart';
import 'package:techfest/home/Mydrawer.dart';
import 'package:techfest/home/home_page.dart';
import 'package:techfest/profile/profile_screen.dart';
import 'package:decorated_icon/decorated_icon.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  List<Widget> page = <Widget> [
    Home(),
    Event(),
    About(),
    ProfilePage()
  ];
  var currentIndex = 0 ;
  void onTab(int index){
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Tech fest",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      drawer: Mydrawer(),
      body: page[currentIndex],
      bottomNavigationBar: SlidingClippedNavBar(
        iconSize: 19,
        onButtonPressed: onTab,
        activeColor: Colors.lightBlue,
        selectedIndex: currentIndex,
        barItems: [
          BarItem(title: "Home", icon: Icons.home),
          BarItem(title: "Event", icon: Icons.calendar_today),
          BarItem(title: "About", icon: FontAwesomeIcons.info),
          BarItem(title: "Profile", icon: FontAwesomeIcons.user),
        ],
      ),
    );
  }
}





