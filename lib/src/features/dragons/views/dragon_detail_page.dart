import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:dragons/dragons.dart' show Dragon;
import 'package:spacex_clean_scope/gen/assets.gen.dart';

/// DragonDetailPage to show a specific dragon information
class DragonDetailPage extends StatelessWidget {
  const DragonDetailPage({Key key, this.dragon}) : super(key: key);

  /// Static named route for page
  static const String route = 'DragonDetail';

  /// Static method to return the widget as a PageRoute
  static Route go(Dragon dragon) {
    return MaterialPageRoute<void>(
      builder: (_) => DragonDetailPage(dragon: dragon),
    );
  }

  final Dragon dragon;

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(color: Colors.white);

    return Scaffold(
      body: Stack(
        children: [
          _Background(dragon: dragon),
          CustomScrollView(
            slivers: [
              SliverAppBar(title: Text(dragon.name)),
              SliverList(
                delegate: SliverChildListDelegate([
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(dragon.wikipedia, style: style),
                        Text(dragon.description, style: style),
                      ],
                    ),
                  ),
                ]),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class _Background extends StatelessWidget {
  const _Background({Key key, @required this.dragon}) : super(key: key);

  final Dragon dragon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: _BackgroundImage(dragon: dragon),
          ),
        ),
        Container(color: Colors.black.withOpacity(0.7)),
      ],
    );
  }
}

class _BackgroundImage extends StatelessWidget {
  const _BackgroundImage({Key key, @required this.dragon}) : super(key: key);

  final Dragon dragon;

  @override
  Widget build(BuildContext context) {
    final canShowImage = dragon.flickrImages?.isNotEmpty ?? false;

    if (canShowImage) {
      return Image.network(
        dragon.flickrImages.first,
        loadingBuilder: (_, __, ___) {
          return const Center(child: CircularProgressIndicator());
        },
        errorBuilder: (_, error, __) => Center(child: Text(error)),
      );
    } else {
      return Assets.img.elon.image(fit: BoxFit.cover);
    }
  }
}
