import 'package:flutter/material.dart';
import 'package:techfest/event/event_screen.dart';
import 'package:techfest/home/Mydrawer.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:techfest/home/Myhome.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  var _currentIndex = 2;
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
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) {
          setState(() {
            _currentIndex = i;
            // print(_currentIndex);
            switch (_currentIndex) {
              case 0:
                {
                  // print(_currentIndex);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHome()));
                }
                break;

              case 1:
                {
                  // print(_currentIndex);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Event()));
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
      body: Center(
        child: Text(
          "Work in progress",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25
          ),
        ),
      ),
    );
  }
}
