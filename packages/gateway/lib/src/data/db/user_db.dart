import 'package:domain/domain.dart';

abstract interface class UserDb {
  Future<User?> getUser();
}
