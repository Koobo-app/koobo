import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  final title;
  final void Function()? onPressed;
  const Appbar({Key? key, required this.title, this.onPressed})
      : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0x44000000),
      toolbarOpacity: 0.0,
      elevation: 0,
      leading: IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Icons.arrow_back_ios_outlined,
          color: Colors.black,
          size: 24,
        ),
      ),
      title: Text(
        title,
        style: GoogleFonts.inter(fontSize: 16, color: Colors.black),
      ),
    );
  }
}
