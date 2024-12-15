import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:view_model/src/dto/user_dto.dart';

import '../model/user_state.dart';

part '../../.generated/src/page/my_home_page_state.freezed.dart';
part '../../.generated/src/page/my_home_page_state.g.dart';

@freezed
class MyHomePageState with _$MyHomePageState {
  const factory MyHomePageState({
    required UserDto? user,
    required bool loggedIn,
  }) = _MyHomePageState;
}

@riverpod
class MyHomePageStateNotifier extends _$MyHomePageStateNotifier {
  @override
  FutureOr<MyHomePageState> build() async {
    // PageStateのstateを更新して画面を変更させるためにreadを使用
    final userState = await ref.read(userStateNotifierProvider.future);
    return MyHomePageState(
      user: userState.user,
      loggedIn: true,
    );
  }

  /// ログアウト処理
  Future<void> logout() async {
    state = const AsyncValue.data(
      MyHomePageState(
        user: null,
        loggedIn: false,
      ),
    );
  }

  /// ユーザー情報を再取得する
  Future<void> refresh() async {
    await ref.read(userStateNotifierProvider.notifier).refresh();
    final userState = await ref.read(userStateNotifierProvider.future);

    state = AsyncValue.data(
      MyHomePageState(
        user: userState.user,
        loggedIn: true,
      ),
    );
  }
}
