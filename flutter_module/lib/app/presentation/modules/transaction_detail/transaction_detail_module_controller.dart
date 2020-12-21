import 'package:flutter/foundation.dart';
import 'package:flutter_module/app/core/routing/app_router.dart';
import 'package:flutter_module/app/presentation/modules/_base/base_module_controller.dart';

abstract class TransactionDetailModuleController extends BaseModuleController {
  TransactionDetailModuleController({
    @required AppRouter appRouter,
  }) : super(appRouter: appRouter);

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
