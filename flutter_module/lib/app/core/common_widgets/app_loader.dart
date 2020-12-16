import 'package:flutter/material.dart';
import 'package:flutter_module/app/core/theme/app_color.dart';

class AppLoader extends StatelessWidget {
  const AppLoader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(AppColor.rappi),
      ),
    ));
  }
}
