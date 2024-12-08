import 'package:domain/domain.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../../../.generated/src/usecase/user/get_user.g.dart';

@riverpod
GetUser getUser(Ref ref) => GetUser(userRepository: ref.watch(userRepositoryProvider));

class GetUser {
  final UserRepository _userRepository;

  GetUser({required UserRepository userRepository}) : _userRepository = userRepository;

  /// ユーザー情報を再取得する
  Future<User?> execute() async {
    // ユーザー情報を取得
    final user = await _userRepository.get();
    return user;
  }
}
