import 'package:flutter/material.dart';
import 'package:techfest/about/about_screen.dart';
import 'package:techfest/event/event_screen.dart';
import 'Mydrawer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final List _imsource = [
    "https://i.postimg.cc/ZqB7183j/battle.png",
    "https://i.postimg.cc/Pr5MgbnZ/codewizard.png",
    "https://i.postimg.cc/SRszvrYx/thinkbots.png",
  ];
  var _currentIndex = 0;
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
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) {
          setState(() {
            _currentIndex = i;
            print(_currentIndex);
            switch (_currentIndex) {
              case 0:
                {
                  print(_currentIndex);
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHome()));
                }
                break;

              case 1:
                {
                  // print(_currentIndex);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Event()));
                }
                break;

              case 2:
                {
                  // print(_currentIndex);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => About()));
                }
                break;

              case 3:
                {
                  print(_currentIndex);
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHome()));
                }
                break;
            }
          });
        },
        items: [
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Colors.purple,
          ),
          SalomonBottomBarItem(
            icon: Icon(MdiIcons.calendar),
            title: Text("Events"),
            selectedColor: Colors.pink,
          ),
          SalomonBottomBarItem(
            icon: Icon(MdiIcons.chatAlert),
            title: Text("About"),
            selectedColor: Colors.orange,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            selectedColor: Colors.teal,
          ),
        ],
      ),
      drawer: Mydrawer(),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "tech events",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            CarouselSlider(
                items: _imsource
                    .map((item) => Container(
                          child: Center(
                            child: Image.network(
                              item,
                              fit: BoxFit.cover,
                              width: 800,
                              height: 1200,
                            ),
                          ),
                        ))
                    .toList(),
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                )),
          ],
        ),
      ),
    );
  }
}
