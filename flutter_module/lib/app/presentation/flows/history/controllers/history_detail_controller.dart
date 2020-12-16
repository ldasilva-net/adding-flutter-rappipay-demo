import 'package:flutter_module/app/core/routing/app_router.dart';
import 'package:flutter_module/app/presentation/modules/transaction_detail/transaction_detail_module_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HistoryDetailController extends TransactionDetailModuleController {
  AppRouter _appRouter;

  HistoryDetailController(Reader read) : super(read) {
    _appRouter = read(appRouterProvider);
  }

  @override
  void onCallSupport() {
    _appRouter?.showInfoMessage("Navigate to", "Support");
  }

  @override
  void onSplitBill() {
    _appRouter?.showInfoMessage("Navigate to", "Split Bill");
  }

  @override
  void onDownloadBill() {
    _appRouter?.showInfoMessage("Navigate to", "Download Bill");
  }

  @override
  void onMoreOptions() {
    _appRouter?.showInfoMessage("Navigate to", "More actions");
  }
}
