import 'package:flutter_module/app/data/models/transactions/transaction.dart';
import 'package:flutter_module/app/presentation/modules/_base/base_module_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class TransactionHistoryModuleController extends BaseModuleController {
  TransactionHistoryModuleController(Reader read) : super(read);

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
