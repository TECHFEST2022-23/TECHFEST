import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techfest/home/social_page.dart';
import 'new_button.dart';


class NewHomePage extends StatelessWidget {
  const NewHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 300,
            ),

             Expanded(
                child: Container(
                  width: double.infinity,
                  height: 700,

                  decoration: const BoxDecoration(
                    color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),

                      gradient:  LinearGradient(

                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: <Color>[

                            // Color(0xff7DDFFF),
                            // Color(0xffB09EFF),
                            // Color(0xffED92EF),
                            // Color(0xffF9B1D0),
                            // Color(0xffE8B8E0),
                            Color(0xff0C131B),

                            Color(0xff26272A)
                            // Colors.black54,
                            // Colors.white12

                          ]
                      ),
                  ),
                  child: SecondHome(),
                ),
              ),

          ],
        ),

      ),
    );
  }
}



class SecondHome extends StatefulWidget {
  const SecondHome({Key? key}) : super(key: key);

  @override
  _SecondHomeState createState() => _SecondHomeState();
}

class _SecondHomeState extends State<SecondHome> {

  final List _imsource = [
    "images/001.jpg",
    "images/002.jpg",
    "images/003.jpg",
    "images/004.jpg",
    "images/005.jpg",

  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(top: 10,left: 10,right: 10),
        child: Column(
          children:  [
           const  Text("CHECK OUT ALL THE EVENTS", style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
            const SizedBox(
              height: 20,
            ),
            CarouselSlider(
                items: _imsource
                    .map((item) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Image.asset(
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
                  scrollDirection: Axis.horizontal,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                )),
            const SizedBox(
              height: 20,
            ),
            NewButton(),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 200,
              
              decoration:  BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20),
                // gradient:  LinearGradient(
                //     begin: Alignment.topRight,
                //     end: Alignment.bottomLeft,
                //   colors: [
                //     Color(0xffCB1356).withOpacity(0.8),
                //     Color(0xffEFA638).withOpacity(0.8)
                //   ]
                // )
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SocialPage(),

          ],
        ),

      ),



    );
  }
}

