import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/theme/app_color.dart';
import '../../../../core/theme/app_text_theme.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader() : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        color: AppColor.white,
      ),
      child: Row(
        children: [
          _headerTile(
              headerTitle: 'Actividad',
              iconData: FontAwesomeIcons.chartBar,
              isSelected: true),
          _headerTile(
              headerTitle: 'Cobros',
              iconData: FontAwesomeIcons.clock,
              isSelected: false),
        ],
      ),
    );
  }

  Expanded _headerTile(
      {required String headerTitle,
      required IconData iconData,
      required bool isSelected}) {
    var borderDecoration = const BoxDecoration(
        border: Border(
      bottom: BorderSide(color: AppColor.rappi, width: 2),
    ));
    var iconColor = AppColor.rappi;
    var headerTextStyle = AppTextTheme.bodyBrownSemibold;

    if (!isSelected) {
      borderDecoration = const BoxDecoration(
          border: Border(
        bottom: BorderSide(color: AppColor.divider),
      ));
      iconColor = AppColor.disabled;
      headerTextStyle =
          AppTextTheme.bodyBrownSemibold.copyWith(color: AppColor.disabled);
    }

    return Expanded(
      child: Container(
        margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        padding: const EdgeInsets.fromLTRB(0, 25, 0, 25),
        decoration: borderDecoration,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData, color: iconColor),
            Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(headerTitle, style: headerTextStyle)),
          ],
        ),
      ),
    );
  }
}
