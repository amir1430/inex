import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RotatingSyncIcon extends HookWidget {
  const RotatingSyncIcon({super.key});

  @override
  Widget build(BuildContext context) {
    final animationController =
        useAnimationController(duration: const Duration(seconds: 1));
    final tween =
        Tween<double>(begin: pi * 2, end: 0).animate(animationController);
    final value = useAnimation(tween);

    useEffect(
      () {
        animationController.repeat();
        return null;
      },
      [],
    );

    return Transform.rotate(
      angle: value,
      child: const Icon(Icons.sync_outlined),
    );
  }
}
