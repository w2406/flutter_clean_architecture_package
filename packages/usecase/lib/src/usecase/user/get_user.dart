import 'package:domain/domain.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:usecase/src/dto/user_dto.dart';

part '../../../.generated/src/usecase/user/get_user.g.dart';

@riverpod
GetUser getUser(Ref ref) => GetUser(userRepository: ref.watch(userRepositoryProvider));

class GetUser {
  final UserRepository _userRepository;

  GetUser({required UserRepository userRepository}) : _userRepository = userRepository;

  /// ユーザー情報を再取得する
  Future<UserDto> execute() async {
    // ユーザー情報を取得
    final user = await _userRepository.get();
    return UserDto(id: user.id.value, name: user.name.value, createdAt: user.createdAt);
  }
}
