import 'package:flutter/material.dart';
import '../core/breakpoint.dart';
import '../core/responsive_value.dart';

class ResponsiveVisibility extends StatelessWidget {
  final ResponsiveValue<bool> visible;
  final Widget child;
  final Widget replacement;

  const ResponsiveVisibility({
    super.key,
    required this.visible,
    required this.child,
    this.replacement = const SizedBox.shrink(),
  });

  @override
  Widget build(BuildContext context) {
    final bp = Breakpoint.getBreakpoint(context);
    final isVisible = visible.resolve(bp) ?? true;

    return isVisible ? child : replacement;
  }
}
