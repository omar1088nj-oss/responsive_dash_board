import 'dart:developer';

import 'package:flutter/material.dart';

class AdaptiveLayoutWidget extends StatelessWidget {
  const AdaptiveLayoutWidget({
    super.key,
    required this.customMobile,
    required this.custpmTablit,
    required this.customDesctop,
  });

  final WidgetBuilder customMobile, custpmTablit, customDesctop;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        log('${constraints.maxWidth}');
        if (constraints.maxWidth <= 550) {
          return customMobile(context);
        } else if (constraints.maxWidth <= 900) {
          return custpmTablit(context);
        } else {
          return customDesctop(context);
        }
      },
    );
  }
}
