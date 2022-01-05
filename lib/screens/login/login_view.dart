import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:koobo/screens/login/login_viewmodel.dart';
import 'package:koobo/widget/textfield.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  static const routeName = "/login";

  @override
  Widget build(BuildContext context) {
    final controller = LoginController.instance;
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(
                  Icons.arrow_back_ios_outlined,
                  color: Colors.black,
                  size: 24,
                ),
              ),
              const SizedBox(
                width: 100,
              ),
              Text(
                controller.signin,
                style: GoogleFonts.inter(fontSize: 16, color: Colors.black),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Textfield(
                keyboardType: TextInputType.emailAddress,
                label: controller.email),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Textfield(
              obsecure: true,
              label: controller.password,
              suffix: const Icon(
                Icons.visibility_outlined,
              ),
            ),
          ),
          const SizedBox(
            height: 240,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 315,
              height: 55,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(0, 75, 221, 0.8),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  )),
              child: ElevatedButton(
                onPressed: () => null,
                child: Text(controller.next,
                    style:
                        GoogleFonts.inter(fontSize: 16, color: Colors.white)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
