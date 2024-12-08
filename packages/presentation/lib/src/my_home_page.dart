import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:view_model/view_model.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(myHomePageStateNotifierProvider);
    final notifier = ref.read(myHomePageStateNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("ホーム"),
      ),
      body: state.when(
          data: (data) => Center(
                child: Column(
                  children: [
                    Text('名前：${data.user?.name.value ?? ''}'),
                    const SizedBox(height: 16),
                    Text('ログイン状態：${data.loggedIn}'),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        notifier.logout();
                      },
                      child: const Text('ログアウト'),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        notifier.refresh();
                      },
                      child: const Text('再読み込み'),
                    ),
                  ],
                ),
              ),
          error: (error, stackTrace) {
            return const Center(
              child: Text('エラーが発生しました'),
            );
          },
          loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
