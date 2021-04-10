// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'router_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RouterResult _$RouterResultFromJson(Map<String, dynamic> json) {
  return _RouterResult.fromJson(json);
}

/// @nodoc
class _$RouterResultTearOff {
  const _$RouterResultTearOff();

  _RouterResult call({required String result}) {
    return _RouterResult(
      result: result,
    );
  }

  RouterResult fromJson(Map<String, Object> json) {
    return RouterResult.fromJson(json);
  }
}

/// @nodoc
const $RouterResult = _$RouterResultTearOff();

/// @nodoc
mixin _$RouterResult {
  String get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RouterResultCopyWith<RouterResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouterResultCopyWith<$Res> {
  factory $RouterResultCopyWith(
          RouterResult value, $Res Function(RouterResult) then) =
      _$RouterResultCopyWithImpl<$Res>;
  $Res call({String result});
}

/// @nodoc
class _$RouterResultCopyWithImpl<$Res> implements $RouterResultCopyWith<$Res> {
  _$RouterResultCopyWithImpl(this._value, this._then);

  final RouterResult _value;
  // ignore: unused_field
  final $Res Function(RouterResult) _then;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RouterResultCopyWith<$Res>
    implements $RouterResultCopyWith<$Res> {
  factory _$RouterResultCopyWith(
          _RouterResult value, $Res Function(_RouterResult) then) =
      __$RouterResultCopyWithImpl<$Res>;
  @override
  $Res call({String result});
}

/// @nodoc
class __$RouterResultCopyWithImpl<$Res> extends _$RouterResultCopyWithImpl<$Res>
    implements _$RouterResultCopyWith<$Res> {
  __$RouterResultCopyWithImpl(
      _RouterResult _value, $Res Function(_RouterResult) _then)
      : super(_value, (v) => _then(v as _RouterResult));

  @override
  _RouterResult get _value => super._value as _RouterResult;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_RouterResult(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RouterResult with DiagnosticableTreeMixin implements _RouterResult {
  _$_RouterResult({required this.result});

  factory _$_RouterResult.fromJson(Map<String, dynamic> json) =>
      _$_$_RouterResultFromJson(json);

  @override
  final String result;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouterResult(result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RouterResult'))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RouterResult &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  _$RouterResultCopyWith<_RouterResult> get copyWith =>
      __$RouterResultCopyWithImpl<_RouterResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RouterResultToJson(this);
  }
}

abstract class _RouterResult implements RouterResult {
  factory _RouterResult({required String result}) = _$_RouterResult;

  factory _RouterResult.fromJson(Map<String, dynamic> json) =
      _$_RouterResult.fromJson;

  @override
  String get result => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RouterResultCopyWith<_RouterResult> get copyWith =>
      throw _privateConstructorUsedError;
}
