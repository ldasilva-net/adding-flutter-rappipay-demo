import 'package:flutter_module/app/core/theme/app_color.dart';
import 'package:flutter_module/app/core/theme/app_text_theme.dart';
import 'package:flutter_module/app/core/utils/r.dart';
import 'package:flutter_module/app/presentation/modules/transaction_detail/local_widgets/transaction_detail_list.dart';
import 'package:flutter_module/app/presentation/modules/transaction_detail/local_widgets/transaction_detail_options.dart';
import 'package:flutter_module/app/presentation/modules/transaction_detail/local_widgets/transaction_detail_tag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'transaction_detail_module_providers.dart';

class TransactionDetailModule extends HookWidget {
  const TransactionDetailModule({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final transactionDetailModuleController =
        useProvider(transactionDetailModuleControllerProvider);
    final currentTransaction = useProvider(currentTransactionProvider);

    useEffect(() {
      transactionDetailModuleController.onInit();
      return transactionDetailModuleController.onDispose;
    }, []);

    return Scaffold(
      backgroundColor: AppColor.whiteTwo,
      body: Container(
        margin: const EdgeInsets.only(top: 50, left: 16, right: 16, bottom: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () =>
                      transactionDetailModuleController.onBackPressed(),
                  child: const Icon(
                    FontAwesomeIcons.chevronLeft,
                    color: AppColor.rappi,
                    size: 24,
                  ),
                ),
              ),
              Container(
                width: 80,
                height: 80,
                padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                child: FadeInImage.assetNetwork(
                  placeholder: AppAsset
                      .icons_image_icons_transaction_default_transaction_default_icon,
                  image: currentTransaction.image,
                  imageErrorBuilder: (context, url, error) => Image.asset(AppAsset
                      .icons_image_icons_transaction_default_transaction_default_icon),
                ),
              ),
              Text(
                currentTransaction.title,
                style: AppTextTheme.h1BrownSemibold.copyWith(height: 1.2),
                textAlign: TextAlign.center,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                child: Text(
                  currentTransaction.date,
                  style: AppTextTheme.caption1GreyRegular,
                  textAlign: TextAlign.center,
                ),
              ),
              TransactionDetailTag(tag: currentTransaction.tag),
              const TransactionDetailOptions(),
              TransactionDetailList(
                transaction: currentTransaction,
              )
            ],
          ),
        ),
      ),
    );
  }
}
