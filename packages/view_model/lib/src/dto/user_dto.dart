import 'package:freezed_annotation/freezed_annotation.dart';

part '../../.generated/src/dto/user_dto.freezed.dart';

@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    required String id,
    required String name,
    required DateTime createdAt,
  }) = _UserDto;
}
