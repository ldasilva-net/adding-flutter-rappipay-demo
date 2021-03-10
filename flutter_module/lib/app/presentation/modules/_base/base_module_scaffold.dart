import 'package:flutter/material.dart';
import 'package:flutter_module/app/core/theme/app_color.dart';
import 'package:flutter_module/app/core/theme/app_theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

class BaseModuleScaffold extends StatelessWidget {
  final Widget body;

  const BaseModuleScaffold({this.body});

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
