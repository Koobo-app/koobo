import 'package:flutter/material.dart';
import 'package:koobo_app/screens/card.dart';
import 'package:koobo_app/screens/settings.dart';
import 'package:koobo_app/screens/transaction%202.dart';
import 'package:koobo_app/screens/transaction.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final widgets =[
    Transaction(),
    Cards(),
   Transaction2(),
    Settings(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:widgets[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index)=> setState((){
          currentIndex=index;
        }) ,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/Vector 2.png",color: Colors.grey,),
              activeIcon:Image.asset("assets/images/Vector 2.png",),
              title: Text("",)),
          BottomNavigationBarItem(icon: Image.asset("assets/images/Vector.png",color: Colors.grey),
              activeIcon:Image.asset("assets/images/Vector.png",),
              title: Text("",)),
          BottomNavigationBarItem(icon: Image.asset("assets/images/Vector 3.png",color: Colors.grey),
              activeIcon:Image.asset("assets/images/Vector 3.png",),
              title: Text("",)),
          BottomNavigationBarItem(icon: Image.asset("assets/images/Vector 4.png",color: Colors.grey),
              activeIcon:Image.asset("assets/images/Vector 4.png",),
              title: Text("",))

        ],
      ),);
  }
}
