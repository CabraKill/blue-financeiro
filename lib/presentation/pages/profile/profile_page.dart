import 'package:dox_financeiro/presentation/mock_data/profile/profile_info_card_mock.dart';
import 'package:dox_financeiro/presentation/mock_data/profile/profile_job_item_list_mock.dart';
import 'package:dox_financeiro/presentation/pages/profile/widgets/profile_documents_feed_widget.dart';
import 'package:dox_financeiro/presentation/pages/profile/widgets/profile_info_card_widget.dart';
import 'package:dox_financeiro/presentation/pages/profile/widgets/profile_job_feed_widget.dart';
import 'package:dox_financeiro/presentation/pages/profile/widgets/profile_section_header_widget.dart';
import 'package:dox_financeiro/presentation/pages/profile/widgets/profile_tabs_wdiget.dart';
import 'package:dox_financeiro/presentation/widgets/appBar/secundary_app_bar.dart';
import 'package:dox_financeiro/presentation/widgets/cards/dox_background_widget.dart';
import 'package:dox_financeiro/presentation/widgets/cards/dox_body_card_widget.dart';
import 'package:dox_financeiro/presentation/widgets/icon_assets.dart';
import 'package:dox_financeiro/presentation/widgets/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO: check if should be i18n
      appBar: const DoxAppBar(
        title: "Meu Perfil",
      ),
      body: DoxBackground(
        child: Padding(
          padding: const EdgeInsets.only(top: 6.0),
          child: Column(
            children: [
              const ProfileTabs(),
              Expanded(
                child: DoxBodyCard(
                    backgroundColor: DoxColors.notW,
                    child: Column(
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
                              ProfileJobItemListMock.jobList,
                        ),
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
