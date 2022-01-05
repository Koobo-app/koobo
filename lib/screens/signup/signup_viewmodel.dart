import 'package:flutter/cupertino.dart';

class SignupViewController with ChangeNotifier {
  static SignupViewController? _instance;
  static SignupViewController get instance =>
      _instance ??= SignupViewController();

  final String _createAccount = 'Create an Account';
  final String _email = 'Email';
  final String _password = 'Password';
  final String _confirmPassword = 'Confirm Password';
  final String _next = 'Next';

  String get createAccount => _createAccount;
  String get email => _email;
  String get password => _password;
  String get confirmPassword => _confirmPassword;
  String get next => _next;
}
