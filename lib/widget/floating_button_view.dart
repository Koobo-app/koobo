import 'dart:math';

import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
        bottomLeft: Radius.circular(30.0),
      )),
      backgroundColor: Colors.white,
      onPressed: () {},
      child: Transform.rotate(
        angle: 300 * pi / 180,
        child: const Icon(
          Icons.send_outlined,
          size: 30,
          color: Color.fromRGBO(0, 75, 221, 0.8),
        ),
      ),
    );
  }
}
