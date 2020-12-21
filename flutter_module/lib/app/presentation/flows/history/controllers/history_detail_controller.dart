import 'package:flutter/foundation.dart';
import 'package:flutter_module/app/core/routing/app_router.dart';
import 'package:flutter_module/app/presentation/modules/transaction_detail/transaction_detail_module_controller.dart';

class HistoryDetailController extends TransactionDetailModuleController {
  HistoryDetailController({
    @required AppRouter appRouter,
  }) : super(appRouter: appRouter);

  @override
  void onCallSupport() {
    appRouter.showInfoMessage("Navigate to", "Support");
  }

  @override
  void onSplitBill() {
    appRouter.showInfoMessage("Navigate to", "Split Bill");
  }

  @override
  void onDownloadBill() {
    appRouter.showInfoMessage("Navigate to", "Download Bill");
  }

  @override
  void onMoreOptions() {
    appRouter.showInfoMessage("Navigate to", "More actions");
  }
}
