import 'package:flutter/material.dart';
import 'package:techfest/about/about_screen.dart';
import 'package:techfest/home/Mydrawer.dart';
// import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:techfest/home/Myhome.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

import '../prodile/profile_screen.dart';

const _url = "https://pages.razorpay.com/pl_J16Y0QcVAaSbPL/view";

class Event extends StatefulWidget {
  const Event({Key? key}) : super(key: key);

  @override
  _EventState createState() => _EventState();
}

class _EventState extends State<Event> {
  var selectedIndex = 1;
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
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Tech fest",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      drawer: Mydrawer(),
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
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 2, right: 2, bottom: 1),
            child: Column(
              children: <Widget>[
               Card(
                 clipBehavior: Clip.antiAlias,
                 child: Stack(
                   alignment: Alignment.center,
                   children: <Widget>[
                     Ink.image(
                       image: AssetImage(
                         "images/001.jpg",
                       ),
                       child: InkWell(
                         onTap: _payment,
                       ),
                       colorFilter: ColorFilter.mode(Colors.black54, BlendMode.colorBurn),
                       height: 172,
                       fit: BoxFit.cover,
                     ),
                     Positioned(
                       left: 20,
                       bottom: 20,
                       child: Text(
                         "Tech Fest",
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 22,
                         ),
                       ),
                     )
                   ],
                 ),
               ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Ink.image(
                        image: AssetImage(
                          "images/002.jpg",
                        ),
                        child: InkWell(
                          onTap: (){
                            print("Image Press");
                          },
                        ),
                        colorFilter: ColorFilter.mode(Colors.black54, BlendMode.colorBurn),
                        height: 172,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        left: 20,
                        bottom: 20,
                        child: Text(
                          "Tech Fest",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Ink.image(
                        image: AssetImage(
                          "images/003.jpg",
                        ),
                        child: InkWell(
                          onTap: (){
                            print("Image Press");
                          },
                        ),
                        colorFilter: ColorFilter.mode(Colors.black54, BlendMode.colorBurn),
                        height: 172,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        left: 20,
                        bottom: 20,
                        child: Text(
                          "Tech Fest",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Ink.image(
                        image: AssetImage(
                          "images/004.jpg",
                        ),
                        child: InkWell(
                          onTap: (){
                            print("Image Press");
                          },
                        ),
                        colorFilter: ColorFilter.mode(Colors.black54, BlendMode.colorBurn),
                        height: 172,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        left: 20,
                        bottom: 20,
                        child: Text(
                          "Tech Fest",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void _payment() async {
  if(!await launch(_url)) throw 'Could not found $_url';
}