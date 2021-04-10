import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/theme/app_color.dart';
import '../../../core/utils/r.dart';
import '../_base/base_module_scaffold.dart';
import 'warmup_animations_module_providers.dart';

class WarmupModule extends HookWidget {
  final List<Widget> warmupModulesList;

  const WarmupModule({required this.warmupModulesList}) : super();

  @override
  Widget build(BuildContext context) {
    final warmupModuleController = useProvider(warmupModuleControllerProvider);
    final warmupReady = useProvider(warmupReadyProvider);

    useEffect(() {
      warmupModuleController.onInit();

      WidgetsBinding.instance?.addPostFrameCallback((_) {
        if (warmupReady) {
          warmupModuleController.onComplete();
        }
      });

      return warmupModuleController.onDispose;
    }, [warmupReady]);

    if (warmupReady) {
      return Container();
    }

    return BaseModuleScaffold(
      body: Stack(
        children: [
          ...warmupModulesList,
          ColoredBox(
            color: AppColor.whiteTwo,
            child: Center(
              child: Image.asset(
                AppAsset.icons_image_icons_rappipay_rappipay_icon,
                width: 150,
                height: 150,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
