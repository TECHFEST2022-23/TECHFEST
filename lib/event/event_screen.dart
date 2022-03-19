import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
const _url = "https://pages.razorpay.com/pl_J16Y0QcVAaSbPL/view";

class Event extends StatefulWidget {
  const Event({Key? key}) : super(key: key);

  @override
  _EventState createState() => _EventState();
}

class _EventState extends State<Event> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                         onTap: _payment,
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

void _payment() async {
  if(!await launch(_url)) throw 'Could not found $_url';
}