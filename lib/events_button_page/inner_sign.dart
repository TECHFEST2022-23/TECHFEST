import 'package:flutter/material.dart';

class signInner extends StatelessWidget {
  const signInner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.hourglass_empty_rounded, size: 30.0,color: Colors.black,),
            Text('No data yet..',style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.black,
                fontSize: 15.0
            ),)
          ],
        ),
      ),
    );
  }
}
