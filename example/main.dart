import 'package:flutter/material.dart';
import 'package:lumu_evolve/lumu_evolve.dart';

void main() {
  debugPrint('=========================================');
  debugPrint('          LUMU EVOLVE SHOWCASE           ');
  debugPrint('=========================================');

  // 1. Showcase MagicObjectExtension.let
  debugPrint('\n--- 1. MagicObjectExtension.let ---');
  const String name = 'lumunar';
  final capitalized = name.let((self) => self.toUpperCase());
  debugPrint('Original: $name -> Let result (capitalized): $capitalized');

  const String? nullName = null;
  final nullResult = nullName.let((self) => self.toUpperCase());
  debugPrint('Original: null -> Let result: $nullResult');

  // 2. Showcase MagicObjectExtension.also
  debugPrint('\n--- 2. MagicObjectExtension.also ---');
  final numbers = [1, 2, 3]
    ..also((self) => debugPrint('Logging before modification: $self'))
    ..add(4);
  debugPrint('Modified list: $numbers');

  // 3. Showcase MagicObjectExtension.or
  debugPrint('\n--- 3. MagicObjectExtension.or ---');
  const String? displayImage = null;
  final finalImage = displayImage.or('assets/default_avatar.png');
  debugPrint('Original: null -> Fallback path: $finalImage');

  // 4. Showcase MagicBooleanExtension.when
  debugPrint('\n--- 4. MagicBooleanExtension.when ---');
  const bool isActive = true;
  final status = isActive.when(then: 'Active', pass: 'Inactive');
  debugPrint('isActive: $isActive -> status: $status');

  const bool isSuspended = false;
  final suspendedStatus = isSuspended.when(then: 'Suspended', pass: 'Active');
  debugPrint('isSuspended: $isSuspended -> status: $suspendedStatus');

  // 5. Showcase MagicBooleanExtension.pick
  debugPrint('\n--- 5. MagicBooleanExtension.pick ---');
  const bool isLoaded = true;
  final widget = isLoaded.pick(
    match: () => 'Loaded Content (expensive query simulated)',
    otherwise: () => 'Loading Shimmer...',
  );
  debugPrint('isLoaded: $isLoaded -> result: $widget');
}
