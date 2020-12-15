import 'package:flutter/material.dart';

import 'app_color.dart';

class AppTextTheme {
  static const headlineBrownSemibold = TextStyle(
      color: AppColor.obscure,
      fontWeight: FontWeight.w600,
      letterSpacing: -0.833,
      fontSize: 20.0);

  static const h1BrownSemibold = TextStyle(
      color: AppColor.obscure,
      fontWeight: FontWeight.w600,
      letterSpacing: -1.5,
      fontSize: 32.0);

  static const bodyBrownSemibold = TextStyle(
    color: AppColor.obscure,
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );

  static const tileLeading = TextStyle(
    color: AppColor.white,
    fontWeight: FontWeight.w600,
    fontSize: 14,
  );

  static const tileTitle = TextStyle(
    color: AppColor.obscure,
    fontWeight: FontWeight.w600,
    fontSize: 14,
  );

  static const tileSubtitle = TextStyle(
    color: AppColor.brownishGrey,
    fontWeight: FontWeight.w400,
    fontSize: 12,
  );

  static const caption1BrownRegular = TextStyle(
    color: AppColor.obscure,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  static const caption1GreyRegular = TextStyle(
    color: AppColor.brownishGrey,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  static const caption2GreyRegular = TextStyle(
    color: AppColor.brownishGrey,
    fontWeight: FontWeight.w400,
    fontSize: 12,
  );

  static const regularText = TextStyle(
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 12,
  );
}
