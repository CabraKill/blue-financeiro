import 'package:dox_financeiro/presentation/widgets/theme/colors.dart';
import 'package:flutter/material.dart';

class DoxTypograph {
  DoxTypograph._();
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

  static TextStyle get title3 => const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: DoxColors.primary,
      );

  static TextStyle get financesDescription => const TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: DoxColors.tertiary,
      );

  static TextStyle get caption1 => const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 12,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get caption2 => const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: DoxColors.nonSelected,
      );

  static TextStyle get timeMoneyTitle => const TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      );

  static TextStyle get timeMoneyValue => const TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 15,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      );

  static TextStyle get cellTitle => const TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: DoxColors.black34,
      );

  static TextStyle get fiancesGraphValue => const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 32,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get tabTitleCard => const TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 10,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get profileInfoName => const TextStyle(
        fontFamily: 'Roboto',
        fontSize: 20,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get profileInfo => const TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 12,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get buttonText => const TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 15,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get profileSectionHeader => const TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 15,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get profileJobFeedItemHeader => const TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 16,
        fontWeight: FontWeight.w900,
      );

  static TextStyle get profileJobFeedItemDescription => const TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 12,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get profileJobFeedItemTextWithIcon => const TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 10,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get documentDetails => const TextStyle(
        fontFamily: 'Roboto',
        fontSize: 10,
        fontWeight: FontWeight.w300,
      );
}
