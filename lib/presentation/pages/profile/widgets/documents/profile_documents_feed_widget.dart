import 'package:dox_financeiro/domain/entities/profile/document_file_entity.dart';
import 'package:dox_financeiro/presentation/pages/profile/widgets/documents/profile_documents_item_widget.dart';
import 'package:dox_financeiro/presentation/pages/profile/widgets/profile_section_header_widget.dart';
import 'package:dox_financeiro/presentation/widgets/icon_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileDocumentsFeed extends StatelessWidget {
  final List<DocumentFileEntity> documentsFeedItemList;
  const ProfileDocumentsFeed({
    required this.documentsFeedItemList,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 404 / 247,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ProfileSectionHeader(
            text: "Meus Documentos Anexos",
            icon: SvgPicture.asset(DoxIconAssets.fileDockAdd),
          ),
          const SizedBox(height: 11),
          Expanded(
            child: ListView.builder(
              itemCount: documentsFeedItemList.length,
              itemBuilder: (context, index) {
                final document = documentsFeedItemList[index];
                return ProfileDocumentItem(
                  document: document,
                );
              },
            ),
          ),
          const SizedBox(height: 11),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.black.withOpacity(0.08),
          )
        ],
      ),
    );
  }
}
