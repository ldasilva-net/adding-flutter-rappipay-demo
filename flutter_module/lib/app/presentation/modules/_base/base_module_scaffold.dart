import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../core/theme/app_color.dart';
import '../../../core/theme/app_theme.dart';

class BaseModuleScaffold extends StatelessWidget {
  final Widget body;

  const BaseModuleScaffold({required this.body});

  @override
  Widget build(BuildContext context) {
    return ResponsiveWrapper.builder(
      BouncingScrollWrapper.builder(
        context,
        Scaffold(
          backgroundColor: AppColor.whiteTwo,
          body: body,
        ),
      ),
      maxWidth: AppTheme.responsiveWrapperWidth,
      minWidth: AppTheme.responsiveWrapperWidth,
      defaultScale: true,
      background: Container(color: AppColor.whiteTwo),
    );
  }
}
