import 'package:dox_financeiro/presentation/widgets/theme/dox_colors.dart';
import 'package:flutter/cupertino.dart';

class DoxTypograph {
  static TextStyle get appBarTitle => const TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 17,
        fontWeight: FontWeight.w600,
        color: DoxColors.notW,
      );

  static TextStyle get tabSelected => const TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: DoxColors.notW,
      );

  static TextStyle get tabUnSelected => const TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: DoxColors.tertiary,
      );
}
