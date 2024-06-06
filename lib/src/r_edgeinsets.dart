import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';

/// A class that can be used to define edge insets with responsive insets.
class REdgeInsets extends EdgeInsets {
  /// Creates adapt insets from offsets from the left, top, right, and bottom.
  REdgeInsets.fromLTRB(
    double left,
    double top,
    double right,
    double bottom,
  ) : super.fromLTRB(
          left.w,
          top.h,
          right.w,
          bottom.h,
        );

  /// Creates adapt insets where all the offsets are `value`.
  ///
  /// {@tool snippet}
  ///
  /// Adapt height-pixel margin on all sides:
  ///
  /// ```dart
  /// const REdgeInsets.all(8.0)
  /// ```
  /// {@end-tool}

  REdgeInsets.all(double value) : super.all(value.r);

  /// Creates adapt insets with only the given values non-zero.
  ///
  /// {@tool snippet}
  ///
  /// Adapt left margin indent of 40 pixels:
  ///
  /// ```dart
  /// const REdgeInsets.only(left: 40.0)
  /// ```
  /// {@end-tool}
  REdgeInsets.only({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) : super.only(
          left: left.w,
          top: top.h,
          right: right.w,
          bottom: bottom.h,
        );

  /// Creates adapt insets with symmetrical vertical and horizontal offsets.
  ///
  /// {@tool snippet}
  ///
  /// Adapt Eight pixel margin above and below, no horizontal margins:
  ///
  /// ```dart
  /// const REdgeInsets.symmetric(vertical: 8.0)
  /// ```
  /// {@end-tool}
  REdgeInsets.symmetric({
    double vertical = 0.0,
    double horizontal = 0.0,
  }) : super.symmetric(
          vertical: vertical.h,
          horizontal: horizontal.w,
        );
}

/// A class that can be used to define edge insets in a directionally aware way.
class REdgeInsetsDirectional extends EdgeInsetsDirectional {
  /// Creates insets where all the offsets are `value`.
  ///
  /// {@tool snippet}
  ///
  /// Adapt eight-pixel margin on all sides:
  ///
  /// ```dart
  /// const REdgeInsetsDirectional.all(8.0)
  /// ```
  /// {@end-tool}
  REdgeInsetsDirectional.all(double value) : super.all(value.r);

  /// Creates insets with only the given values non-zero.
  ///
  /// {@tool snippet}
  ///
  /// Adapt margin indent of 40 pixels on the leading side:
  ///
  /// ```dart
  /// const REdgeInsetsDirectional.only(start: 40.0)
  /// ```
  /// {@end-tool}
  REdgeInsetsDirectional.only({
    double bottom = 0,
    double end = 0,
    double start = 0,
    double top = 0,
  }) : super.only(
          bottom: bottom.r,
          start: start.r,
          end: end.r,
          top: top.r,
        );

  /// Creates adapt insets from offsets from the start, top, end, and bottom.
  REdgeInsetsDirectional.fromSTEB(
    double start,
    double top,
    double end,
    double bottom,
  ) : super.fromSTEB(
          start.r,
          top.r,
          end.r,
          bottom.r,
        );
}
