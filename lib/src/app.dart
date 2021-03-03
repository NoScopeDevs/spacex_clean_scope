import 'package:flutter/material.dart';

import 'package:i18n_extension/i18n_widget.dart';

import 'features/dragons/views/dragons_page.dart';

class SpaceXApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SpaceX App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: I18n(child: const DragonsPage()),
    );
  }
}
