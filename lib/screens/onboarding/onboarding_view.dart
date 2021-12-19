import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:google_fonts/google_fonts.dart';

import 'onboarding_viewmodel.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OnboardingViewModel>.reactive(
        viewModelBuilder: () => OnboardingViewModel(),
        builder: (context, model, child) {
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
                          model.logo,
                          width: 373,
                          height: 292,
                        ))),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  model.banner,
                  style: GoogleFonts.inter(
                      fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 80,
                ),
                Container(
                  width: 315,
                  height: 55,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(18, 18, 18, 0.4),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                        bottomLeft: Radius.circular(15.0),
                        bottomRight: Radius.circular(15.0),
                      )),
                  child: ElevatedButton(
                    onPressed: () => model.navigateToSignUp(),
                    child: Text(model.createAccount,
                        style: GoogleFonts.inter(
                            fontSize: 16, color: Colors.white)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                  text: TextSpan(
                      text: model.ownAccount,
                      style:
                          GoogleFonts.inter(fontSize: 16, color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => model.navigateToSignUp(),
                            text: model.signIn,
                            style: GoogleFonts.inter(
                                fontSize: 16, color: Colors.green))
                      ]),
                )
              ],
            ),
          );
        });
  }
}
