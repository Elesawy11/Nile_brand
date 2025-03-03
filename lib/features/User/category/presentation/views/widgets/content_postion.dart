
import 'package:flutter/material.dart';

class ContentPosition extends StatelessWidget {
  final double? top;
  final double? left;
  final double? right;
  final double? bottom;
  final Widget child;

  const ContentPosition({
    super.key,
    this.top,
    this.left,
    this.right,
    this.bottom,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top ?? 0,
        left: left ?? 0,
        right: right ?? 0,
        bottom: bottom ?? 0,
        child: child);
  }
}