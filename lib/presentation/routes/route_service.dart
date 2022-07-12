import 'package:dox_financeiro/presentation/pages/finances/finances_page.dart';
import 'package:dox_financeiro/presentation/pages/profile/profile_page.dart';
import 'package:dox_financeiro/presentation/routes/route_paths.dart';
import 'package:flutter/material.dart';

class RouteService {
  static Map<String, Widget Function(BuildContext)> get routes {
    return {
      RoutePaths.profile: (context) => const ProfilePage(),
      RoutePaths.finances: (context) => const FinancesPage(),
    };
  }

  static void goToFinances(BuildContext context) {
    Navigator.pushNamed(context, RoutePaths.finances);
  }
}
