import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../.generated/src/user/value_object/id.freezed.dart';

@freezed
class Id with _$Id {
  const factory Id({
    required String value,
  }) = _Id;
}
