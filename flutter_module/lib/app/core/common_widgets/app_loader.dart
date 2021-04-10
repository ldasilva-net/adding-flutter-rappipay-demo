import 'package:flutter/material.dart';

import '../theme/app_color.dart';

class AppLoader extends StatelessWidget {
  const AppLoader() : super();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(AppColor.rappi),
        ),
      ),
    );
  }
}
