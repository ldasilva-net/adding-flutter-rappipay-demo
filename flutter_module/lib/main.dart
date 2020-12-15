import 'package:flutter_module/app/presentation/multiplatform_demo_app.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(
      observers: [LoggerObserver()], child: const MultiplatformDemoApp()));
}

class LoggerObserver extends ProviderObserver {
  @override
  void didUpdateProvider(ProviderBase provider, Object newValue) {
    /*
    print('''
      {
        "provider": "${provider.name ?? provider.runtimeType}",
        "newValue": "$newValue"
      }''');
    */
  }
}
