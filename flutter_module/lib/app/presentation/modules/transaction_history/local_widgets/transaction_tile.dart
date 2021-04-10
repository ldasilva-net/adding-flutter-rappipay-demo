import 'package:flutter_module/app/core/theme/app_color.dart';
import 'package:flutter_module/app/core/theme/app_text_theme.dart';
import 'package:flutter_module/app/core/utils/r.dart';
import 'package:flutter_module/app/data/models/transactions/transaction.dart';
import 'package:flutter_module/app/data/models/transactions/transaction_tag.dart';
import 'package:flutter_module/app/presentation/modules/transaction_history/local_widgets/transaction_tile_loading.dart';
import 'package:flutter_module/app/presentation/modules/transaction_history/transaction_history_module_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supercharged/supercharged.dart';
import 'package:flutter_module/app/core/utils/scope_function.dart';
import 'package:flutter_module/app/core/utils/string_utils.dart';

class TransactionTile extends HookWidget {
  const TransactionTile() : super();

  @override
  Widget build(BuildContext context) {
    final index = useProvider(transactionItemIndexProvider);

    final transactionHistoryModuleController =
        useProvider(transactionHistoryModuleControllerProvider);
    final transactionItem = useProvider(transactionItemAtIndexProvider(index));

    return transactionItem.when(
      data: (transactionItem) {
        return transactionItem.when(
          empty: () => const SizedBox(),
          transactionFound: (transaction) => Container(
            padding: const EdgeInsets.only(bottom: 10),
            decoration: const BoxDecoration(
              color: AppColor.white,
            ),
            child: Column(
              children: [
                ListTile(
                  onTap: () => transactionHistoryModuleController
                      .onTransactionSelected(transaction),
                  leading: Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 8),
                        child: FadeInImage.assetNetwork(
                          placeholder: AppAsset
                              .icons_image_icons_transaction_default_transaction_default_icon,
                          image: transaction.image,
                          imageErrorBuilder: (context, url, error) =>
                              Image.asset(AppAsset
                                  .icons_image_icons_transaction_default_transaction_default_icon),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: SizedBox(
                          width: 24,
                          height: 24,
                          child: FadeInImage.assetNetwork(
                            placeholder: AppAsset
                                .icons_image_icons_transaction_default_transaction_default_icon,
                            image: transaction.icon,
                            imageErrorBuilder: (context, url, error) =>
                                Image.asset(AppAsset
                                    .icons_image_icons_transaction_default_transaction_default_icon),
                          ),
                        ),
                      )
                    ],
                  ),
                  title: Text(
                    transaction.title,
                    style: AppTextTheme.tileTitle,
                  ),
                  subtitle: _getSubtitleWidget(transaction),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        transaction.amount,
                        style: AppTextTheme.caption1GreyRegular,
                      ),
                      _getTagWidget(transaction.tag)
                    ],
                  ),
                ),
                Divider(
                  color: AppColor.divider,
                  indent: MediaQuery.of(context).size.width * 0.2,
                )
              ],
            ),
          ),
        );
      },
      loading: () => const TransactionTileLoading(),
      error: (err, stack) => const Text("Error"),
    );
  }

  Column _getSubtitleWidget(Transaction transaction) {
    final subtitle = [
      Text(
        transaction.date,
        style: AppTextTheme.tileSubtitle,
      )
    ];
    transaction.description?.let(
      (it) => subtitle.insert(
        0,
        Text(
          it,
          style: AppTextTheme.tileSubtitle,
        ),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: subtitle,
    );
  }

  Widget _getTagWidget(TransactionTag tag) {
    tag.icon?.let((it) {
      return Container(
        margin: const EdgeInsets.only(top: 6),
        padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: tag.backgroundColor?.toColor() ?? AppColor.obscure,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              tag.name.defaultString(),
              style: AppTextTheme.regularText.copyWith(color: AppColor.white),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3),
              child: SvgPicture.network(
                it,
                width: 18,
                height: 18,
              ),
            )
          ],
        ),
      );
    });

    tag.name?.let((it) {
      return Container(
        margin: const EdgeInsets.only(top: 6),
        child: Text(
          it,
          style: AppTextTheme.regularText.copyWith(
            color: tag.textColor?.toColor() ?? AppColor.disabled,
          ),
        ),
      );
    });

    return const SizedBox();
  }
}
