import 'package:flutter/material.dart';
import '../core/breakpoint.dart';
import '../core/responsive_value.dart';

class ResponsiveFlex extends StatelessWidget {
  final ResponsiveValue<int> columns;
  final double spacing;
  final double runSpacing;
  final List<Widget> children;

  const ResponsiveFlex({
    super.key,
    required this.columns,
    required this.children,
    this.spacing = 16,
    this.runSpacing = 16,
  });

  @override
  Widget build(BuildContext context) {
    final bp = Breakpoint.getBreakpoint(context);
    final col = columns.resolve(bp) ?? 1;

    return LayoutBuilder(
      builder: (context, constraints) {
        final itemWidth = (constraints.maxWidth - spacing * (col - 1)) / col;

        return Wrap(
          spacing: spacing,
          runSpacing: runSpacing,
          children:
              children.map((child) {
                return SizedBox(width: itemWidth, child: child);
              }).toList(),
        );
      },
    );
  }
}
