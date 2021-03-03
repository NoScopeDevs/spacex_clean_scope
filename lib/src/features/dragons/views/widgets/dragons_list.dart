import 'package:flutter/material.dart';

import 'package:dragons/dragons.dart' show Dragon;

import 'dragon_tile.dart';

class DragonsList extends StatelessWidget {
  const DragonsList({
    Key key,
    @required this.dragons,
  }) : super(key: key);

  final List<Dragon> dragons;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_, index) {
        final dragon = dragons[index];
        return DragonTile(dragon: dragon);
      },
      itemCount: dragons.length,
    );
  }
}
