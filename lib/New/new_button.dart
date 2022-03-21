import 'package:flutter/material.dart';
import 'package:techfest/button/event_button.dart';
import 'package:techfest/events_button_page/Technoholix_page.dart';
import 'package:techfest/events_button_page/lectures_page.dart';
import 'package:techfest/events_button_page/initiative_page.dart';
import 'package:techfest/events_button_page/exhibition_page.dart';
import 'package:techfest/events_button_page/competitions_page.dart';
import 'package:techfest/events_button_page/workshops_page.dart';
import '../button/event_button.dart';


class NewButton extends StatelessWidget {
  const NewButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            EventButton(title: 'Competitions',img: 'images/eve22.png',colour: Colors.white.withOpacity(0.3),func: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => compitionsPage()));
            },),
            EventButton(title: 'lectures',img: 'images/ev11.png',colour: Colors.white.withOpacity(0.3),func: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => compitionsPage()));
            },),
            EventButton(title: 'Workshops',img: 'images/eve333.png',colour:  Colors.white.withOpacity(0.3),func: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => workShopPage()));
            },),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            EventButton(title: 'Exhibitions',img: 'images/eve44.png',colour: Colors.white.withOpacity(0.3),func: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => exhibitionPage()));
            },),
            EventButton(title: 'Initiatives',img: 'images/eve55.png',colour:Colors.white.withOpacity(0.3),func: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => intiativePage()));
            },),


            EventButton(title: 'Technoholix',img: 'images/eve66.png',colour: Colors.white.withOpacity(0.3),func: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TechnoHolixPage()));
            },),
          ],
        )
      ],
    );
  }
}
