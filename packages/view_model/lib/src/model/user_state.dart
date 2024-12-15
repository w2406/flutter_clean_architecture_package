import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:usecase/usecase.dart';
import 'package:view_model/src/dto/user_dto.dart';

part '../../.generated/src/model/user_state.freezed.dart';
part '../../.generated/src/model/user_state.g.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    required UserDto user,
  }) = _UserState;
}

@riverpod
class UserStateNotifier extends _$UserStateNotifier {
  @override
  FutureOr<UserState> build() async {
    final usecase = ref.watch(getUserProvider);
    final user = await usecase.execute();
    return UserState(
      user: UserDto(id: user.id, name: user.name, createdAt: user.createdAt),
    );
  }

  /// ユーザー情報を再取得する
  FutureOr<void> refresh() async {
    final user = await ref.watch(getUserProvider).execute();
    state = AsyncValue.data(UserState(
      user: UserDto(id: user.id, name: user.name, createdAt: user.createdAt),
    ));
  }
}
