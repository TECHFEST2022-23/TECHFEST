import 'package:flutter/material.dart';
import 'package:techfest/events_button_page/inner_sign.dart';

class SignThePledge extends StatelessWidget {
  const SignThePledge({Key? key}) : super(key: key);

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
                const SizedBox(height: 10,width: 15,),
                const Icon(Icons.auto_graph,color: Colors.white,),
                const SizedBox(width: 15,),
                const Text('Sign the pledge' , style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0
                ),),
                const SizedBox(width: 150,),
                InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const signInner()));

                    },child: const Icon(Icons.arrow_forward_ios,color: Colors.white,)),

              ],
            ),
          ),
          Image.asset('images/sif1.png' ,),

          Container(
              margin: const EdgeInsets.only(left: 10.0,right: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Drishti aims to spread awareness about eye donation ',style: TextStyle(
                      color:  Colors.white,
                      fontSize: 13.0

                  )),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text('and highlight the social benefits associated with each',style: TextStyle(
                      color:  Colors.white,
                      fontSize: 13.0
                  )),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text('pair of eyes donated. Take the pledge and become a',style: TextStyle(
                      color:  Colors.white,
                      fontSize: 13.0
                  )),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text('future eye-donor!',style: TextStyle(
                      color:  Colors.white,
                      fontSize: 13.0
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
