// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'router_args.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RouterArgs _$RouterArgsFromJson(Map<String, dynamic> json) {
  return _RouterArgs.fromJson(json);
}

/// @nodoc
class _$RouterArgsTearOff {
  const _$RouterArgsTearOff();

  _RouterArgs call(
      {required String path,
      bool replace = false,
      bool clearStack = false,
      String? args}) {
    return _RouterArgs(
      path: path,
      replace: replace,
      clearStack: clearStack,
      args: args,
    );
  }

  RouterArgs fromJson(Map<String, Object> json) {
    return RouterArgs.fromJson(json);
  }
}

/// @nodoc
const $RouterArgs = _$RouterArgsTearOff();

/// @nodoc
mixin _$RouterArgs {
  String get path => throw _privateConstructorUsedError;
  bool get replace => throw _privateConstructorUsedError;
  bool get clearStack => throw _privateConstructorUsedError;
  String? get args => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RouterArgsCopyWith<RouterArgs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouterArgsCopyWith<$Res> {
  factory $RouterArgsCopyWith(
          RouterArgs value, $Res Function(RouterArgs) then) =
      _$RouterArgsCopyWithImpl<$Res>;
  $Res call({String path, bool replace, bool clearStack, String? args});
}

/// @nodoc
class _$RouterArgsCopyWithImpl<$Res> implements $RouterArgsCopyWith<$Res> {
  _$RouterArgsCopyWithImpl(this._value, this._then);

  final RouterArgs _value;
  // ignore: unused_field
  final $Res Function(RouterArgs) _then;

  @override
  $Res call({
    Object? path = freezed,
    Object? replace = freezed,
    Object? clearStack = freezed,
    Object? args = freezed,
  }) {
    return _then(_value.copyWith(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      replace: replace == freezed
          ? _value.replace
          : replace // ignore: cast_nullable_to_non_nullable
              as bool,
      clearStack: clearStack == freezed
          ? _value.clearStack
          : clearStack // ignore: cast_nullable_to_non_nullable
              as bool,
      args: args == freezed
          ? _value.args
          : args // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$RouterArgsCopyWith<$Res> implements $RouterArgsCopyWith<$Res> {
  factory _$RouterArgsCopyWith(
          _RouterArgs value, $Res Function(_RouterArgs) then) =
      __$RouterArgsCopyWithImpl<$Res>;
  @override
  $Res call({String path, bool replace, bool clearStack, String? args});
}

/// @nodoc
class __$RouterArgsCopyWithImpl<$Res> extends _$RouterArgsCopyWithImpl<$Res>
    implements _$RouterArgsCopyWith<$Res> {
  __$RouterArgsCopyWithImpl(
      _RouterArgs _value, $Res Function(_RouterArgs) _then)
      : super(_value, (v) => _then(v as _RouterArgs));

  @override
  _RouterArgs get _value => super._value as _RouterArgs;

  @override
  $Res call({
    Object? path = freezed,
    Object? replace = freezed,
    Object? clearStack = freezed,
    Object? args = freezed,
  }) {
    return _then(_RouterArgs(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      replace: replace == freezed
          ? _value.replace
          : replace // ignore: cast_nullable_to_non_nullable
              as bool,
      clearStack: clearStack == freezed
          ? _value.clearStack
          : clearStack // ignore: cast_nullable_to_non_nullable
              as bool,
      args: args == freezed
          ? _value.args
          : args // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RouterArgs with DiagnosticableTreeMixin implements _RouterArgs {
  _$_RouterArgs(
      {required this.path,
      this.replace = false,
      this.clearStack = false,
      this.args});

  factory _$_RouterArgs.fromJson(Map<String, dynamic> json) =>
      _$_$_RouterArgsFromJson(json);

  @override
  final String path;
  @JsonKey(defaultValue: false)
  @override
  final bool replace;
  @JsonKey(defaultValue: false)
  @override
  final bool clearStack;
  @override
  final String? args;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouterArgs(path: $path, replace: $replace, clearStack: $clearStack, args: $args)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RouterArgs'))
      ..add(DiagnosticsProperty('path', path))
      ..add(DiagnosticsProperty('replace', replace))
      ..add(DiagnosticsProperty('clearStack', clearStack))
      ..add(DiagnosticsProperty('args', args));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RouterArgs &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.replace, replace) ||
                const DeepCollectionEquality()
                    .equals(other.replace, replace)) &&
            (identical(other.clearStack, clearStack) ||
                const DeepCollectionEquality()
                    .equals(other.clearStack, clearStack)) &&
            (identical(other.args, args) ||
                const DeepCollectionEquality().equals(other.args, args)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(replace) ^
      const DeepCollectionEquality().hash(clearStack) ^
      const DeepCollectionEquality().hash(args);

  @JsonKey(ignore: true)
  @override
  _$RouterArgsCopyWith<_RouterArgs> get copyWith =>
      __$RouterArgsCopyWithImpl<_RouterArgs>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RouterArgsToJson(this);
  }
}

abstract class _RouterArgs implements RouterArgs {
  factory _RouterArgs(
      {required String path,
      bool replace,
      bool clearStack,
      String? args}) = _$_RouterArgs;

  factory _RouterArgs.fromJson(Map<String, dynamic> json) =
      _$_RouterArgs.fromJson;

  @override
  String get path => throw _privateConstructorUsedError;
  @override
  bool get replace => throw _privateConstructorUsedError;
  @override
  bool get clearStack => throw _privateConstructorUsedError;
  @override
  String? get args => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RouterArgsCopyWith<_RouterArgs> get copyWith =>
      throw _privateConstructorUsedError;
}
