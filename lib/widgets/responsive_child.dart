import 'package:flutter/material.dart';
import 'package:responsive_breakpoint/core/responsive_value.dart';

class ResponsiveChild extends StatelessWidget {
  final ResponsiveValue<Widget> child;
  const ResponsiveChild({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return child.of(context) ?? const SizedBox.shrink();
  }
}
