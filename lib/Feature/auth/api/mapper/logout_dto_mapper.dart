import 'package:flower_e_commerce_app/Feature/auth/api/models/response/logout_response_dto.dart';
import 'package:flower_e_commerce_app/Feature/auth/domain/entities/response/logout_response_entity.dart';

extension LogoutDtoMapper on LogoutResponseDto {
  LogoutResponseEntity toEntity() {
    return LogoutResponseEntity(message: message);
  }
}
