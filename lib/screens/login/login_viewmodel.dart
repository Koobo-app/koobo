import 'package:flutter/cupertino.dart';

class LoginController with ChangeNotifier {
  static LoginController? _instance;
  static LoginController get instance => _instance ??= LoginController();

  final String _signin = "Sign in";
  final String _email = 'Email';
  final String _password = 'Password';
  final String _next = 'Next';

  String get signin => _signin;
  String get email => _email;
  String get password => _password;
  String get next => _next;
}
