import 'package:dox_financeiro/presentation/pages/finances/finances_page.dart';
import 'package:dox_financeiro/presentation/pages/profile/widgets/profile_tabs_wdiget.dart';
import 'package:dox_financeiro/presentation/widgets/appBar/secundary_app_bar.dart';
import 'package:dox_financeiro/presentation/widgets/cards/dox_background_widget.dart';
import 'package:dox_financeiro/presentation/widgets/cards/dox_body_card_widget.dart';
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
      //TODO: check if should be i18n
      appBar: const DoxAppBar(
        title: "Meu Perfil",
      ),
      body: DoxBackground(
        child: Column(
          children: [
            const ProfileTabs(),
            Expanded(
              child: DoxBodyCard(
                  child: Column(
                children: [
                  Container(
                    width: double.infinity,
                  )
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
