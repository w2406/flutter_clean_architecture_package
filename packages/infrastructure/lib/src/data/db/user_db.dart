import 'package:gateway/gateway.dart';
import 'package:infrastructure/src/data/db/schema.dart' as realm_domain;
import 'package:realm/realm.dart';

class UserDbImpl implements UserDb {
  final Realm _realm;

  UserDbImpl(this._realm);

  @override
  Future<UserDto?> getUser() async {
    final user = _realm.all<realm_domain.User>().firstOrNull;
    if (user == null) {
      return null;
    }
    return UserDto(id: user.id, name: user.name, createdAt: user.createdAt);
  }
}
