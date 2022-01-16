
import 'package:flutter/material.dart';
import 'package:koobo_app/widget/more_trans.dart';
import 'package:koobo_app/widget/quick_action.dart';

class Transaction extends StatefulWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  _TransactionState createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  bool isObscure = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: SafeArea(
        child: Column(children: [SizedBox(height: 20,),
     Row(
     children: [
          Padding(
        padding: const EdgeInsets.only(left: 17.0,bottom: 10.0,right: 10.0),
        child:   Image.asset("assets/images/Ellipse 5.png",height: 45,width: 45,),
      ),
      Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hello,",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400),),
          Text("Adebakin Temitayo",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700),)
        ],)],),
          SizedBox(height: 10,),
          Container(height: 100,width: 300,
            decoration:  BoxDecoration(borderRadius: BorderRadius.circular(20),
            color: Colors.blue.withOpacity(0.9)),child:
            Padding(
              padding: const EdgeInsets.only(left: 15.0,top: 10.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Available balance",style: TextStyle(color: Colors.white70),),
                  TextFormField(keyboardType: TextInputType.number,decoration: InputDecoration(
                      hintText: "\u20A6 20,000.00",
                      hintStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                      suffixIcon: IconButton(icon:Icon(
                        isObscure ? Icons.visibility_off: Icons.visibility,
                        color: Colors.white70,),
                        onPressed: () { setState(() {
                        isObscure = !isObscure;
                      }); },),enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none
                      ),obscureText: isObscure ,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),],),
            ),),
          SizedBox(height: 20, ),
          Padding(
            padding: const EdgeInsets.only(left: 17.0),
            child: Row(
              children: [
                Text("Quick action",style: TextStyle(fontSize: 15,
                    fontWeight: FontWeight.w700,color: Colors.black),),
              ],
            ),
          ),
          SizedBox(height: 20,),

          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              QuickAction(name: "Transfer", image: "assets/images/image 6.png", color: Colors.blue.withOpacity(0.10)),
              QuickAction(name: "Bills", image: "assets/images/image 5.png", color: Colors.pink.withOpacity(0.10)),
              QuickAction(name: "Top-up", image: "assets/images/image 7.png", color: Colors.white.withOpacity(0.8)),
              QuickAction(name: "Wallet", image: "assets/images/image 8.png", color: Colors.green.withOpacity(0.2)),
            ],
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 17.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recent Transactions",style: TextStyle(fontSize: 15,
                    fontWeight: FontWeight.w700,color: Colors.black),),
                Text("More",style: TextStyle(fontSize: 15,
                    fontWeight: FontWeight.w600,color: Colors.lightBlue),)
              ],),
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
        ],),
      ),
    ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            showModalBottomSheet(
              barrierColor: Colors.white70.withOpacity(0.95),
              backgroundColor:Colors.transparent,
                context: context, builder: (context){
              return Padding(
                padding: const EdgeInsets.only(bottom: 75,left: 120),
                child: Column(
                  children: [Spacer(),
                    Text("Wallet",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 17),),
                    SizedBox(height: 15,),
                    Text("Top up",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 17),),
                    SizedBox(height: 15,),
                    Text("Bills",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 17),),
                    SizedBox(height: 15,),
                    Text("Transfer",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 17),),
                    SizedBox(height: 15,),SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 155.0),
                      child: FloatingActionButton(onPressed: (){},
                        child: IconButton(icon: Icon(Icons.close),onPressed: (){
                          Navigator.pop(context);
                        }
                        ),),
                    ),
                  ],
                ),
              );
            });
          },
          child: Icon(Icons.navigation),
        )
    );
  }
}
