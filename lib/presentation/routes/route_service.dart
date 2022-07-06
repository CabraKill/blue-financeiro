import 'package:dox_financeiro/presentation/pages/finances/finances_page.dart';
import 'package:dox_financeiro/presentation/routes/route_paths.dart';
import 'package:flutter/material.dart';

class RouteService {
  static Map<String, Widget Function(BuildContext)> get routes {
    return {
      RoutePaths.finances: (context) => const FinancesPage(),
    };
  }
}
