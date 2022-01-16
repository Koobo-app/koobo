import 'package:flutter/material.dart';

class More{
  final String name;
  final Color color;
  final String amount;
  final IconData icon;
  More({
    required this.name, required this.color, required this.amount,
    required this.icon
  });
}

List<More> con= [
  More(name: "Tolulope John",color: Colors.pink, amount: '10000',icon:Icons.call_made,),
  More(name: "Tolulope John",color: Colors.pink, amount: '10000',icon:Icons.call_made),
  More(name: "Tolulope Credit ",color: Colors.green, amount: '10000',icon:Icons.call_received),
  More(name: "Tolulope Credit",color: Colors.green, amount: '10000',icon:Icons.call_received),
  More(name: "Tolulope Credit",color: Colors.green, amount: '10000',icon:Icons.call_received),

];
