import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techfest/event/event_screen.dart';
import 'package:techfest/home/Mydrawer.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:techfest/home/Myhome.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            switch (_currentIndex) {
              case 0:
                {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyHome()));
                }
                break;

              case 1:
                {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Event()));
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
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xffE8F1D3),
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Text(
                    "About Us",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
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
