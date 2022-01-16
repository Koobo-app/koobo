import 'package:flutter/material.dart';
import 'package:koobo_app/model/trans_model.dart';

class MoreTrans extends StatefulWidget {
  final String name;
  final Color color;
  final String amount;
  final IconData icon;
  const MoreTrans({Key? key,  required this.name, required this.color, required this.amount,
    required this.icon
  }) : super(key: key);
  @override
  _MoreTransState createState() => _MoreTransState();
}

class _MoreTransState extends State<MoreTrans> {
  @override
  Widget build(BuildContext context) {
    return
      ListTile(leading:Container(width: 40,height: 40,decoration:
    BoxDecoration(color: widget.color.withOpacity(0.10),shape: BoxShape.circle),
      child: Icon(widget.icon,color: widget.color,

      ),),
    title: Text(widget.name,style: TextStyle(fontWeight: FontWeight.w500),),
      trailing: Text(widget.amount,style: TextStyle(color: widget.color.withOpacity(0.6),
          fontWeight: FontWeight.w700),),);
  }
}
