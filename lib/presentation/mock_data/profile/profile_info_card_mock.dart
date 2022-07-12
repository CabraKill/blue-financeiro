import 'package:dox_financeiro/domain/entities/finances/profile_info_entity.dart';

class ProfileInfoCardMock {
  static final card = ProfileInfoEntity(
    name: "Dr. Thiago Moreira",
    universityName: "Universidade Federal de Minas Gerais",
    graduationDate: DateTime(2018, 12, 05),
    areaName: "Cardiologia",
    photoUrl:
        "https://api-cdn.figma.com/resize/img/bb0b/b254/b7b3345b595d091644eaa8606fb0b25a?expiration=1658707200&signature=8d7cb7f3fd48e295ba12396572eda0b57cf838c84c78752ed320137e8130e95e&maxsize=2048&bucket=figma-alpha",
  );
}
