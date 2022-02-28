import 'package:flutter/material.dart';
import 'package:techfest/button/event_button.dart';
import 'package:techfest/events_button_page/Technoholix_page.dart';
import 'package:techfest/events_button_page/lectures_page.dart';
import 'package:techfest/events_button_page/initiative_page.dart';
import 'package:techfest/events_button_page/exhibition_page.dart';
import 'package:techfest/events_button_page/competitions_page.dart';
import 'package:techfest/events_button_page/workshops_page.dart';

class EventButtonPage extends StatelessWidget {
  const EventButtonPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            EventButton(title: 'Lectures',img: 'images/ev11.png',colour: Colors.transparent,func: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => lecturesPage()));
            },),
            EventButton(title: 'Competitions',img: 'images/eve22.png',colour: Colors.transparent,func: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => compitionsPage()));
            },),
            EventButton(title: 'Workshops',img: 'images/eve333.png',colour: Colors.transparent,func: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => workShopPage()));
            },),
            EventButton(title: 'Exhibitions',img: 'images/eve44.png',colour: Colors.transparent,func: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => exhibitionPage()));
            },),



          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 100,right: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 20.0,
              ),
              EventButton(title: 'Initiatives',img: 'images/eve55.png',colour: Colors.transparent,func: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => intiativePage()));
              },),

              const SizedBox(
                width: 20.0,
              ),
              EventButton(title: 'Technoholix',img: 'images/eve66.png',colour: Colors.transparent,func: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TechnoHolixPage()));
              },),




            ],
          ),
        ),

      ],
    );
  }
}
