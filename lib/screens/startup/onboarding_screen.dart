import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:koobo/screens/onboarding/onboarding_view.dart';
import 'package:koobo/screens/startup/onboarding_info.dart';

import 'package:provider/provider.dart';

class OnboardingScreen extends StatefulWidget {
  final String? image;
  final String? title;
  final String? description;
  OnboardingScreen({Key? key, this.title, this.description, this.image})
      : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _index = 0;
  PageController? controller;

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  void pageChange(int index) {
    setState(() {
      _index = index;
    });
  }

  nextFunction() {
    controller?.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  @override
  Widget build(BuildContext context) {
    //Provider.of<onboardNotifier>(context)
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Icon(
                Icons.close_outlined,
                size: 25,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: PageView.builder(
                controller: controller,
                itemCount: onboard.length,
                onPageChanged: pageChange,
                //context.watch<onboardNotifier>().indexChange,
                itemBuilder: (context, i) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        onboard[i].image!,
                        height: 297,
                        width: 327,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        onboard[i].title!,
                        style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                          width: 63,
                          child:
                              Divider(color: Color.fromRGBO(18, 18, 18, 0.2))),
                      SizedBox(
                        height: 10,
                      ),
                      Text(onboard[i].description!,
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 12,
                          )),
                    ],
                  );
                }),
          ),
          Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    onboard.length,
                    (index) => _index == index
                        ? Container(
                            margin: EdgeInsets.only(right: 3),
                            width: 14,
                            height: 6,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15.0),
                                  topRight: Radius.circular(15.0),
                                  bottomLeft: Radius.circular(15.0),
                                  bottomRight: Radius.circular(15.0),
                                ),
                                color: Color.fromRGBO(0, 75, 221, 0.8)),
                          )
                        : Container(
                            margin: EdgeInsets.only(right: 3),
                            width: 6,
                            height: 6,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(18, 18, 18, 0.2)),
                          )),
              )),
          SizedBox(
            height: 40,
          ),
          Container(
            width: 315,
            height: 55,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(0, 75, 221, 1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                )),
            child: ElevatedButton(
              onPressed: () => _index == onboard.length - 1
                  ? Navigator.pushNamed(
                      context,
                      OnboardingView.routeName,
                    )
                  : nextFunction(),
              // Navigator.pushNamed(
              //   context,
              //   Signup.routeName,
              // ),
              child: Text('Next',
                  style: GoogleFonts.inter(fontSize: 16, color: Colors.white)),
            ),
          ),
          SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
