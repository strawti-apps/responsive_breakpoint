import 'package:flutter/material.dart';

import '../core/breakpoint.dart';
import '../core/responsive_value.dart';

class ResponsiveAxis extends StatelessWidget {
  final List<Widget> children;

  final ResponsiveValue<Axis>? axis;
  final ResponsiveValue<MainAxisAlignment>? mainAxisAlignment;
  final ResponsiveValue<CrossAxisAlignment>? crossAxisAlignment;
  final ResponsiveValue<MainAxisSize>? mainAxisSize;
  final ResponsiveValue<TextBaseline>? textBaseline;
  final ResponsiveValue<TextDirection>? textDirection;
  final ResponsiveValue<VerticalDirection>? verticalDirection;

  const ResponsiveAxis({
    super.key,
    required this.children,
    this.axis,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
    this.mainAxisSize,
    this.textBaseline,
    this.textDirection,
    this.verticalDirection,
  });

  @override
  Widget build(BuildContext context) {
    final bp = Breakpoint.getBreakpoint(context);
    final resolvedAxis = axis?.resolve(bp) ?? Axis.vertical;
    final resolvedMainAxisAlignment =
        mainAxisAlignment?.resolve(bp) ?? MainAxisAlignment.start;
    final resolvedCrossAxisAlignment =
        crossAxisAlignment?.resolve(bp) ?? CrossAxisAlignment.center;
    final resolvedMainAxisSize = mainAxisSize?.resolve(bp) ?? MainAxisSize.max;
    final resolvedTextBaseline = textBaseline?.resolve(bp);
    final resolvedTextDirection = textDirection?.resolve(bp);
    final resolvedVerticalDirection =
        verticalDirection?.resolve(bp) ?? VerticalDirection.down;

    if (resolvedAxis == Axis.horizontal) {
      return Row(
        mainAxisAlignment: resolvedMainAxisAlignment,
        crossAxisAlignment: resolvedCrossAxisAlignment,
        mainAxisSize: resolvedMainAxisSize,
        textBaseline: resolvedTextBaseline,
        textDirection: resolvedTextDirection,
        verticalDirection: resolvedVerticalDirection,
        children: children,
      );
    } else {
      return Column(
        mainAxisAlignment: resolvedMainAxisAlignment,
        crossAxisAlignment: resolvedCrossAxisAlignment,
        mainAxisSize: resolvedMainAxisSize,
        textBaseline: resolvedTextBaseline,
        textDirection: resolvedTextDirection,
        verticalDirection: resolvedVerticalDirection,
        children: children,
      );
    }
  }
}
