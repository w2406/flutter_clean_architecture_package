import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../.generated/src/user/value_object/name.freezed.dart';

@freezed
class Name with _$Name {
  const factory Name({
    required String value,
  }) = _Name;
}
