import 'package:koobo/app/app.locator.dart';
import 'package:koobo/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OnboardingViewModel extends BaseViewModel {
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

  final _navigationService = locator<NavigationService>();

  void navigateToSignUp() {
    _navigationService.navigateTo(Routes.signup);
  }
}
