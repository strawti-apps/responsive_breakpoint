import 'package:flutter/material.dart';
import '../core/breakpoint.dart';
import '../core/responsive_value.dart';

class ResponsivePadding extends StatelessWidget {
  final ResponsiveValue<EdgeInsets> padding;
  final Widget child;

  const ResponsivePadding({
    super.key,
    required this.padding,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final bp = Breakpoint.getBreakpoint(context);
    final resolvedPadding = padding.resolve(bp) ?? EdgeInsets.zero;

    return Padding(padding: resolvedPadding, child: child);
  }
}
