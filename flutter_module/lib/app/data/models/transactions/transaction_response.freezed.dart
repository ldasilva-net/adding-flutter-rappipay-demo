// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'transaction_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TransactionResponse _$TransactionResponseFromJson(Map<String, dynamic> json) {
  return _TransactionsResponse.fromJson(json);
}

/// @nodoc
class _$TransactionResponseTearOff {
  const _$TransactionResponseTearOff();

// ignore: unused_element
  _TransactionsResponse call(
      {@JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'content') List<Transaction> transactions}) {
    return _TransactionsResponse(
      totalPages: totalPages,
      transactions: transactions,
    );
  }

// ignore: unused_element
  TransactionResponse fromJson(Map<String, Object> json) {
    return TransactionResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TransactionResponse = _$TransactionResponseTearOff();

/// @nodoc
mixin _$TransactionResponse {
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @JsonKey(name: 'content')
  List<Transaction> get transactions;

  Map<String, dynamic> toJson();
  $TransactionResponseCopyWith<TransactionResponse> get copyWith;
}

/// @nodoc
abstract class $TransactionResponseCopyWith<$Res> {
  factory $TransactionResponseCopyWith(
          TransactionResponse value, $Res Function(TransactionResponse) then) =
      _$TransactionResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'content') List<Transaction> transactions});
}

/// @nodoc
class _$TransactionResponseCopyWithImpl<$Res>
    implements $TransactionResponseCopyWith<$Res> {
  _$TransactionResponseCopyWithImpl(this._value, this._then);

  final TransactionResponse _value;
  // ignore: unused_field
  final $Res Function(TransactionResponse) _then;

  @override
  $Res call({
    Object totalPages = freezed,
    Object transactions = freezed,
  }) {
    return _then(_value.copyWith(
      totalPages: totalPages == freezed ? _value.totalPages : totalPages as int,
      transactions: transactions == freezed
          ? _value.transactions
          : transactions as List<Transaction>,
    ));
  }
}

/// @nodoc
abstract class _$TransactionsResponseCopyWith<$Res>
    implements $TransactionResponseCopyWith<$Res> {
  factory _$TransactionsResponseCopyWith(_TransactionsResponse value,
          $Res Function(_TransactionsResponse) then) =
      __$TransactionsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'content') List<Transaction> transactions});
}

/// @nodoc
class __$TransactionsResponseCopyWithImpl<$Res>
    extends _$TransactionResponseCopyWithImpl<$Res>
    implements _$TransactionsResponseCopyWith<$Res> {
  __$TransactionsResponseCopyWithImpl(
      _TransactionsResponse _value, $Res Function(_TransactionsResponse) _then)
      : super(_value, (v) => _then(v as _TransactionsResponse));

  @override
  _TransactionsResponse get _value => super._value as _TransactionsResponse;

  @override
  $Res call({
    Object totalPages = freezed,
    Object transactions = freezed,
  }) {
    return _then(_TransactionsResponse(
      totalPages: totalPages == freezed ? _value.totalPages : totalPages as int,
      transactions: transactions == freezed
          ? _value.transactions
          : transactions as List<Transaction>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TransactionsResponse
    with DiagnosticableTreeMixin
    implements _TransactionsResponse {
  _$_TransactionsResponse(
      {@JsonKey(name: 'total_pages') this.totalPages,
      @JsonKey(name: 'content') this.transactions});

  factory _$_TransactionsResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_TransactionsResponseFromJson(json);

  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @override
  @JsonKey(name: 'content')
  final List<Transaction> transactions;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionResponse(totalPages: $totalPages, transactions: $transactions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionResponse'))
      ..add(DiagnosticsProperty('totalPages', totalPages))
      ..add(DiagnosticsProperty('transactions', transactions));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionsResponse &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.transactions, transactions) ||
                const DeepCollectionEquality()
                    .equals(other.transactions, transactions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(transactions);

  @override
  _$TransactionsResponseCopyWith<_TransactionsResponse> get copyWith =>
      __$TransactionsResponseCopyWithImpl<_TransactionsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransactionsResponseToJson(this);
  }
}

abstract class _TransactionsResponse implements TransactionResponse {
  factory _TransactionsResponse(
          {@JsonKey(name: 'total_pages') int totalPages,
          @JsonKey(name: 'content') List<Transaction> transactions}) =
      _$_TransactionsResponse;

  factory _TransactionsResponse.fromJson(Map<String, dynamic> json) =
      _$_TransactionsResponse.fromJson;

  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  @JsonKey(name: 'content')
  List<Transaction> get transactions;
  @override
  _$TransactionsResponseCopyWith<_TransactionsResponse> get copyWith;
}
