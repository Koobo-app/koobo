import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:koobo/screens/login/login_view.dart';
import 'package:koobo/screens/signup/signup_view.dart';
import 'package:koobo/screens/startup/onboarding_screen.dart';

import 'screens/onboarding/onboarding_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const Koobo());
}

class Koobo extends StatelessWidget {
  const Koobo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(411, 823),
        builder: () {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Koobo',
            //navigatorKey: StackedService.navigatorKey,
            onGenerateRoute: (routeSettings) => MaterialPageRoute(
              settings: routeSettings,
              builder: (context) {
                switch (routeSettings.name) {
                  case Navigator.defaultRouteName:
                    return OnboardingScreen();
                  case OnboardingView.routeName:
                    return const OnboardingView();
                  case Login.routeName:
                    return const Login();
                  case Signup.routeName:
                    return const Signup();
                }

                throw FlutterError("Unknown Route: ${routeSettings.name}");
              },
            ),
            theme: ThemeData(
              scaffoldBackgroundColor: Colors.white,
              //colorScheme: const ColorScheme.light(),
            ),
            //onGenerateRoute: StackedRouter().onGenerateRoute,
          );
        });
  }
}
