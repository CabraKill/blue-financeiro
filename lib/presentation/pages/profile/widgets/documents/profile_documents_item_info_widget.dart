import 'package:dox_financeiro/domain/entities/profile/document_file_entity.dart';
import 'package:dox_financeiro/domain/entities/profile/document_file_type_enum.dart';
import 'package:dox_financeiro/presentation/widgets/icon_assets.dart';
import 'package:dox_financeiro/presentation/widgets/theme/colors.dart';
import 'package:dox_financeiro/presentation/widgets/theme/typograph.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileDocumentsItemInfo extends StatelessWidget {
  final DocumentFileEntity document;
  const ProfileDocumentsItemInfo({
    required this.document,
    Key? key,
  }) : super(key: key);

  static const double _iconSize = 32;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox.square(
          dimension: _iconSize,
          child: SvgPicture.asset(
            document.typeData.type == DocumentFileTypeEnum.googleDocs
                ? DoxIconAssets.googleDocs
                : DoxIconAssets.googleDrive,
          ),
        ),
        const SizedBox(width: 12),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Text(
                document.title,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  document.type,
                  style: DoxTypograph.documentDetails
                      .copyWith(color: DoxColors.documentDetails),
                ),
                const SizedBox(width: 12),
                Text(
                  document.size,
                  style: DoxTypograph.documentDetails
                      .copyWith(color: DoxColors.documentDetails),
                ),
                const SizedBox(width: 12),
                Text(
                  document.time,
                  style: DoxTypograph.documentDetails
                      .copyWith(color: DoxColors.documentDetails),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
