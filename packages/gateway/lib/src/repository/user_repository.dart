import 'package:domain/domain.dart';
import 'package:gateway/gateway.dart';
import 'package:riverpod/riverpod.dart';

final userRepositoryOverride = userRepositoryProvider.overrideWith(UserRepositoryImpl.new);

class UserRepositoryImpl implements UserRepository {
  const UserRepositoryImpl(this.ref);

  final Ref ref;

  @override
  Future<User?> get() async {
    final response = await ref.read(dbProvider).userDb.getUser();
    if (response == null) {
      return null;
    }
    return User(id: response.id, name: response.name, createdAt: response.createdAt);
  }
}
