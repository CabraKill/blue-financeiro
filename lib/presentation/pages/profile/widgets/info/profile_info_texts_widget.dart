import 'package:dox_financeiro/domain/entities/finances/profile_info_entity.dart';
import 'package:dox_financeiro/presentation/pages/profile/widgets/info/profile_info_text_with_icon_widget.dart';
import 'package:dox_financeiro/presentation/utils/time_converter_util.dart';
import 'package:dox_financeiro/presentation/widgets/icon_assets.dart';
import 'package:dox_financeiro/presentation/widgets/theme/typograph.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileInfoTexts extends StatelessWidget {
  final ProfileInfoEntity profileInfoEntity;
  const ProfileInfoTexts({
    required this.profileInfoEntity,
    Key? key,
  }) : super(key: key);

  static const double _internalVerticalPadding = 10;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Text(
            profileInfoEntity.name,
            style: DoxTypograph.profileInfoName.copyWith(
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(height: _internalVerticalPadding),
        ProfileInfoTextWithIcon(
          icon: SvgPicture.asset(DoxIconAssets.bookCheckLight),
          text: profileInfoEntity.universityName,
        ),
        const SizedBox(height: _internalVerticalPadding),
        ProfileInfoTextWithIcon(
          icon: SvgPicture.asset(DoxIconAssets.dateToday),
          text: TimeConverter.getDateFormattedFromDateTime(
              profileInfoEntity.graduationDate),
        ),
        const SizedBox(height: _internalVerticalPadding),
        ProfileInfoTextWithIcon(
          icon: SvgPicture.asset(DoxIconAssets.checkRingRoundLight),
          text: profileInfoEntity.areaName,
        ),
      ],
    );
  }
}
