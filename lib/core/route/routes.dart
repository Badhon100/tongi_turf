import 'package:flutter/material.dart';
import 'package:tongi_turf/features/authentication/view/pages/login_page.dart';
import 'package:tongi_turf/features/bottom_nav_bar/view/pages/bottom_nav_bar_page.dart';

class AppRoute {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return _getInitialRoute();
      case '/login_page':
        return _getLoginPageRoute();
      case '/bottom_nav_bar_page':
        return _getottBomNavBarPageRoute();
      default:
        return null;
    }
  }

  static MaterialPageRoute _routeBuilder(Widget child) {
    return MaterialPageRoute(builder: (_) => child);
  }

  static MaterialPageRoute _getInitialRoute() {
    return _routeBuilder(LoginPage());
  }

  static MaterialPageRoute _getLoginPageRoute() {
    return _routeBuilder(LoginPage());
  }

  static MaterialPageRoute _getottBomNavBarPageRoute() {
    return _routeBuilder(BottomNavBarPage());
  }

}
