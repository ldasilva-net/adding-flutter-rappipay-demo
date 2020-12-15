// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'transaction_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TransactionItemTearOff {
  const _$TransactionItemTearOff();

// ignore: unused_element
  _Empty empty() {
    return const _Empty();
  }

// ignore: unused_element
  _TransactionFound transactionFound(Transaction transaction) {
    return _TransactionFound(
      transaction,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TransactionItem = _$TransactionItemTearOff();

/// @nodoc
mixin _$TransactionItem {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result empty(),
    @required Result transactionFound(Transaction transaction),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(),
    Result transactionFound(Transaction transaction),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(_Empty value),
    @required Result transactionFound(_TransactionFound value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(_Empty value),
    Result transactionFound(_TransactionFound value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $TransactionItemCopyWith<$Res> {
  factory $TransactionItemCopyWith(
          TransactionItem value, $Res Function(TransactionItem) then) =
      _$TransactionItemCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransactionItemCopyWithImpl<$Res>
    implements $TransactionItemCopyWith<$Res> {
  _$TransactionItemCopyWithImpl(this._value, this._then);

  final TransactionItem _value;
  // ignore: unused_field
  final $Res Function(TransactionItem) _then;
}

/// @nodoc
abstract class _$EmptyCopyWith<$Res> {
  factory _$EmptyCopyWith(_Empty value, $Res Function(_Empty) then) =
      __$EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmptyCopyWithImpl<$Res> extends _$TransactionItemCopyWithImpl<$Res>
    implements _$EmptyCopyWith<$Res> {
  __$EmptyCopyWithImpl(_Empty _value, $Res Function(_Empty) _then)
      : super(_value, (v) => _then(v as _Empty));

  @override
  _Empty get _value => super._value as _Empty;
}

/// @nodoc
class _$_Empty with DiagnosticableTreeMixin implements _Empty {
  const _$_Empty();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionItem.empty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'TransactionItem.empty'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result empty(),
    @required Result transactionFound(Transaction transaction),
  }) {
    assert(empty != null);
    assert(transactionFound != null);
    return empty();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(),
    Result transactionFound(Transaction transaction),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(_Empty value),
    @required Result transactionFound(_TransactionFound value),
  }) {
    assert(empty != null);
    assert(transactionFound != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(_Empty value),
    Result transactionFound(_TransactionFound value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements TransactionItem {
  const factory _Empty() = _$_Empty;
}

/// @nodoc
abstract class _$TransactionFoundCopyWith<$Res> {
  factory _$TransactionFoundCopyWith(
          _TransactionFound value, $Res Function(_TransactionFound) then) =
      __$TransactionFoundCopyWithImpl<$Res>;
  $Res call({Transaction transaction});

  $TransactionCopyWith<$Res> get transaction;
}

/// @nodoc
class __$TransactionFoundCopyWithImpl<$Res>
    extends _$TransactionItemCopyWithImpl<$Res>
    implements _$TransactionFoundCopyWith<$Res> {
  __$TransactionFoundCopyWithImpl(
      _TransactionFound _value, $Res Function(_TransactionFound) _then)
      : super(_value, (v) => _then(v as _TransactionFound));

  @override
  _TransactionFound get _value => super._value as _TransactionFound;

  @override
  $Res call({
    Object transaction = freezed,
  }) {
    return _then(_TransactionFound(
      transaction == freezed ? _value.transaction : transaction as Transaction,
    ));
  }

  @override
  $TransactionCopyWith<$Res> get transaction {
    if (_value.transaction == null) {
      return null;
    }
    return $TransactionCopyWith<$Res>(_value.transaction, (value) {
      return _then(_value.copyWith(transaction: value));
    });
  }
}

/// @nodoc
class _$_TransactionFound
    with DiagnosticableTreeMixin
    implements _TransactionFound {
  const _$_TransactionFound(this.transaction) : assert(transaction != null);

  @override
  final Transaction transaction;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionItem.transactionFound(transaction: $transaction)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionItem.transactionFound'))
      ..add(DiagnosticsProperty('transaction', transaction));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionFound &&
            (identical(other.transaction, transaction) ||
                const DeepCollectionEquality()
                    .equals(other.transaction, transaction)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(transaction);

  @override
  _$TransactionFoundCopyWith<_TransactionFound> get copyWith =>
      __$TransactionFoundCopyWithImpl<_TransactionFound>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result empty(),
    @required Result transactionFound(Transaction transaction),
  }) {
    assert(empty != null);
    assert(transactionFound != null);
    return transactionFound(transaction);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result empty(),
    Result transactionFound(Transaction transaction),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (transactionFound != null) {
      return transactionFound(transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result empty(_Empty value),
    @required Result transactionFound(_TransactionFound value),
  }) {
    assert(empty != null);
    assert(transactionFound != null);
    return transactionFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result empty(_Empty value),
    Result transactionFound(_TransactionFound value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (transactionFound != null) {
      return transactionFound(this);
    }
    return orElse();
  }
}

abstract class _TransactionFound implements TransactionItem {
  const factory _TransactionFound(Transaction transaction) =
      _$_TransactionFound;

  Transaction get transaction;
  _$TransactionFoundCopyWith<_TransactionFound> get copyWith;
}
