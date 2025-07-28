import 'package:flutter/material.dart';
import '../core/breakpoint.dart';
import '../core/responsive_value.dart';

class ResponsivePreferredSizeBuilder<T> extends StatelessWidget
    implements PreferredSizeWidget {
  final ResponsiveValue<T> value;
  final Widget Function(BuildContext context, T value) builder;
  final Size preferredSizeOverride;

  const ResponsivePreferredSizeBuilder({
    super.key,
    required this.value,
    required this.builder,
    this.preferredSizeOverride = const Size.fromHeight(kToolbarHeight),
  });

  @override
  Widget build(BuildContext context) {
    final bp = Breakpoint.getBreakpoint(context);
    final resolved = value.resolve(bp);
    if (resolved == null) return const SizedBox.shrink();
    return builder(context, resolved);
  }

  @override
  Size get preferredSize => preferredSizeOverride;
}
