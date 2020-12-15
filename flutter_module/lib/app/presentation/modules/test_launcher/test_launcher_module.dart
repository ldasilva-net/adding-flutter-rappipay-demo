import 'package:flutter_module/app/presentation/modules/test_launcher/test_launcher_module_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TestLauncherModule extends HookWidget {
  const TestLauncherModule({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final testLauncherModuleController =
        useProvider(testLauncherModuleControllerProvider);

    useEffect(() {
      testLauncherModuleController.onInit();
      return testLauncherModuleController.onDispose;
    }, []);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () => testLauncherModuleController.launchSomething(),
              child: Text(
                testLauncherModuleController.launchTitle,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
