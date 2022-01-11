import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:koobo/screens/login/login_viewmodel.dart';
import 'package:koobo/widget/textfield.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  static const routeName = "/login";

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    final controller = LoginController.instance;
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
              controller.signin,
              style: GoogleFonts.inter(fontSize: 16, color: Colors.black),
            ),
          ),
        ),
        body: Column(
          children: [
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
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 5),
              child: Container(
                alignment: Alignment.bottomRight,
                child: Text('Forget Password',
                    style:
                        GoogleFonts.inter(fontSize: 12, color: Colors.black)),
              ),
            ),
            SizedBox(height: 240),
            Container(
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
          ],
        ),
      ),
    );
  }
}
