import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techfest/home/Myhome.dart';

class Mydrawer extends StatefulWidget {
  const Mydrawer({Key? key}) : super(key: key);

  @override
  _MydrawerState createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.only(right: 130),
      color: Colors.blueGrey,
      child: ListView(
        children: [

      DrawerHeader(
        padding: EdgeInsets.zero,
          child: UserAccountsDrawerHeader(
        accountName: Text("Techfest",style: TextStyle(color: Colors.white,fontSize: 20),),
        accountEmail: Text("Techfest@gmail.com",style: TextStyle(color: Colors.white,fontSize: 15),),
      )),

          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHome()));
            },
            leading: Icon(CupertinoIcons.home,color: Colors.white,),
           title: Text("home",style: TextStyle(color: Colors.white,fontSize: 20),),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
            title: Text("Profile",style: TextStyle(color: Colors.white,fontSize: 20),),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail,color: Colors.white,),
            title: Text("Email me",style: TextStyle(color: Colors.white,fontSize: 20),),
          )
        ],
      ),
    );
  }
}
