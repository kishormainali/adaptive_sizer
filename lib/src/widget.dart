/*
 * Copyright (c) 2022.
 * Author: Kishor Mainali
 * Company: EB Pearls
 */
import 'dart:math';

import 'package:flutter/material.dart';

part 'adaptive_helper.dart';
part 'extension.dart';

class ResponsiveSizer extends StatelessWidget {
  const ResponsiveSizer({
    super.key,
    required this.builder,
    this.designSize = AdaptiveHelper.defaultSize,
  });

  final Function(BuildContext) builder;
  final Size designSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      AdaptiveHelper.init(constraints: constraints, designSize: designSize);
      return builder(context);
    });
  }
}
