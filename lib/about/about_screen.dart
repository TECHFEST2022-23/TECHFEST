import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techfest/event/event_screen.dart';
import 'package:techfest/home/Mydrawer.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:techfest/home/Myhome.dart';

import '../prodile/profile_screen.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  var selectedIndex = 2;

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
        title: const Text(
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
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xffE8F1D3),
          child: Column(
            children: const [
              Center(
                child: Padding(
                  padding:  EdgeInsets.only(top: 12.0),
                  child: Text(
                    "About Us",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              Center(
                  child: Padding(
                padding:  EdgeInsets.only(left: 20.0, right: 20, top: 10),
                child: Text(
                  "P P Savani University, one of the leading Knowledge City is a fully integrated higher education facility for the students across the globe. With an in-depth domain exposure in the field of education, it has strong capabilities across the spectrum of the education industry. From Nursing to Engineering, Liberal Arts to Specialized Sciences, Architecture to Physiotherapy and Management to Design, P P Savani University has earned a reputation amongst Indian Universities for providing quality and comprehensive learning environment",
                  style: TextStyle(fontSize: 18),
                ),
              )),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20, top: 10),
                  child: Text(
                    "One of the salient features of P P Savani University is its rich history and lineage. P P Savani Group was founded in 1987 by Mr Vallabbhai Savani, the President and a first-generation entrepreneur of the family. In 2017, the group launched P P Savani University, spread across 100-acres of green expanse, witnessed a significant growth by setting a new benchmark in the higher education industry. Adhering to its promise of providing quality education to the students, P P Savani University offers undergraduate, postgraduate, research, certificate and skill-development programmes. The university is passionate about enhancing the students’ learning experience by equipping them with skills and knowledge needed in the 21st century’s demanding workplace.",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
