import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app/presentation/multiplatform_demo_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ProviderScope(
      observers: [_LoggerObserver()],
      child: const MultiplatformDemoApp(),
    ),
  );
}

class _LoggerObserver extends ProviderObserver {
  /*
  @override
  void didUpdateProvider(ProviderBase provider, Object? newValue) {    
    print('''
      {
        "provider": "${provider.name ?? provider.runtimeType}",
        "newValue": "$newValue"
      }''');
    
    super.didUpdateProvider(provider, newValue);
  }
  */
}
