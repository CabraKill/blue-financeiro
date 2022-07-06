import 'package:dox_financeiro/presentation/routes/route_service.dart';
import 'package:flutter/material.dart';

import 'presentation/routes/route_paths.dart';

void main() {
  runApp(MaterialApp(
    routes: RouteService.routes,
    initialRoute: RoutePaths.finances,
    debugShowCheckedModeBanner: false,
  ));
}
