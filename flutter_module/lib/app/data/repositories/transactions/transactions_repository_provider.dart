import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'transactions_repository.dart';
import 'transactions_repository_fake.dart';

final transactionsRepositoryProvider =
    Provider.autoDispose<TransactionsRepository>(
        (ref) => TransactionsRepositoryFake(ref.read));
