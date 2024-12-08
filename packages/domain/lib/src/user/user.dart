import 'package:freezed_annotation/freezed_annotation.dart';

import 'value_object/id.dart';
import 'value_object/name.dart';

part '../../.generated/src/user/user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required Id id,
    required Name name,
    required DateTime createdAt,
  }) = _User;
}
