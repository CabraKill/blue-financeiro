import 'package:dox_financeiro/domain/entities/profile/document_file_entity.dart';
import 'package:dox_financeiro/domain/entities/profile/document_file_type_entity.dart';
import 'package:dox_financeiro/domain/entities/profile/document_file_type_enum.dart';

class ProfileDocumentItemListMock {
  static const _link =
      "https://www.figma.com/file/qvUIslwiMo9RtW12SRju6g/DOX-(MVP)-(1)?node-id=108%3A14860";
  static final document1 = DocumentFileEntity(
    title: "Documento com Foto",
    size: "2 Mb",
    time: "13:00",
    type: "Link",
    typeData: DocumentFileTypeEntity(
      link: _link,
      type: DocumentFileTypeEnum.googleDocs,
    ),
  );

  static final document2 = DocumentFileEntity(
      title: "CRM",
      size: "2 Mb",
      time: "13:00",
      type: "Link",
      typeData: DocumentFileTypeEntity(
        link: _link,
        type: DocumentFileTypeEnum.googleDocs,
      ));
  
  static final document3 = DocumentFileEntity(
      title: "Diploma de Bacharelado",
      size: "2 Mb",
      time: "13:00",
      type: "Link",
      typeData: DocumentFileTypeEntity(
        link: _link,
        type: DocumentFileTypeEnum.gooogleDrive,
      ));

  static final List<DocumentFileEntity> documentList = [
    document1,
    document2,
    document3,
    document2,
  ];
}
