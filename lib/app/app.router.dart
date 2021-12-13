// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../home/home_view.dart';
import '../screens/card.dart';
import '../screens/onboarding/onboarding_view.dart';
import '../widget/buttom_navigation/buttom_navigation_view.dart';

class Routes {
  static const String onboardingView = '/';
  static const String buttomNavigation = '/buttom-navigation';
  static const String homeView = '/home-view';
  static const String cards = '/Cards';
  static const all = <String>{
    onboardingView,
    buttomNavigation,
    homeView,
    cards,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.onboardingView, page: OnboardingView),
    RouteDef(Routes.buttomNavigation, page: ButtomNavigation),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.cards, page: Cards),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    OnboardingView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const OnboardingView(),
        settings: data,
      );
    },
    ButtomNavigation: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ButtomNavigation(),
        settings: data,
      );
    },
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const HomeView(),
        settings: data,
      );
    },
    Cards: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const Cards(),
        settings: data,
      );
    },
  };
}
