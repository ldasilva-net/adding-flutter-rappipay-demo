// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'transaction_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TransactionDetail _$TransactionDetailFromJson(Map<String, dynamic> json) {
  return _TransactionDetail.fromJson(json);
}

/// @nodoc
class _$TransactionDetailTearOff {
  const _$TransactionDetailTearOff();

// ignore: unused_element
  _TransactionDetail call({String key, String value}) {
    return _TransactionDetail(
      key: key,
      value: value,
    );
  }

// ignore: unused_element
  TransactionDetail fromJson(Map<String, Object> json) {
    return TransactionDetail.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TransactionDetail = _$TransactionDetailTearOff();

/// @nodoc
mixin _$TransactionDetail {
  String get key;
  String get value;

  Map<String, dynamic> toJson();
  $TransactionDetailCopyWith<TransactionDetail> get copyWith;
}

/// @nodoc
abstract class $TransactionDetailCopyWith<$Res> {
  factory $TransactionDetailCopyWith(
          TransactionDetail value, $Res Function(TransactionDetail) then) =
      _$TransactionDetailCopyWithImpl<$Res>;
  $Res call({String key, String value});
}

/// @nodoc
class _$TransactionDetailCopyWithImpl<$Res>
    implements $TransactionDetailCopyWith<$Res> {
  _$TransactionDetailCopyWithImpl(this._value, this._then);

  final TransactionDetail _value;
  // ignore: unused_field
  final $Res Function(TransactionDetail) _then;

  @override
  $Res call({
    Object key = freezed,
    Object value = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed ? _value.key : key as String,
      value: value == freezed ? _value.value : value as String,
    ));
  }
}

/// @nodoc
abstract class _$TransactionDetailCopyWith<$Res>
    implements $TransactionDetailCopyWith<$Res> {
  factory _$TransactionDetailCopyWith(
          _TransactionDetail value, $Res Function(_TransactionDetail) then) =
      __$TransactionDetailCopyWithImpl<$Res>;
  @override
  $Res call({String key, String value});
}

/// @nodoc
class __$TransactionDetailCopyWithImpl<$Res>
    extends _$TransactionDetailCopyWithImpl<$Res>
    implements _$TransactionDetailCopyWith<$Res> {
  __$TransactionDetailCopyWithImpl(
      _TransactionDetail _value, $Res Function(_TransactionDetail) _then)
      : super(_value, (v) => _then(v as _TransactionDetail));

  @override
  _TransactionDetail get _value => super._value as _TransactionDetail;

  @override
  $Res call({
    Object key = freezed,
    Object value = freezed,
  }) {
    return _then(_TransactionDetail(
      key: key == freezed ? _value.key : key as String,
      value: value == freezed ? _value.value : value as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TransactionDetail
    with DiagnosticableTreeMixin
    implements _TransactionDetail {
  _$_TransactionDetail({this.key, this.value});

  factory _$_TransactionDetail.fromJson(Map<String, dynamic> json) =>
      _$_$_TransactionDetailFromJson(json);

  @override
  final String key;
  @override
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionDetail(key: $key, value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionDetail'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionDetail &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(value);

  @override
  _$TransactionDetailCopyWith<_TransactionDetail> get copyWith =>
      __$TransactionDetailCopyWithImpl<_TransactionDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransactionDetailToJson(this);
  }
}

abstract class _TransactionDetail implements TransactionDetail {
  factory _TransactionDetail({String key, String value}) = _$_TransactionDetail;

  factory _TransactionDetail.fromJson(Map<String, dynamic> json) =
      _$_TransactionDetail.fromJson;

  @override
  String get key;
  @override
  String get value;
  @override
  _$TransactionDetailCopyWith<_TransactionDetail> get copyWith;
}
