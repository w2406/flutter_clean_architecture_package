import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:usecase/usecase.dart';

part '../../.generated/src/model/user_state.freezed.dart';
part '../../.generated/src/model/user_state.g.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    required User? user,
  }) = _UserState;
}

@riverpod
class UserStateNotifier extends _$UserStateNotifier {
  @override
  FutureOr<UserState> build() async {
    final usecase = ref.watch(getUserProvider);
    final user = await usecase.execute();
    return UserState(
      user: user,
    );
  }

  /// ユーザー情報を再取得する
  FutureOr<void> refresh() async {
    final user = await ref.watch(getUserProvider).execute();
    state = AsyncValue.data(UserState(
      user: user,
    ));
  }
}
