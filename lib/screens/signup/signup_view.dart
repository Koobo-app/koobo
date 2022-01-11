import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:koobo/screens/signup/signup_viewmodel.dart';
import 'package:koobo/widget/textfield.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);
  static const routeName = "/signup";

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool hidePassword = true;
  bool hidePassword2 = true;

  @override
  Widget build(BuildContext context) {
    final controller = SignupViewController.instance;
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          iconTheme: const IconThemeData(color: Colors.black),
          title: Center(
            child: Text(
              controller.createAccount,
              style: GoogleFonts.inter(fontSize: 16, color: Colors.black),
            ),
          ),
        ),
        body: ListView(
          children: [
            const SizedBox(
              height: 10,
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
                obsecure: hidePassword,
                label: controller.password,
                suffix: IconButton(
                  icon: Icon(
                    hidePassword
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                  ),
                  onPressed: () => setState(() {
                    hidePassword = !hidePassword;
                  }),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Textfield(
                obsecure: hidePassword2,
                label: controller.confirmPassword,
                suffix: IconButton(
                  icon: Icon(
                    hidePassword2
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                  ),
                  onPressed: () => setState(() {
                    hidePassword2 = !hidePassword2;
                  }),
                ),
              ),
            ),
            const SizedBox(
              height: 200,
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
      ),
    );
  }
}
