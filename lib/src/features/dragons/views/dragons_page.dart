import 'package:dragons/dragons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spacex_clean_scope/src/features/dragons/logic/dragons_provider.dart';

///DragonsPage
class DragonsPage extends StatelessWidget {
  ///DragonsPage constructor
  const DragonsPage({Key key}) : super(key: key);

  ///DragonsPage [routeName]
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
      data: (dragons) => _DragonsList(dragons: dragons),
      error: (_) => const Center(child: Text('Error')),
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
        const SizedBox(height: 20.0),
        RaisedButton(
          color: Colors.lightBlue,
          child: const Text('Get Dragons'),
          onPressed: () {
            context.read(dragonsNotifierProvider).getDragons();
          },
        )
      ],
    );
  }
}

class _DragonsList extends StatelessWidget {
  const _DragonsList({
    Key key,
    @required this.dragons,
  }) : super(key: key);

  final List<Dragon> dragons;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_, index) {
        final dragon = dragons[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 10.0),
          child: ListTile(
            title: Text(dragon.name),
            subtitle: Text(dragon.description),
            trailing: Icon(
              dragon.active ? Icons.check : Icons.close,
              color: dragon.active ? Colors.green : Colors.red,
            ),
          ),
        );
      },
      itemCount: dragons.length,
    );
  }
}
