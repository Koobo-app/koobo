import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    SafeArea(
      child: Column(children: [SizedBox(height: 15,),
        Center(child: Text("Settings",style: TextStyle(fontSize: 18,
            fontWeight: FontWeight.w700,color: Colors.black),)),
        SizedBox(height: 20,),
        ListTile(leading: Image.asset("assets/images/Ellipse 5.png",width: 40,height: 40,),
        title: Text("Adebakin Temitayo",style: TextStyle(fontWeight: FontWeight.w600,),),
        subtitle: Text("11789680",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
        trailing: IconButton(icon: Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,),
          onPressed: (){},),),
        ListTile(leading: Container(height: 40,width: 40,
          decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.blue.withOpacity(0.4),
              image: DecorationImage(image:AssetImage("assets/images/statement 1.png",),),
          ),
          ),title: Text("Statement and Report",style: TextStyle(fontWeight: FontWeight.w600,),),
        subtitle: Text("Download of account",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
          trailing: IconButton(icon: Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,),
            onPressed: (){},), ),
        ListTile(leading: Container(height: 40,width: 40,
          decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.blue.withOpacity(0.4),
              image: DecorationImage(image: AssetImage("assets/images/credit-card.png",))
          ),
          ),title: Text("Manage Credit Card",style: TextStyle(fontWeight: FontWeight.w600,),),
          subtitle: Text("11769680",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
          trailing: IconButton(icon: Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,),
            onPressed: (){},), ),
        ListTile(leading: Container(height: 40,width: 40,
          decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.grey.withOpacity(0.4),),
        ),title: Text("System",style: TextStyle(fontWeight: FontWeight.w600,),),
          subtitle: Text("11769680",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
          trailing: IconButton(icon: Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,),
            onPressed: (){},), ),
       Spacer(),
        Padding(
          padding: const EdgeInsets.only(left: 15.0,bottom: 20.0),
          child: Row(children: [
            Container(width: 40,height: 40,
            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.red.withOpacity(0.10)),
              child:IconButton(icon:Icon(Icons.login_rounded,color: Colors.red,),
                onPressed: (){},)),SizedBox(width: 8,),
            Text("Log out",style: TextStyle(fontWeight: FontWeight.bold,
              color:Colors.red ),)
          ],),
        )
      ],),
    ),

      floatingActionButton: FloatingActionButton(onPressed: (){},
        child: Icon( Icons.navigation ),
      ),   );
  }
}
