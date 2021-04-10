import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/theme/app_color.dart';
import '../../../../core/theme/app_text_theme.dart';
import '../../../../data/models/transactions/transaction.dart';
import '../transaction_detail_module_providers.dart';

class TransactionDetailList extends HookWidget {
  final Transaction transaction;

  const TransactionDetailList({required this.transaction}) : super();

  @override
  Widget build(BuildContext context) {
    final _detailList = useProvider(currentTransactionDetailListProvider);

    return Container(
      color: AppColor.white,
      child: Column(
        children: [
          _detailTileWidget(
            title: const Text(
              'Total',
              style: AppTextTheme.headlineBrownSemibold,
            ),
            trailing: Text(
              transaction.amount,
              style: AppTextTheme.headlineBrownSemibold,
            ),
          ),
          for (final transactionDetail in _detailList) ...[
            _detailTileWidget(
              title: Text(
                transactionDetail.key,
                style: AppTextTheme.bodyBrownSemibold,
              ),
              trailing: Text(
                transactionDetail.value,
                style: AppTextTheme.caption1BrownRegular,
              ),
            )
          ],
        ],
      ),
    );
  }

  Widget _detailTileWidget({required Widget title, required Widget trailing}) {
    return Column(
      children: [
        ListTile(
          title: title,
          trailing: trailing,
        ),
        const Divider(
          color: AppColor.divider,
        ),
      ],
    );
  }
}
