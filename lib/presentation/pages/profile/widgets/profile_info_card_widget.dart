import 'package:dox_financeiro/domain/entities/finances/profile_info_entity.dart';
import 'package:dox_financeiro/presentation/pages/profile/widgets/profile_info_texts_widget.dart';
import 'package:dox_financeiro/presentation/widgets/buttons/solid_button_widget.dart';
import 'package:dox_financeiro/presentation/widgets/photo/rounded_photo_widget.dart';
import 'package:dox_financeiro/presentation/widgets/theme/colors.dart';
import 'package:flutter/material.dart';

class ProfileInfoCard extends StatelessWidget {
  final ProfileInfoEntity profileInfo;
  const ProfileInfoCard({
    required this.profileInfo,
    Key? key,
  }) : super(key: key);
  static const double _externalContainerRadius = 33;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          //TODO: check with designer
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            _externalContainerRadius,
          ),
          boxShadow: [
            BoxShadow(
              color: DoxColors.boxShadow.withOpacity(0.08),
              blurRadius: 30.0,
              offset: const Offset(0.0, -10.0),
            ),
          ]),
      padding: const EdgeInsets.symmetric(
        vertical: 14,
        horizontal: 31,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //TODO: put into a widget
          Row(children: [
            RoundedPhoto(
              url: profileInfo.photoUrl,
            ),
            const SizedBox(width: 20),
            Expanded(
              child: ProfileInfoTexts(
                profileInfoEntity: profileInfo,
              ),
            ),
          ]),
          const SizedBox(height: 10),
          SolidButton(
            text: "Editar",
            onTap: () {
              //TODO: call controller here
            },
          )
        ],
      ),
    );
  }
}
