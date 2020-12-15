import 'package:flutter_module/app/presentation/modules/_base/base_module_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class TransactionDetailModuleController extends BaseModuleController {
  TransactionDetailModuleController(Reader read) : super(read);

  @override
  Future<void> onInit() async {
    // no-op
  }

  void onCallSupport();

  void onSplitBill();

  void onDownloadBill();

  void onMoreOptions();

  @override
  void onDispose() {
    // no-op
  }
}
