import '../../../../core/routing/app_router.dart';
import '../../../modules/transaction_detail/transaction_detail_module_controller.dart';

class HistoryDetailController extends TransactionDetailModuleController {
  @override
  final AppRouter appRouter;

  HistoryDetailController({required this.appRouter}) : super();

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
