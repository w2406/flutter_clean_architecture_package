import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../../../.generated/src/user/repository/user_repository.g.dart';

@Riverpod(keepAlive: true)
UserRepository userRepository(_) => throw UnimplementedError();

abstract interface class UserRepository {
  Future<User?> get();
}
