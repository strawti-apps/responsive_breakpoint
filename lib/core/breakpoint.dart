import 'package:flutter/material.dart';

enum Breakpoint {
  xs,
  sm,
  md,
  lg,
  xl,
  xxl;

  static Breakpoint getBreakpoint(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (width < 600) return Breakpoint.xs;
    if (width < 960) return Breakpoint.sm;
    if (width < 1280) return Breakpoint.md;
    if (width < 1920) return Breakpoint.lg;
    if (width < 2560) return Breakpoint.xl;
    return Breakpoint.xxl;
  }
}
