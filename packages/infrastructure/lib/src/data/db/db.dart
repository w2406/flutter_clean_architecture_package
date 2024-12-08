import 'package:gateway/gateway.dart';
import 'package:infrastructure/src/data/db/user_db.dart';
import 'package:realm/realm.dart';

import 'schema.dart';

final dbProviderOverride = dbProvider.overrideWith((_) => DbImpl());

class DbImpl implements Db {
  late Realm realm;

  DbImpl() {
    final config = Configuration.local(
      [User.schema],
    );
    realm = Realm(config);
    realm.write(() {
      final user = User("1", "田中太郎", DateTime.now());
      realm.add(user, update: true);
    });

    print(realm.all<User>().first.name);
  }

  @override
  UserDb get userDb => UserDbImpl(realm);
}
