import 'package:flutter_module/app/core/theme/app_text_theme.dart';
import 'package:flutter_module/app/core/utils/r.dart';
import 'package:flutter_module/app/presentation/modules/transaction_detail/transaction_detail_module_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TransactionDetailOptions extends HookWidget {
  const TransactionDetailOptions({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final transactionDetailModuleController =
        useProvider(transactionDetailModuleControllerProvider);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(0, 32, 0, 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _optionWidget(
            'Soporte',
            AppAsset.icons_vector_icons_support_icon,
            transactionDetailModuleController.onCallSupport,
          ),
          _optionWidget(
            'Dividir cuenta',
            AppAsset.icons_vector_icons_divide_icon,
            transactionDetailModuleController.onSplitBill,
          ),
          _optionWidget(
            'Descargar recibo',
            AppAsset.icons_vector_icons_ticket_icon,
            transactionDetailModuleController.onDownloadBill,
          ),
          _optionWidget(
            'Más acciones',
            AppAsset.icons_vector_icons_more_dots_icon,
            transactionDetailModuleController.onMoreOptions,
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
