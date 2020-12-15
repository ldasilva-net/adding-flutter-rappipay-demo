import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_module/app/data/repositories/platform/platform_repository.dart';
import 'package:flutter_module/app/data/repositories/platform/platform_repository_impl.dart';

final platformRepositoryProvider = Provider<PlatformRepository>(
  (ref) => PlatformRepositoryImpl(ref.read),
);
