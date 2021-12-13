import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:koobo/app/app.locator.dart';
import 'package:koobo/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
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
            theme: ThemeData(
                primaryColor: const Color.fromRGBO(0, 75, 221, 0.6),
                appBarTheme:
                    const AppBarTheme(color: Color.fromRGBO(0, 75, 221, 0.6))),
            navigatorKey: StackedService.navigatorKey,
            onGenerateRoute: StackedRouter().onGenerateRoute,
          );
        });
  }
}
