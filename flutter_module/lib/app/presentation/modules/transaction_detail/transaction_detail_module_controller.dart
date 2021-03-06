import '../_base/base_module_controller.dart';
import 'local_widgets/transaction_detail_options.dart';

abstract class TransactionDetailModuleController extends BaseModuleController
    implements TransactionDetailActions {
  @override
  Future<void> onInit() async {
    // no-op
  }

  @override
  void onDispose() {
    // no-op
  }
}

abstract class TransactionDetailActions
    implements TransactionDetailOptionsActions, BackPressedSupport {}
