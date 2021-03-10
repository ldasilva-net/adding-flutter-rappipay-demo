import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_module/app/core/theme/app_color.dart';
import 'package:flutter_module/app/core/utils/r.dart';
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

    if (warmupReady) {
      return Container();
    }

    return Stack(
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
    );
  }
}
