import 'package:flutter/material.dart';

import 'app_color.dart';

class AppTheme {
  static const fontPoppins = "Poppins";

  static final appThemeData = ThemeData(
    primaryColor: AppColor.rappi,
    fontFamily: fontPoppins,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static const responsiveWrapperWidth = 414.0;
}
