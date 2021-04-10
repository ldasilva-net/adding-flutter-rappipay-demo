// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
class _$TransactionTearOff {
  const _$TransactionTearOff();

  _Transaction call(
      {required String title,
      String? description,
      required String amount,
      required String image,
      required String icon,
      required TransactionTag tag,
      required String action,
      @JsonKey(name: 'action_detail') String? actionDetail,
      required String date,
      @JsonKey(name: 'transaction_id') required String transactionId}) {
    return _Transaction(
      title: title,
      description: description,
      amount: amount,
      image: image,
      icon: icon,
      tag: tag,
      action: action,
      actionDetail: actionDetail,
      date: date,
      transactionId: transactionId,
    );
  }

  Transaction fromJson(Map<String, Object> json) {
    return Transaction.fromJson(json);
  }
}

/// @nodoc
const $Transaction = _$TransactionTearOff();

/// @nodoc
mixin _$Transaction {
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  TransactionTag get tag => throw _privateConstructorUsedError;
  String get action => throw _privateConstructorUsedError;
  @JsonKey(name: 'action_detail')
  String? get actionDetail => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_id')
  String get transactionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String? description,
      String amount,
      String image,
      String icon,
      TransactionTag tag,
      String action,
      @JsonKey(name: 'action_detail') String? actionDetail,
      String date,
      @JsonKey(name: 'transaction_id') String transactionId});

  $TransactionTagCopyWith<$Res> get tag;
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res> implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  final Transaction _value;
  // ignore: unused_field
  final $Res Function(Transaction) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? amount = freezed,
    Object? image = freezed,
    Object? icon = freezed,
    Object? tag = freezed,
    Object? action = freezed,
    Object? actionDetail = freezed,
    Object? date = freezed,
    Object? transactionId = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as TransactionTag,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      actionDetail: actionDetail == freezed
          ? _value.actionDetail
          : actionDetail // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $TransactionTagCopyWith<$Res> get tag {
    return $TransactionTagCopyWith<$Res>(_value.tag, (value) {
      return _then(_value.copyWith(tag: value));
    });
  }
}

/// @nodoc
abstract class _$TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$TransactionCopyWith(
          _Transaction value, $Res Function(_Transaction) then) =
      __$TransactionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String? description,
      String amount,
      String image,
      String icon,
      TransactionTag tag,
      String action,
      @JsonKey(name: 'action_detail') String? actionDetail,
      String date,
      @JsonKey(name: 'transaction_id') String transactionId});

  @override
  $TransactionTagCopyWith<$Res> get tag;
}

/// @nodoc
class __$TransactionCopyWithImpl<$Res> extends _$TransactionCopyWithImpl<$Res>
    implements _$TransactionCopyWith<$Res> {
  __$TransactionCopyWithImpl(
      _Transaction _value, $Res Function(_Transaction) _then)
      : super(_value, (v) => _then(v as _Transaction));

  @override
  _Transaction get _value => super._value as _Transaction;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? amount = freezed,
    Object? image = freezed,
    Object? icon = freezed,
    Object? tag = freezed,
    Object? action = freezed,
    Object? actionDetail = freezed,
    Object? date = freezed,
    Object? transactionId = freezed,
  }) {
    return _then(_Transaction(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as TransactionTag,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      actionDetail: actionDetail == freezed
          ? _value.actionDetail
          : actionDetail // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Transaction with DiagnosticableTreeMixin implements _Transaction {
  _$_Transaction(
      {required this.title,
      this.description,
      required this.amount,
      required this.image,
      required this.icon,
      required this.tag,
      required this.action,
      @JsonKey(name: 'action_detail') this.actionDetail,
      required this.date,
      @JsonKey(name: 'transaction_id') required this.transactionId});

  factory _$_Transaction.fromJson(Map<String, dynamic> json) =>
      _$_$_TransactionFromJson(json);

  @override
  final String title;
  @override
  final String? description;
  @override
  final String amount;
  @override
  final String image;
  @override
  final String icon;
  @override
  final TransactionTag tag;
  @override
  final String action;
  @override
  @JsonKey(name: 'action_detail')
  final String? actionDetail;
  @override
  final String date;
  @override
  @JsonKey(name: 'transaction_id')
  final String transactionId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Transaction(title: $title, description: $description, amount: $amount, image: $image, icon: $icon, tag: $tag, action: $action, actionDetail: $actionDetail, date: $date, transactionId: $transactionId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Transaction'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('icon', icon))
      ..add(DiagnosticsProperty('tag', tag))
      ..add(DiagnosticsProperty('action', action))
      ..add(DiagnosticsProperty('actionDetail', actionDetail))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('transactionId', transactionId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Transaction &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)) &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.actionDetail, actionDetail) ||
                const DeepCollectionEquality()
                    .equals(other.actionDetail, actionDetail)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.transactionId, transactionId) ||
                const DeepCollectionEquality()
                    .equals(other.transactionId, transactionId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(tag) ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(actionDetail) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(transactionId);

  @JsonKey(ignore: true)
  @override
  _$TransactionCopyWith<_Transaction> get copyWith =>
      __$TransactionCopyWithImpl<_Transaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransactionToJson(this);
  }
}

abstract class _Transaction implements Transaction {
  factory _Transaction(
          {required String title,
          String? description,
          required String amount,
          required String image,
          required String icon,
          required TransactionTag tag,
          required String action,
          @JsonKey(name: 'action_detail') String? actionDetail,
          required String date,
          @JsonKey(name: 'transaction_id') required String transactionId}) =
      _$_Transaction;

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$_Transaction.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String get amount => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  String get icon => throw _privateConstructorUsedError;
  @override
  TransactionTag get tag => throw _privateConstructorUsedError;
  @override
  String get action => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'action_detail')
  String? get actionDetail => throw _privateConstructorUsedError;
  @override
  String get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'transaction_id')
  String get transactionId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionCopyWith<_Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}
