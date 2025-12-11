import 'package:flutter/material.dart';
import 'package:tongi_turf/features/authentication/view/pages/login_page.dart';

class AppRoute {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return _getInitialRoute();
      case '/login_page':
        return _getLoginPageRoute();
      default:
        return null;
    }
  }

  static MaterialPageRoute _routeBuilder(Widget child) {
    return MaterialPageRoute(builder: (_) => child);
  }

  static MaterialPageRoute _getInitialRoute() {
    return _routeBuilder(const LoginPage());
  }

  static MaterialPageRoute _getLoginPageRoute() {
    return _routeBuilder(const LoginPage());
  }

}
