import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'user_db.dart';

part '../../../.generated/src/data/db/db.g.dart';

@Riverpod(keepAlive: true)
Db db(_) => throw UnimplementedError();

abstract interface class Db {
  UserDb get userDb;
}
