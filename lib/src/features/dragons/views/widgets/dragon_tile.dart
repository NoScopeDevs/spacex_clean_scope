import 'package:flutter/material.dart';

import 'package:dragons/dragons.dart' show Dragon;

import '../dragon_detail_page.dart';

class DragonTile extends StatelessWidget {
  const DragonTile({
    Key key,
    @required this.dragon,
  }) : super(key: key);

  final Dragon dragon;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10.0),
      child: ListTile(
        title: Text(dragon.name),
        subtitle: Text(dragon.description),
        trailing: Icon(
          dragon.active ? Icons.check : Icons.close,
          color: dragon.active ? Colors.green : Colors.red,
        ),
        onTap: () async {
          await Navigator.of(context).push(DragonDetailPage.go(dragon));
        },
      ),
    );
  }
}
