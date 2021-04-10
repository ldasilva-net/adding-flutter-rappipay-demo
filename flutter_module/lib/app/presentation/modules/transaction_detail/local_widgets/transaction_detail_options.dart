import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theme/app_text_theme.dart';
import '../../../../core/utils/r.dart';

class TransactionDetailOptions extends HookWidget {
  final TransactionDetailOptionsActions actions;

  const TransactionDetailOptions({
    required this.actions,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(0, 32, 0, 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _optionWidget(
            'Soporte',
            AppAsset.icons_vector_icons_support_icon,
            actions.onCallSupport,
          ),
          _optionWidget(
            'Dividir cuenta',
            AppAsset.icons_vector_icons_divide_icon,
            actions.onSplitBill,
          ),
          _optionWidget(
            'Descargar recibo',
            AppAsset.icons_vector_icons_ticket_icon,
            actions.onDownloadBill,
          ),
          _optionWidget(
            'Más acciones',
            AppAsset.icons_vector_icons_more_dots_icon,
            actions.onMoreOptions,
          ),
        ],
      ),
    );
  }

  Widget _optionWidget(String title, String icon, void Function() onTap) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        child: Column(
          children: [
            Container(
              width: 60,
              height: 60,
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x29806260),
                    offset: Offset(0, 6),
                    blurRadius: 10,
                  )
                ],
                color: Colors.white,
              ),
              child: SvgPicture.asset(
                icon,
              ),
            ),
            Container(
              width: 80,
              height: 60,
              padding: const EdgeInsets.fromLTRB(0, 7, 0, 15),
              child: Text(
                title,
                style: AppTextTheme.caption2GreyRegular,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

abstract class TransactionDetailOptionsActions {
  void onCallSupport();

  void onSplitBill();

  void onDownloadBill();

  void onMoreOptions();
}
