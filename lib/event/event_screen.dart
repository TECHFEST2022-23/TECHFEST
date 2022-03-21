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
                        image: NetworkImage(
                          "https://images.pexels.com/photos/159306/construction-site-build-construction-work-159306.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        ),
                        child: InkWell(
                          onTap: (){},
                        ),
                        colorFilter: ColorFilter.mode(Colors.black54, BlendMode.colorBurn),
                        height: 172,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        left: 20,
                        bottom: 20,
                        child: Text(
                          "Civil Engineering",
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
                        image: NetworkImage(
                          "https://images.pexels.com/photos/8544932/pexels-photo-8544932.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
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
                          "Chemical Engineering",
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
                        image: NetworkImage(
                          "https://images.unsplash.com/photo-1517694712202-14dd9538aa97?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
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
                          "Computer Engineering",
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
                        image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2018/03/10/09/45/businessman-3213659_960_720.jpg",
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
                          "Information Technology",
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
                        image: NetworkImage(
                          "https://images.unsplash.com/photo-1565538534766-87c0206acfef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1281&q=80",
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
                          "Non-Technical ",
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
                        image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2017/01/06/11/01/tool-1957451_960_720.jpg",
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
                          "Work shop",
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