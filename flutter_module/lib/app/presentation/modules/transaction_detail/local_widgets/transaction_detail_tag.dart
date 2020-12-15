import 'package:flutter_module/app/core/theme/app_color.dart';
import 'package:flutter_module/app/core/theme/app_text_theme.dart';
import 'package:flutter_module/app/data/models/transactions/transaction_tag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_module/app/core/utils/scope_function.dart';
import 'package:flutter_module/app/core/utils/string_utils.dart';
import 'package:supercharged/supercharged.dart';

class TransactionDetailTag extends StatelessWidget {
  final TransactionTag tag;

  const TransactionDetailTag({Key key, this.tag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return tag?.let((it) {
      if (it.name.isNotNullOrEmpty()) {
        final color = (it.textColor.isNotNullOrEmpty())
            ? it.textColor.toColor()
            : AppColor.disabled;

        return Container(
          padding: const EdgeInsets.fromLTRB(18, 8, 18, 8),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            border: Border.all(
              color: color,
            ),
          ),
          child: Text(
            it.name,
            style: AppTextTheme.regularText.copyWith(
              color: color,
            ),
          ),
        );
      }

      return const SizedBox();
    });
  }
}
