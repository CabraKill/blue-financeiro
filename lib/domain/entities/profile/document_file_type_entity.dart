import 'package:dox_financeiro/domain/entities/profile/document_file_type_enum.dart';

class DocumentFileTypeEntity {
  final DocumentFileTypeEnum type;
  final String link;

  DocumentFileTypeEntity({
    required this.type,
    required this.link,
  });
}
