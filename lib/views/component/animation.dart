import 'package:simple_animations/simple_animations.dart';
import 'package:flutter/material.dart';

enum _AniProps { opacity, secondry }

class FadeScale extends StatelessWidget {
  final Widget child;
  final int? delay;
  final double? scale;
  final int? duration;
  final Curve? curve;

  const FadeScale({Key? key, this.delay, required this.child, this.scale, this.duration, this.curve}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTween<_AniProps>()
      ..add(_AniProps.opacity, Tween<double>(begin: 0.3, end: 1.0))
      ..add(_AniProps.secondry, Tween<double>(begin: scale ?? .95, end: 1.0));

    return PlayAnimation<MultiTweenValues<_AniProps>>(
      duration: Duration(milliseconds: duration ?? 400),
      tween: tween,
      curve: curve ?? Curves.easeOutCubic,
      child: child,
      delay: Duration(milliseconds: delay ?? 0),
      builder: (context, child, value) => Opacity(
        opacity: value.get(_AniProps.opacity),
        child: Transform.scale(
          scale: value.get(_AniProps.secondry),
          child: child,
        ),
      ),
    );
  }
}

class FadeOpacity extends StatelessWidget {
  final Widget child;
  const FadeOpacity({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTween<_AniProps>()..add(_AniProps.opacity, Tween<double>(begin: 0.25, end: 1.0));

    return PlayAnimation<MultiTweenValues<_AniProps>>(
      duration: const Duration(milliseconds: 300),
      tween: tween,
      curve: Curves.easeInCubic,
      child: child,
      delay: const Duration(milliseconds: 0),
      builder: (context, child, value) => Opacity(
        opacity: value.get(_AniProps.opacity),
        child: child,
      ),
    );
  }
}
