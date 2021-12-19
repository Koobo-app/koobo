import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:koobo/screens/signup/signup_viewmodel.dart';
import 'package:koobo/widget/appbar.dart';
import 'package:koobo/widget/textfield.dart';
import 'package:stacked/stacked.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignupViewmodel>.reactive(
        viewModelBuilder: () => SignupViewmodel(),
        builder: (context, model, child) {
          return Scaffold(
            // extendBodyBehindAppBar: true,
            // appBar: Appbar(
            //   onPressed: () => model.navigateBack(),
            //   title: model.createAccount,
            // ),
            body: ListView(
              //mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ListTile(
                //   leading: const Icon(
                //     Icons.arrow_back_ios_outlined,
                //     color: Colors.black,
                //     size: 24,
                //   ),
                //   title: Text(
                //     model.createAccount,
                //     style: GoogleFonts.inter(
                //         fontSize: 16,
                //         color: Colors.black,
                //         fontWeight: FontWeight.bold),
                //   ),
                // ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () => model.navigateBack(),
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
                      model.createAccount,
                      style:
                          GoogleFonts.inter(fontSize: 16, color: Colors.black),
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
                      label: model.email),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Textfield(
                    obsecure: true,
                    label: model.password,
                    suffix: const Icon(
                      Icons.visibility_outlined,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Textfield(
                    obsecure: true,
                    label: model.confirmPassword,
                    suffix: const Icon(
                      Icons.visibility_outlined,
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
                      child: Text(model.next,
                          style: GoogleFonts.inter(
                              fontSize: 16, color: Colors.white)),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
