import 'package:flutter/material.dart';
import 'package:flutter_module/app/core/theme/app_color.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppNavBar extends StatelessWidget {
  final VoidCallback onTapBack;

  const AppNavBar({
    Key key,
    @required this.onTapBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: InkWell(
        onTap: onTapBack,
        child: const SizedBox(
          height: 40,
          width: 50,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Icon(
              FontAwesomeIcons.chevronLeft,
              color: AppColor.rappi,
              size: 24,
            ),
          ),
        ),
      ),
    );
  }
}
