import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../datasources/router_channel/router_channel_datasource_provider.dart';
import 'platform_repository.dart';
import 'platform_repository_impl.dart';

final platformRepositoryProvider = Provider<PlatformRepository>(
  (ref) => PlatformRepositoryImpl(
    routerChannelDatasource: ref.watch(routerChannelDatasourceProvider),
  ),
);
