import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialPage extends StatelessWidget {
  const SocialPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  margin: const EdgeInsets.only(top: 15,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                  ),
                  child: const Icon(FontAwesomeIcons.facebook ,color: Colors.blue,size: 50,),),
                const  Center(child:  Text('Facebook')),


              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  margin: const EdgeInsets.only(top: 15,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                  ),
                  child: const Icon(FontAwesomeIcons.instagram ,color: Colors.redAccent,size: 50,),),
                const Center(child:  Text('Instagram')),


              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  margin: const EdgeInsets.only(top: 15,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                  ),
                  child: const Icon(FontAwesomeIcons.youtube ,color: Colors.red,size: 50,),),
                const Center(child:  Text('YouTube')),


              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  margin: const EdgeInsets.only(top: 15,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                  ),
                  child: const Icon(FontAwesomeIcons.twitter ,color: Colors.blue,size: 50,),),
                const  Center(child:  Text('Twitter')),


              ],
            ),

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 20.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  margin: const EdgeInsets.only(top: 15,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                  ),
                  child: const Icon(FontAwesomeIcons.linkedin ,color: Colors.blue,size: 50,),),
                const Center(child:  Text('LinkedIn')),


              ],
            ),


            const SizedBox(
              width: 20.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  margin: const EdgeInsets.only(top: 15,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                  ),
                  child: const Icon(FontAwesomeIcons.pinterest ,color: Colors.red,size: 50,),),
                const Center(child:  Text('Pinterest')),


              ],
            ),





          ],
        ),
      ],
    );
  }
}