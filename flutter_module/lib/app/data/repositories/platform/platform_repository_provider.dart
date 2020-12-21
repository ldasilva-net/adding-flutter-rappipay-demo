import 'package:flutter_module/app/data/datasources/router_channel/router_channel_datasource_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_module/app/data/repositories/platform/platform_repository.dart';
import 'package:flutter_module/app/data/repositories/platform/platform_repository_impl.dart';

final platformRepositoryProvider = Provider<PlatformRepository>(
  (ref) => PlatformRepositoryImpl(
    routerChannelDatasource: ref.watch(routerChannelDatasourceProvider),
  ),
);
