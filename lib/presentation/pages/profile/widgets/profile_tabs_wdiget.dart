import 'package:dox_financeiro/presentation/routes/route_service.dart';
import 'package:dox_financeiro/presentation/widgets/cards/dox_tab_card_widget.dart';
import 'package:dox_financeiro/presentation/widgets/icon_assets.dart';
import 'package:dox_financeiro/presentation/widgets/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileTabs extends StatelessWidget {
  const ProfileTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DoxTabCard(
            title: 'Financeiro',
            icon: SvgPicture.asset(
              DoxIconAssets.moneySimbol,
              color: DoxColors.tertiary,
            ),
            onTap: () => RouteService.goToFinances(context),
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
      ),
    );
  }
}
