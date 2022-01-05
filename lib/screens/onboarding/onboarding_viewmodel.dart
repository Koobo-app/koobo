import 'package:flutter/cupertino.dart';

class OnboardingViewModel with ChangeNotifier {
  static OnboardingViewModel? _instance;
  static OnboardingViewModel get instance =>
      _instance ??= OnboardingViewModel();

  final String _banner = 'Move Money With Ease';
  final String _createAccount = 'Create an account';
  final String _ownAccount = 'Already have an account? ';
  final String _signIn = 'Sign in';
  final String _logo = 'images/logo.png';

  String get banner => _banner;
  String get createAccount => _createAccount;
  String get ownAccount => _ownAccount;
  String get signIn => _signIn;
  String get logo => _logo;
}
