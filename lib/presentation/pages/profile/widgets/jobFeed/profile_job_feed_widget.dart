import 'package:dox_financeiro/domain/entities/profile/job_feed_item_entity.dart';
import 'package:dox_financeiro/presentation/pages/profile/widgets/jobFeed/profile_job_feed_item_widget.dart';
import 'package:dox_financeiro/presentation/pages/profile/widgets/profile_section_header_widget.dart';
import 'package:dox_financeiro/presentation/widgets/icon_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileJobFeed extends StatelessWidget {
  final List<JobFeedItem> jobFeedItemList;
  const ProfileJobFeed({
    required this.jobFeedItemList,
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
            text: "Hospitais Credenciados",
            icon: SvgPicture.asset(DoxIconAssets.work),
          ),
          const SizedBox(height: 11),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: jobFeedItemList.length,
              itemBuilder: (context, index) {
                final jobFeedItem = jobFeedItemList[index];
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ProfileJobFeedItem(
                      jobFeedItem: jobFeedItem,
                    ),
                    if (index == jobFeedItemList.length - 1)
                      const SizedBox(width: 24)
                    else
                      const SizedBox(width: 14),
                  ],
                );
              },
            ),
          ),
          const SizedBox(height: 11),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.black.withOpacity(0.08),
          ),
        ],
      ),
    );
  }
}
