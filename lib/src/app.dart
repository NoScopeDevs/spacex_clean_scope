import 'package:flutter/material.dart';
import 'package:spacex_clean_scope/src/features/dragons/views/dragons_page.dart';

class SpaceXApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const DragonsPage(),
    );
  }
}
