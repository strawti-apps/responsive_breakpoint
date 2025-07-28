import 'package:flutter/material.dart';
import '../core/breakpoint.dart';
import '../core/responsive_value.dart';

class ResponsiveBuilder<T> extends StatelessWidget {
  final ResponsiveValue<T> value;
  final Widget Function(BuildContext context, T value) builder;

  const ResponsiveBuilder({
    super.key,
    required this.value,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    final bp = Breakpoint.getBreakpoint(context);
    final resolved = value.resolve(bp);
    if (resolved == null) return const SizedBox.shrink();
    return builder(context, resolved);
  }
}
