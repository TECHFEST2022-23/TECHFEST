import 'package:flutter/material.dart';

class EventButton extends StatelessWidget {
  const EventButton({
    required this.func,
    required this.colour,
    required this.title,
    required this.img,
    Key? key,
  }) : super(key: key);
  final Color colour ;
  final String title;
  final String img;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: func,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 15,),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: colour,
            ),

            // height:50,
            // width: 50,

            child: Image.asset(img ,height: 70,width: 70,),
          ),
          Center(child:  Text(title)),

        ],
      ),
    );
  }
}