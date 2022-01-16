import 'package:flutter/material.dart';

class QuickAction extends StatefulWidget {

  final String name;
  final String image;
  final Color color;
  const QuickAction({Key? key,required this.name,required this.image, required this.color}) : super(key: key);

  @override
  _QuickActionState createState() => _QuickActionState();
}

class _QuickActionState extends State<QuickAction> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(width: 50,height: 50,decoration: BoxDecoration(image:
        DecorationImage(image: AssetImage(widget.image)),
            borderRadius: BorderRadius.circular(12),color: widget.color),),
        SizedBox(height: 7,),
        Text(widget.name)
      ],
    );
  }
}

