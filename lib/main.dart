import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spacex_clean_scope/src/app.dart';

void main() {
  runApp(ProviderScope(child: SpaceXApp()));
}
