import 'package:flutter/material.dart';
import 'package:techfest/events_button_page/inner_merchindies.dart';

class Merchandies extends StatelessWidget {
  const Merchandies({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 300,
      margin: const EdgeInsets.all(15.0),
      decoration:   BoxDecoration(
          borderRadius: BorderRadius.circular(9.0),
          gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                Color(0xFF274569),
                Color(0xFF020518),
              ]
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Row(
              children:  [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: const Icon(Icons.add_shopping_cart_outlined,color: Colors.white,),
                ),
                const SizedBox(width: 15,),
                const Text('Buy your own Techfest Merchandise', style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0
                ),),
                const SizedBox(width: 10,),
                InkWell(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => merchindiesPage()));
                    },child: const Icon(Icons.arrow_forward_ios,color: Colors.white,)),

              ],
            ),
          ),
          Image.asset('images/merc1.png' ,),
          const SizedBox(
            height: 15.0,
          ),
          Container(
              margin: const EdgeInsets.only(left: 10.0,right: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Campus nostalgia on you mind? Techfest is never ',style: TextStyle(
                      color:  Colors.white,
                      fontSize: 15.0

                  )),
                  SizedBox(
                    height: 5.0,

                  ),
                  Text('too far with our exclusive Techfest merchandise',style: TextStyle(
                      color:  Colors.white,
                      fontSize: 15.0
                  )),
                ],
              )
          ),
          const SizedBox(
            height: 15.0,
          ),
        ],
      ),
    );
  }
}