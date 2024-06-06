/*
 * Copyright (c) 2022.
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

part of 'widget.dart';

extension ResponsiveSizeExt on num {
  double get w => AdaptiveHelper().setWidth(this);

  double get h => AdaptiveHelper().setHeight(this);

  double get r => AdaptiveHelper().radius(this);

  double get pw => AdaptiveHelper().width * this;

  double get ph => AdaptiveHelper().height * this;

  double get sp => AdaptiveHelper().setSp(this);

  Widget get verticalSpace => AdaptiveHelper().setVerticalSpacing(this);

  Widget get verticalSpaceRadius => AdaptiveHelper().setVerticalSpacingRadius(this);

  Widget get horizontalSpace => AdaptiveHelper().setHorizontalSpacing(this);

  Widget get horizontalSpaceRadius => AdaptiveHelper().setHorizontalSpacingRadius(this);
}

extension EdgeInsetsX on EdgeInsets {
  EdgeInsets get r => copyWith(
        top: top.r,
        left: left.r,
        right: right.r,
        bottom: bottom.r,
      );

  EdgeInsets get w => copyWith(
        top: top.w,
        left: left.w,
        right: right.w,
        bottom: bottom.w,
      );

  EdgeInsets get h => copyWith(
        top: top.h,
        left: left.h,
        right: right.h,
        bottom: bottom.h,
      );

  EdgeInsets get wh => copyWith(
        top: top.h,
        left: left.w,
        right: right.w,
        bottom: bottom.h,
      );
}
