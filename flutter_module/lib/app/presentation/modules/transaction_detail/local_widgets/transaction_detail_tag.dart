import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

import '../../../../core/theme/app_color.dart';
import '../../../../core/theme/app_text_theme.dart';
import '../../../../core/utils/scope_function.dart';
import '../../../../data/models/transactions/transaction_tag.dart';

class TransactionDetailTag extends StatelessWidget {
  final TransactionTag tag;

  const TransactionDetailTag({required this.tag}) : super();

  @override
  Widget build(BuildContext context) {
    tag.name?.let((it) {
      final color = tag.textColor?.toColor() ?? AppColor.disabled;

      return Container(
        padding: const EdgeInsets.fromLTRB(18, 8, 18, 8),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          border: Border.all(
            color: color,
          ),
        ),
        child: Text(
          it,
          style: AppTextTheme.regularText.copyWith(
            color: color,
          ),
        ),
      );
    });

    return const SizedBox();
  }
}
