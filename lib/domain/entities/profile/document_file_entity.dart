import 'package:dox_financeiro/domain/entities/profile/document_file_type_entity.dart';

class DocumentFileEntity {
  final String title;
  final String type;
  final String size;
  final String time;
  final DocumentFileTypeEntity typeData;

  DocumentFileEntity({
    required this.title,
    required this.type,
    required this.size,
    required this.time,
    required this.typeData,
  });
}
