// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'transaction_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionResponse _$TransactionResponseFromJson(Map<String, dynamic> json) {
  return _TransactionsResponse.fromJson(json);
}

/// @nodoc
class _$TransactionResponseTearOff {
  const _$TransactionResponseTearOff();

  _TransactionsResponse call(
      {@JsonKey(name: 'total_pages') required int totalPages,
      @JsonKey(name: 'content') required List<Transaction> transactions}) {
    return _TransactionsResponse(
      totalPages: totalPages,
      transactions: transactions,
    );
  }

  TransactionResponse fromJson(Map<String, Object> json) {
    return TransactionResponse.fromJson(json);
  }
}

/// @nodoc
const $TransactionResponse = _$TransactionResponseTearOff();

/// @nodoc
mixin _$TransactionResponse {
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  List<Transaction> get transactions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionResponseCopyWith<TransactionResponse> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? totalPages = freezed,
    Object? transactions = freezed,
  }) {
    return _then(_value.copyWith(
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      transactions: transactions == freezed
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
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
    Object? totalPages = freezed,
    Object? transactions = freezed,
  }) {
    return _then(_TransactionsResponse(
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      transactions: transactions == freezed
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TransactionsResponse
    with DiagnosticableTreeMixin
    implements _TransactionsResponse {
  _$_TransactionsResponse(
      {@JsonKey(name: 'total_pages') required this.totalPages,
      @JsonKey(name: 'content') required this.transactions});

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

  @JsonKey(ignore: true)
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
          {@JsonKey(name: 'total_pages') required int totalPages,
          @JsonKey(name: 'content') required List<Transaction> transactions}) =
      _$_TransactionsResponse;

  factory _TransactionsResponse.fromJson(Map<String, dynamic> json) =
      _$_TransactionsResponse.fromJson;

  @override
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'content')
  List<Transaction> get transactions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionsResponseCopyWith<_TransactionsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
