import 'package:koobo/app/app.locator.dart';
import 'package:koobo/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SignupViewmodel extends BaseViewModel {
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

  final _navigationService = locator<NavigationService>();

  void navigateBack() {
    _navigationService.navigateTo(Routes.onboardingView);
  }
}
