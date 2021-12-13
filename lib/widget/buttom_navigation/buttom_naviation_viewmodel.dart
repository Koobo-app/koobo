import 'package:koobo/app/app.locator.dart';
import 'package:koobo/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ButtomNavigationViewModel extends BaseViewModel {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void onTap(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  final _navigationService = locator<NavigationService>();

  void navigateToHomeView() {
    _navigationService.navigateTo(Routes.homeView);
  }

  void navigateToCardView() {
    _navigationService.navigateTo(Routes.cards);
  }
}
