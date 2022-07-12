import 'package:dox_financeiro/presentation/mock_data/profile/profile_document_item_list_mock.dart';
import 'package:dox_financeiro/presentation/mock_data/profile/profile_info_card_mock.dart';
import 'package:dox_financeiro/presentation/mock_data/profile/profile_job_item_list_mock.dart';
import 'package:dox_financeiro/presentation/pages/profile/widgets/info/profile_info_card_widget.dart';
import 'package:dox_financeiro/presentation/pages/profile/widgets/jobFeed/profile_job_feed_widget.dart';
import 'package:dox_financeiro/presentation/pages/profile/widgets/documents/profile_documents_feed_widget.dart';
import 'package:dox_financeiro/presentation/pages/profile/widgets/profile_tabs_wdiget.dart';
import 'package:dox_financeiro/presentation/widgets/appBar/secundary_app_bar.dart';
import 'package:dox_financeiro/presentation/widgets/buttons/solid_button_widget.dart';
import 'package:dox_financeiro/presentation/widgets/cards/dox_background_widget.dart';
import 'package:dox_financeiro/presentation/widgets/cards/dox_body_card_widget.dart';
import 'package:dox_financeiro/presentation/widgets/theme/colors.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DoxAppBar(
        title: "Meu Perfil",
      ),
      body: DoxBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const ProfileTabs(),
                DoxBodyCard(
                    backgroundColor: DoxColors.notW,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ProfileInfoCard(
                          profileInfo: ProfileInfoCardMock.card,
                        ),
                        const SizedBox(height: 20.0),
                        ProfileJobFeed(
                          jobFeedItemList: ProfileJobItemListMock.jobList,
                        ),
                        const SizedBox(height: 20.0),
                        ProfileDocumentsFeed(
                          documentsFeedItemList:
                              ProfileDocumentItemListMock.documentList,
                        ),
                        const SizedBox(height: 20.0),
                        SizedBox(
                          width: 285,
                          child: SolidButton(
                              text: "Sair do app",
                              onTap: () {},
                              color: DoxColors.orange),
                        ),
                        const SizedBox(height: 1.0),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
