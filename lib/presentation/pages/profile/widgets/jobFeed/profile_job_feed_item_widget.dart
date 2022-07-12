import 'package:dox_financeiro/domain/entities/profile/job_feed_item_entity.dart';
import 'package:dox_financeiro/presentation/pages/profile/widgets/jobFeed/profile_job_feed_item_text_with_icon_widget.dart';
import 'package:dox_financeiro/presentation/widgets/icon_assets.dart';
import 'package:dox_financeiro/presentation/widgets/theme/colors.dart';
import 'package:dox_financeiro/presentation/widgets/theme/typograph.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileJobFeedItem extends StatelessWidget {
  final JobFeedItem jobFeedItem;
  const ProfileJobFeedItem({
    required this.jobFeedItem,
    Key? key,
  }) : super(key: key);

  static const double _itemVerticalSpacing = 7;
  static const String _backgroundContainerImage =
      "https://api-cdn.figma.com/resize/img/791f/0e80/39e793efe0ca9bece87d6271f223eec1?expiration=1658707200&signature=d0dc614cfd0240a1c7254e5157a5bf50904d3a8eed3a4fbc1e0ffad17385a803&maxsize=2048&bucket=figma-alpha";

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 245 / 185,
        child: Container(
          decoration: BoxDecoration(
            color: DoxColors.jobFeedItemBackground.withOpacity(0.12),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Image.network(_backgroundContainerImage),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 20,
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 1,
                        height: double.infinity,
                        color: DoxColors.primary,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Flexible(
                                child: Text(
                                  jobFeedItem.title,
                                  style: DoxTypograph.profileJobFeedItemHeader,
                                ),
                              ),
                              const SizedBox(height: _itemVerticalSpacing),
                              Flexible(
                                child: Text(
                                  jobFeedItem.briefDescription,
                                  style:
                                      DoxTypograph.profileJobFeedItemDescription,
                                ),
                              ),
                              const SizedBox(height: _itemVerticalSpacing),
                              ProfileJobFeedItemTextWithIcon(
                                icon: SvgPicture.asset(DoxIconAssets.location),
                                text: _location,
                              ),
                              const SizedBox(height: _itemVerticalSpacing),
                              ProfileJobFeedItemTextWithIcon(
                                icon: SvgPicture.asset(DoxIconAssets.call),
                                text: jobFeedItem.telefone,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: DoxColors.primary,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(13),
                        child: SvgPicture.asset(DoxIconAssets.arrowRighLong),
                      ),
                    ]),
              ),
            ],
          ),
        ));
  }

  String get _location {
    final location = jobFeedItem.location;
    return "${location.street}, ${location.number} - ${location.neighborhood}, ${location.city} - ${location.stateLetters}, ${location.cep}";
  }
}
