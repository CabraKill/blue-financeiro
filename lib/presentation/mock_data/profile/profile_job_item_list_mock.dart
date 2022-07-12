import 'package:dox_financeiro/domain/entities/profile/job_feed_item_entity.dart';
import 'package:dox_financeiro/domain/entities/profile/job_feed_item_location_entity.dart';

class ProfileJobItemListMock {
  static final location = JobFeedItemLocationEntity(
    street: "Rua Peixoto Gomide",
    number: "545",
    neighborhood: "Cerqueira Cesar",
    city: "São Paulo",
    stateLetters: "SP",
    cep: "01409-002",
  );
  static final JobFeedItem jobItem = JobFeedItem(
    title: "Hospital das Flores",
    briefDescription: "Clínicas Gerais, breve descrição",
    location: location,
    telefone: "(11) 3147-9999",
  );
  static final List<JobFeedItem> jobList = [jobItem, jobItem, jobItem];
}
