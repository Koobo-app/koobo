import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:koobo/screens/login/login_view.dart';
import 'package:koobo/screens/signup/signup_view.dart';
import 'package:google_fonts/google_fonts.dart';

import 'onboarding_viewmodel.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);
  static const routeName = '/onboard';
  @override
  Widget build(BuildContext context) {
    final controller = OnboardingViewModel.instance;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.all(10),
              child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    controller.logo,
                    width: 373,
                    height: 292,
                  ))),
          const SizedBox(
            height: 20,
          ),
          Text(
            controller.banner,
            style: GoogleFonts.inter(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 80,
          ),
          Container(
            width: 315,
            height: 55,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
              bottomLeft: Radius.circular(15.0),
              bottomRight: Radius.circular(15.0),
            )),
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(
                context,
                Signup.routeName,
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(18, 18, 18, 0.4)),
              child: Text(controller.createAccount,
                  style: GoogleFonts.inter(fontSize: 16, color: Colors.white)),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(
                text: controller.ownAccount,
                style: GoogleFonts.inter(fontSize: 16, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Navigator.pushNamed(
                              context,
                              Login.routeName,
                            ),
                      text: controller.signIn,
                      style:
                          GoogleFonts.inter(fontSize: 16, color: Colors.green))
                ]),
          )
        ],
      ),
    );
  }
}
