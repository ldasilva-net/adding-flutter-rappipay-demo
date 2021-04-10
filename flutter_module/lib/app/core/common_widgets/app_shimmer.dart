import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../theme/app_color.dart';

class AppShimmer extends StatelessWidget {
  final Widget child;

  const AppShimmer({required this.child}) : super();

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColor.greyishBrown,
      highlightColor: AppColor.disabled,
      child: child,
    );
  }
}
