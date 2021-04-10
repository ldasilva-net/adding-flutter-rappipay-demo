import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'warmup_animations_module_controller.dart';

final warmupModuleControllerProvider =
    ScopedProvider<WarmupModuleController>(null);

final warmupReadyProvider = ScopedProvider<bool>((ref) => false);
