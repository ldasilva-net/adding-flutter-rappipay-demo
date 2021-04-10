import 'package:flutter_module/app/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

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
