import 'package:gateway/gateway.dart';

abstract interface class UserDb {
  Future<UserDto?> getUser();
}
