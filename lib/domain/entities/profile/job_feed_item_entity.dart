import 'package:dox_financeiro/domain/entities/profile/job_feed_item_location_entity.dart';

class JobFeedItem {
  final String title;
  final String briefDescription;
  final JobFeedItemLocationEntity location;
  final String telefone;

  JobFeedItem({
    required this.title,
    required this.briefDescription,
    required this.location,
    required this.telefone,
  });
}
