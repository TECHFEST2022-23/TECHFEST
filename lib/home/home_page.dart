import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:techfest/home/event_button_page.dart';
import 'package:techfest/home/merchindies_page.dart';
import 'package:techfest/home/sign_the_pledge_page.dart';
import 'package:techfest/home/social_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List _imsource = [
    "https://i.postimg.cc/ZqB7183j/battle.png",
    "https://i.postimg.cc/Pr5MgbnZ/codewizard.png",
    "https://i.postimg.cc/SRszvrYx/thinkbots.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Tech events",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: CarouselSlider(
                  items: _imsource
                      .map((item) => Container(
                    child: Center(
                      child: Image.network(
                        item,
                        fit: BoxFit.cover,
                        width: 500,
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
            ),
            Container(
              padding: const EdgeInsets.only(top: 15.0, left: 20.0),
              child: const Text(
                "Check out for all the events",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const EventButtonPage(),
            const Merchandies(),
            const Divider(
              height: 5.0,
              color: Colors.black,
            ),
            Container(
              padding: const EdgeInsets.only(top: 15.0, left: 20.0),
              child: const Text(
                "Check out our social media handles ",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
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
                  Text(
                    'A tour to our virtual twenty fifth edition',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      decoration: TextDecoration.underline,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(
                      Icons.arrow_forward,
                    ),
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
