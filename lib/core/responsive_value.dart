import 'package:flutter/material.dart';

import 'breakpoint.dart';

class ResponsiveValue<T> {
  final T? xs;
  final T? sm;
  final T? md;
  final T? lg;
  final T? xl;
  final T? xxl;

  const ResponsiveValue({
    this.xs,
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xxl,
  });

  T? resolve(Breakpoint current) {
    switch (current) {
      case Breakpoint.xxl:
        return xxl ?? xl ?? lg ?? md ?? sm ?? xs;
      case Breakpoint.xl:
        return xl ?? lg ?? md ?? sm ?? xs;
      case Breakpoint.lg:
        return lg ?? md ?? sm ?? xs;
      case Breakpoint.md:
        return md ?? sm ?? xs;
      case Breakpoint.sm:
        return sm ?? xs;
      case Breakpoint.xs:
        return xs;
    }
  }

  T? of(BuildContext context) {
    final current = Breakpoint.getBreakpoint(context);
    return resolve(current);
  }
}

extension ResponsiveContext on BuildContext {
  T? responsive<T>(ResponsiveValue<T?> value) {
    return value.of(this);
  }
}
