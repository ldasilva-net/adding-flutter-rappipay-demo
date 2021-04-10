import '../../../data/models/transactions/transaction.dart';
import '../_base/base_module_controller.dart';

abstract class TransactionHistoryModuleController extends BaseModuleController {
  @override
  void onInit() {
    // no-op
  }

  void onTransactionSelected(Transaction transaction);

  @override
  void onDispose() {
    // no-op
  }
}
