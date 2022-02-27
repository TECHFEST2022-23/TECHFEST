import 'package:flutter/material.dart';
import 'home/Myhome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          appBarTheme: AppBarTheme(
            color: Colors.blueGrey,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
          )),
      initialRoute: "/home",
      routes: {
        "/home": (context) => MyHome(),
      },
    );
  }
}