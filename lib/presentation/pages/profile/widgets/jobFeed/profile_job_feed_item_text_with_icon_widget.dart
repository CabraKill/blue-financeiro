import 'package:dox_financeiro/presentation/widgets/theme/colors.dart';
import 'package:dox_financeiro/presentation/widgets/theme/typograph.dart';
import 'package:flutter/material.dart';

class ProfileJobFeedItemTextWithIcon extends StatelessWidget {
  final Widget icon;
  final String text;
  const ProfileJobFeedItemTextWithIcon({
    required this.icon,
    required this.text,
    Key? key,
  }) : super(key: key);

  static const double _iconSize = 14;
  static const double _horizontalPadding = 7;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox.square(
          dimension: _iconSize,
          child: icon,
        ),
        const SizedBox(width: _horizontalPadding),
        Flexible(
          child: Text(
            text,
            style: DoxTypograph.profileJobFeedItemTextWithIcon.copyWith(
              color: DoxColors.profileInfo,
            ),
          ),
        ),
      ],
    );
  }
}
