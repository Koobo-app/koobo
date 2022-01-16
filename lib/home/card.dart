import 'package:flutter/material.dart';
class Cards extends StatefulWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    SafeArea(
      child: Column(children: [
        SizedBox(height: 30,),
        Center(child: Text("Card",style: TextStyle(fontSize: 18,
            fontWeight: FontWeight.w700,color: Colors.black),)),
        SizedBox(height: 25,),
        Image.asset("assets/images/payment.png"),
        SizedBox(height: 10,),
        Container(height: 8,width: 200,color: Colors.grey.withOpacity(0.4),),
        SizedBox(height: 13,),
        Container(height: 5,width: 120,color: Colors.grey.withOpacity(0.4),),
         SizedBox(height: 60,),
        Container(height: 30,width: 280,color: Colors.grey.withOpacity(0.4),),


      ],),
    ),

      floatingActionButton: FloatingActionButton(onPressed: (){},
        child: Icon( Icons.navigation),
      ),);
  }
}


