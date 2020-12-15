import 'package:flutter_module/app/data/repositories/transactions/transactions_repository.dart';
import 'package:flutter_module/app/data/repositories/transactions/transactions_repository_fake.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final transactionsRepositoryProvider =
    Provider.autoDispose<TransactionsRepository>(
        (ref) => TransactionsRepositoryFake(ref.read));
