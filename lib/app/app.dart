import 'package:koobo/home/home_view.dart';
import 'package:koobo/screens/card.dart';
import 'package:koobo/screens/onboarding/onboarding_view.dart';
import 'package:koobo/widget/buttom_navigation/buttom_navigation_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: OnboardingView, initial: true),
    MaterialRoute(page: ButtomNavigation),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: Cards),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
  ],
)
class AppSetup {
  /** This class has no puporse besides housing the annotation that generates the required functionality **/
}
