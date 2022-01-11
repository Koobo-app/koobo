// import 'package:flutter/material.dart';
// import 'package:koobo/home/home_view.dart';
// import 'package:koobo/screens/card.dart';
// import 'package:koobo/widget/buttom_navigation/buttom_naviation_viewmodel.dart';
// import 'package:stacked/stacked.dart';

// class ButtomNavigation extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ViewModelBuilder<ButtomNavigationViewModel>.reactive(
//         viewModelBuilder: () => ButtomNavigationViewModel(),
//         builder: (context, model, child) {
//           return Scaffold(
//               body: getViewForIndex(model.selectedIndex),
//               bottomNavigationBar: BottomNavigationBar(
//                   showSelectedLabels: false,
//                   type: BottomNavigationBarType.shifting,
//                   currentIndex: model.selectedIndex,
//                   iconSize: 20,
//                   onTap: (value) {},
//                   items: const <BottomNavigationBarItem>[
//                     BottomNavigationBarItem(
//                         activeIcon: Icon(
//                           Icons.home,
//                           color: Color.fromRGBO(0, 75, 221, 0.6),
//                           size: 20,
//                         ),
//                         icon: Icon(
//                           Icons.home,
//                           color: Color.fromRGBO(18, 18, 18, 0.2),
//                           size: 20,
//                         ),
//                         label: "Home"),
//                     BottomNavigationBarItem(
//                         activeIcon: Icon(
//                           Icons.credit_card,
//                           color: Color.fromRGBO(0, 75, 221, 0.6),
//                           size: 20,
//                         ),
//                         icon: Icon(
//                           Icons.credit_card,
//                           color: Color.fromRGBO(18, 18, 18, 0.2),
//                           size: 20,
//                         ),
//                         label: "Credit Card"),
//                     BottomNavigationBarItem(
//                         activeIcon: Icon(
//                           Icons.multiple_stop_outlined,
//                           color: Color.fromRGBO(0, 75, 221, 0.6),
//                           size: 20,
//                         ),
//                         icon: Icon(
//                           Icons.multiple_stop_outlined,
//                           color: Color.fromRGBO(18, 18, 18, 0.2),
//                           size: 20,
//                         ),
//                         label: "Transaction"),
//                     BottomNavigationBarItem(
//                         activeIcon: Icon(
//                           Icons.settings,
//                           color: Color.fromRGBO(0, 75, 221, 0.6),
//                           size: 20,
//                         ),
//                         icon: Icon(
//                           Icons.settings,
//                           color: Color.fromRGBO(18, 18, 18, 0.2),
//                           size: 20,
//                         ),
//                         label: "Settings")
//                   ]));
//         });
//   }

//   Widget getViewForIndex(int index) {
//     switch (index) {
//       case 0:
//         return const HomeView();
//       case 1:
//         return const Cards();
//       default:
//         return const HomeView();
//     }
//   }
// }
