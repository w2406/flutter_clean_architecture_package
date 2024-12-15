import 'package:domain/domain.dart';
import 'package:gateway/gateway.dart';

final userRepositoryOverride = userRepositoryProvider.overrideWith((ref) => UserRepositoryImpl(ref.read(dbProvider)));

class UserRepositoryImpl implements UserRepository {
  const UserRepositoryImpl(Db db) : _db = db;

  final Db _db;

  @override
  Future<User> get() async {
    final response = await _db.userDb.getUser();
    if (response == null) {
      throw Exception('User not found');
    }
    return User(id: Id(value: response.id), name: Name(value: response.name), createdAt: response.createdAt);
  }
}
