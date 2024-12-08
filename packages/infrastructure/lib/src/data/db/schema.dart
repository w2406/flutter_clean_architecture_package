import 'package:realm/realm.dart';

part 'schema.realm.dart';

@RealmModel()
class _User {
  late String id;
  late String name;
  late DateTime createdAt;
}
