// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'transaction_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TransactionItemTearOff {
  const _$TransactionItemTearOff();

  _Empty empty() {
    return const _Empty();
  }

  _TransactionFound transactionFound(Transaction transaction) {
    return _TransactionFound(
      transaction,
    );
  }
}

/// @nodoc
const $TransactionItem = _$TransactionItemTearOff();

/// @nodoc
mixin _$TransactionItem {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Transaction transaction) transactionFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Transaction transaction)? transactionFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_TransactionFound value) transactionFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_TransactionFound value)? transactionFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Transaction transaction) transactionFound,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Transaction transaction)? transactionFound,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_TransactionFound value) transactionFound,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_TransactionFound value)? transactionFound,
    required TResult orElse(),
  }) {
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
    Object? transaction = freezed,
  }) {
    return _then(_TransactionFound(
      transaction == freezed
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
    ));
  }

  @override
  $TransactionCopyWith<$Res> get transaction {
    return $TransactionCopyWith<$Res>(_value.transaction, (value) {
      return _then(_value.copyWith(transaction: value));
    });
  }
}

/// @nodoc
class _$_TransactionFound
    with DiagnosticableTreeMixin
    implements _TransactionFound {
  const _$_TransactionFound(this.transaction);

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

  @JsonKey(ignore: true)
  @override
  _$TransactionFoundCopyWith<_TransactionFound> get copyWith =>
      __$TransactionFoundCopyWithImpl<_TransactionFound>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(Transaction transaction) transactionFound,
  }) {
    return transactionFound(transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(Transaction transaction)? transactionFound,
    required TResult orElse(),
  }) {
    if (transactionFound != null) {
      return transactionFound(transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_TransactionFound value) transactionFound,
  }) {
    return transactionFound(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_TransactionFound value)? transactionFound,
    required TResult orElse(),
  }) {
    if (transactionFound != null) {
      return transactionFound(this);
    }
    return orElse();
  }
}

abstract class _TransactionFound implements TransactionItem {
  const factory _TransactionFound(Transaction transaction) =
      _$_TransactionFound;

  Transaction get transaction => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TransactionFoundCopyWith<_TransactionFound> get copyWith =>
      throw _privateConstructorUsedError;
}
