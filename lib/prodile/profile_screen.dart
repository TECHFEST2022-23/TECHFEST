

import 'package:flutter/material.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';
import 'package:techfest/event/event_screen.dart';
import '../about/about_screen.dart';
import '../home/Myhome.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  var selectedIndex = 3;

  late PageController _pageController;


  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: selectedIndex);
  }

  void onButtonPressed(int index) {
    setState(() {
      selectedIndex = index;

      if(selectedIndex == 0){
        Navigator.push(context, MaterialPageRoute(builder: (context) => MyHome()));
      }else if(selectedIndex == 1){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Event()));
      }else if(selectedIndex == 2){
        Navigator.push(context, MaterialPageRoute(builder: (context) => About()));
      }else if(selectedIndex == 3){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
      }

      // Navigator.push(context, MaterialPageRoute(builder: (context) => ));
    });
    _pageController.animateToPage(selectedIndex,
        duration: const Duration(milliseconds: 400), curve: Curves.easeOutQuad);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SlidingClippedNavBar(

        backgroundColor: Colors.white,
        onButtonPressed: onButtonPressed,
        iconSize: 30,
        activeColor:  Colors.green,
        inactiveColor: Colors.red,
        selectedIndex: selectedIndex,
        barItems: [

          BarItem(
            icon: Icons.home,
            title: 'Home',
            // activeColor: Colors.blue,
            // inactiveColor: Colors.orange,
          ),
          BarItem(
            icon: Icons.event,

            title: 'Events',
            // activeColor: Colors.yellow,
            // inactiveColor: Colors.green,
          ),
          BarItem(
            icon: Icons.info,
            title: 'About',
            // activeColor: Colors.blue,
            // inactiveColor: Colors.red,
          ),
          BarItem(
            icon: Icons.person_rounded,
            title: 'Profile',
            // activeColor: Colors.cyan,
            // inactiveColor: Colors.white,
          ),
        ],

      ),
    );
  }
}
