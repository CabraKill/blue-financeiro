import 'package:dox_financeiro/domain/entities/profile/document_file_entity.dart';
import 'package:dox_financeiro/presentation/pages/profile/widgets/documents/profile_documents_item_action_widget.dart';
import 'package:dox_financeiro/presentation/pages/profile/widgets/documents/profile_documents_item_info_widget.dart';
import 'package:dox_financeiro/presentation/widgets/icon_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileDocumentItem extends StatelessWidget {
  final DocumentFileEntity document;
  const ProfileDocumentItem({
    required this.document,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 8,
      ),
      child: Row(children: [
        Expanded(
          child: ProfileDocumentsItemInfo(
            document: document,
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ProfileDocumentsItemAction(
              icon: SvgPicture.asset(DoxIconAssets.share),
              onTap: () {
                //TODO: add share action
              },
            ),
            ProfileDocumentsItemAction(
              icon: SvgPicture.asset(DoxIconAssets.threeDots),
              onTap: () {
                //TODO: add three dot action
              },
            ),
          ],
        )
      ]),
    );
  }
}
