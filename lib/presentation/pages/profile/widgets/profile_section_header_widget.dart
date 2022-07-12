import 'package:dox_financeiro/presentation/widgets/right_circle_widget.dart';
import 'package:dox_financeiro/presentation/widgets/theme/colors.dart';
import 'package:dox_financeiro/presentation/widgets/theme/typograph.dart';
import 'package:flutter/material.dart';

class ProfileSectionHeader extends StatelessWidget {
  final String text;
  final Widget icon;
  const ProfileSectionHeader({
    required this.text,
    required this.icon,
    Key? key,
  }) : super(key: key);

  static const double _iconSize = 40;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: _iconSize,
          height: _iconSize,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: DoxColors.primary,
          ),
          padding: const EdgeInsets.all(8),
          child: icon,
        ),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            text,
            style: DoxTypograph.profileSectionHeader.copyWith(
              color: Colors.black,
            ),
          ),
        ),
        RighCircle(color: DoxColors.tertiary.withOpacity(0.2))
      ],
    );
  }
}
