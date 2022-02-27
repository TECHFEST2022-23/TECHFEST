import 'package:flutter/material.dart';
import 'package:techfest/about/about_screen.dart';
import 'package:techfest/home/Mydrawer.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:techfest/home/Myhome.dart';

class Event extends StatefulWidget {
  const Event({Key? key}) : super(key: key);

  @override
  _EventState createState() => _EventState();
}

class _EventState extends State<Event> {
  var _currentIndex = 1;
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

              case 2:
                {
                  print(_currentIndex);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> About()));
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
