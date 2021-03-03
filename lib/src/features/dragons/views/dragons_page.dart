import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logic/dragons_provider.dart';

import 'dragons_page.i18n.dart';
import 'widgets/widgets.dart';

/// DragonsPage to show Dragons
class DragonsPage extends StatelessWidget {
  /// DragonsPage constructor
  const DragonsPage({Key key}) : super(key: key);

  /// DragonsPage [routeName]
  static const routeName = 'DragonsPage';

  ///Router for DragonsPage
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const DragonsPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dragons'),
      ),
      body: _DragonsConsumer(),
    );
  }
}

class _DragonsConsumer extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(dragonsNotifierProvider.state);

    return state.when(
      initial: () => const Center(child: _Initial()),
      loading: () => const Center(child: CircularProgressIndicator()),
      data: (dragons) => DragonsList(dragons: dragons),
      error: (error) => Center(child: Text(error)),
    );
  }
}

class _Initial extends StatelessWidget {
  const _Initial();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('Initial'),
        const SizedBox(height: 20),
        RaisedButton(
          color: Colors.lightBlue,
          child: Text(kGetDragonsButtonText.i18n),
          onPressed: () {
            context.read(dragonsNotifierProvider).getDragons();
          },
        )
      ],
    );
  }
}
