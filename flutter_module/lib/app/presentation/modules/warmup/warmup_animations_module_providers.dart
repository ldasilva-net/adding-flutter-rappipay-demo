import 'package:flutter_module/app/presentation/modules/warmup/warmup_animations_module_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final warmupModuleControllerProvider =
    ScopedProvider<WarmupModuleController>(null);

final warmupReadyProvider = ScopedProvider<bool>((ref) => false);
