import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_module/app/core/common_widgets/app_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_module/app/presentation/modules/warmup/warmup_animations_module_providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WarmupModule extends HookWidget {
  final List<Widget> warmupModulesList;

  const WarmupModule({
    Key key,
    @required this.warmupModulesList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final warmupModuleController = useProvider(warmupModuleControllerProvider);
    final warmupReady = useProvider(warmupReadyProvider);

    useEffect(() {
      warmupModuleController.onInit();

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (warmupReady) {
          warmupModuleController.onComplete();
        }
      });

      return warmupModuleController.onDispose;
    }, [warmupReady]);

    const appLoader = AppLoader();
    if (!warmupReady) {
      return Stack(
        children: [
          ...warmupModulesList,
          appLoader,
        ],
      );
    } else {
      return appLoader;
    }
  }
}
