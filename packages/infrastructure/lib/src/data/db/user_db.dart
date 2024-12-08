import 'package:domain/domain.dart';
import 'package:gateway/gateway.dart';
import 'package:infrastructure/src/data/db/schema.dart' as realm_domain;
import 'package:realm/realm.dart';

class UserDbImpl implements UserDb {
  final Realm _realm;

  UserDbImpl(this._realm);

  @override
  Future<User?> getUser() async {
    final user = _realm.all<realm_domain.User>().firstOrNull;
    if (user == null) {
      return null;
    }
    return User(id: Id(value: user.id), name: Name(value: user.name), createdAt: user.createdAt);
  }
}
