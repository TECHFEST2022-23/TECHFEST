import 'package:flutter/material.dart';
import 'package:techfest/about/about_screen.dart';
import 'package:techfest/event/event_screen.dart';
import 'Mydrawer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'social_page.dart';
import 'sign_the_pledge_page.dart';
import 'merchindies_page.dart';
import 'event_button_page.dart';


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
        title: const Text(
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
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
                  scrollDirection: Axis.vertical,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,

                )),
            Container(

              padding: const EdgeInsets.only(top: 15.0,left: 20.0),
              child: const Text("Check out for all the events",style: TextStyle(
                color : Colors.blueGrey,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),),
            ),
            const EventButtonPage(),
            const  Merchandies(),
            const Divider(
              height: 5.0,
              color: Colors.black,
            ),
            Container(
              padding: const EdgeInsets.only(top: 15.0,left: 20.0),
              child: const Text("Check out our social media handles ",style: TextStyle(
                color : Colors.blueGrey,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),),
            ),
            const SocialPage(),
            const SizedBox(
              height: 10.0,
            ),
            const Divider(
              height: 5.0,
              color: Colors.black,
            ),
            const SignThePledge(),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Row(
                children: const [
                  Text('A tour to our virtual twenty fifth edition',style: TextStyle(
                    color: Colors.blueGrey,
                    decoration: TextDecoration.underline,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(Icons.arrow_forward , ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
