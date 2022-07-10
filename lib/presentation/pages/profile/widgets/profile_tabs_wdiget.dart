import 'package:dox_financeiro/presentation/widgets/cards/dox_tab_card_widget.dart';
import 'package:dox_financeiro/presentation/widgets/icon_assets.dart';
import 'package:dox_financeiro/presentation/widgets/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileTabs extends StatelessWidget {
  const ProfileTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DoxTabCard(
          title: 'Financeiro',
          icon: SvgPicture.asset(
            DoxIconAssets.moneySimbol,
            color: DoxColors.tertiary,
          ),
        ),
        DoxTabCard(
          title: 'Estatísticas',
          icon: SvgPicture.asset(
            DoxIconAssets.chart,
            color: DoxColors.tertiary,
          ),
        ),
        DoxTabCard(
          title: 'Indicações',
          icon: SvgPicture.asset(
            DoxIconAssets.flag,
            color: DoxColors.tertiary,
          ),
        ),
        DoxTabCard(
          title: 'Plantões',
          icon: SvgPicture.asset(
            DoxIconAssets.bookMark,
            color: DoxColors.tertiary,
          ),
        ),
      ],
    );
  }
}
