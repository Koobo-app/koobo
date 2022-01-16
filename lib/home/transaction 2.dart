import 'package:flutter/material.dart';
import 'package:koobo_app/widget/more_trans.dart';
class Transaction2 extends StatefulWidget {
  const Transaction2({Key? key}) : super(key: key);

  @override
  _Transaction2State createState() => _Transaction2State();
}

class _Transaction2State extends State<Transaction2> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(
        child: SafeArea(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [ SizedBox(height: 18,),
             Center(child: Text("Transaction",
               style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),)),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,top: 20,bottom: 15),
              child: Text("Today",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),),
            ),
            MoreTrans(name: "Tolulope John",color:Colors.pink,icon:Icons.call_made,
              amount:"10,000",),
            MoreTrans(name: "Tolulope John", color:Colors.pink,icon:Icons.call_made,
                amount: "10,000"),
            MoreTrans(name: "Tolulope Credit", color:Colors.green,icon:Icons.call_received,
                amount: "10,000"),
            MoreTrans(name: "Tolulope Credit", color:Colors.green,icon:Icons.call_received,
                amount: "10,000"),
            MoreTrans(name: "Tolulope Credit", color:Colors.green,icon:Icons.call_received,
                amount: "10,000"),
            Padding(
              padding: const EdgeInsets.only(left: 12.0,top: 12,bottom: 12),
              child: Text("Yesterday",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),),
            ),
            SizedBox(height: 10,),
            MoreTrans(name: "Tolulope John",color:Colors.pink,icon:Icons.call_made,
              amount:"10,000",),
            MoreTrans(name: "Tolulope John", color:Colors.pink,icon:Icons.call_made,
                amount: "10,000"),
            MoreTrans(name: "Tolulope Credit", color:Colors.green,icon:Icons.call_received,
                amount: "10,000"),

            Padding(
              padding: const EdgeInsets.only(left: 12.0,top: 12,bottom: 12),
              child: Text("A month Ago",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),),
            ),

            MoreTrans(name: "Tolulope John",color:Colors.pink,icon:Icons.call_made,
              amount:"10,000",),
            MoreTrans(name: "Tolulope John", color:Colors.pink,icon:Icons.call_made,
                amount: "10,000"),


          ],),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon( Icons.navigation ),
      ),);
  }
}
