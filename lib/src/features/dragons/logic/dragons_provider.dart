import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'dragons_state.dart';

part 'dragons_state_notifier.dart';

/// Provider to use the DragonsStateNotifier
final dragonsNotifierProvider = StateNotifierProvider<DragonsNotifier>(
  (_) => DragonsNotifier(),
);

/// Repositories Providers
/// TODO: Create Repositories Providers

/// Use Cases Providers
/// TODO: Create Use Cases Providers
