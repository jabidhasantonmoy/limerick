import 'package:flutter/material.dart';

import '../../../view/auth/pages/auth_navigator.dart';
import '../../../view/auth/pages/home_page.dart';
import '../../../view/auth/pages/login_page.dart';

class AppRoute {
  static Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case AuthNavigator.routeName:
        return MaterialPageRoute(builder: (_) => const AuthNavigator());
      case LoginPage.routeName:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case HomePage.routeName:
        return MaterialPageRoute(builder: (_) => const HomePage());

      default:
        return null;
    }
  }
}
