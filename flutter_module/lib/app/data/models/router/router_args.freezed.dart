// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'router_args.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RouterArgs _$RouterArgsFromJson(Map<String, dynamic> json) {
  return _RouterArgs.fromJson(json);
}

/// @nodoc
class _$RouterArgsTearOff {
  const _$RouterArgsTearOff();

// ignore: unused_element
  _RouterArgs call({String path, bool replace, bool clearStack, String args}) {
    return _RouterArgs(
      path: path,
      replace: replace,
      clearStack: clearStack,
      args: args,
    );
  }

// ignore: unused_element
  RouterArgs fromJson(Map<String, Object> json) {
    return RouterArgs.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RouterArgs = _$RouterArgsTearOff();

/// @nodoc
mixin _$RouterArgs {
  String get path;
  bool get replace;
  bool get clearStack;
  String get args;

  Map<String, dynamic> toJson();
  $RouterArgsCopyWith<RouterArgs> get copyWith;
}

/// @nodoc
abstract class $RouterArgsCopyWith<$Res> {
  factory $RouterArgsCopyWith(
          RouterArgs value, $Res Function(RouterArgs) then) =
      _$RouterArgsCopyWithImpl<$Res>;
  $Res call({String path, bool replace, bool clearStack, String args});
}

/// @nodoc
class _$RouterArgsCopyWithImpl<$Res> implements $RouterArgsCopyWith<$Res> {
  _$RouterArgsCopyWithImpl(this._value, this._then);

  final RouterArgs _value;
  // ignore: unused_field
  final $Res Function(RouterArgs) _then;

  @override
  $Res call({
    Object path = freezed,
    Object replace = freezed,
    Object clearStack = freezed,
    Object args = freezed,
  }) {
    return _then(_value.copyWith(
      path: path == freezed ? _value.path : path as String,
      replace: replace == freezed ? _value.replace : replace as bool,
      clearStack:
          clearStack == freezed ? _value.clearStack : clearStack as bool,
      args: args == freezed ? _value.args : args as String,
    ));
  }
}

/// @nodoc
abstract class _$RouterArgsCopyWith<$Res> implements $RouterArgsCopyWith<$Res> {
  factory _$RouterArgsCopyWith(
          _RouterArgs value, $Res Function(_RouterArgs) then) =
      __$RouterArgsCopyWithImpl<$Res>;
  @override
  $Res call({String path, bool replace, bool clearStack, String args});
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
    Object path = freezed,
    Object replace = freezed,
    Object clearStack = freezed,
    Object args = freezed,
  }) {
    return _then(_RouterArgs(
      path: path == freezed ? _value.path : path as String,
      replace: replace == freezed ? _value.replace : replace as bool,
      clearStack:
          clearStack == freezed ? _value.clearStack : clearStack as bool,
      args: args == freezed ? _value.args : args as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RouterArgs with DiagnosticableTreeMixin implements _RouterArgs {
  _$_RouterArgs({this.path, this.replace, this.clearStack, this.args});

  factory _$_RouterArgs.fromJson(Map<String, dynamic> json) =>
      _$_$_RouterArgsFromJson(json);

  @override
  final String path;
  @override
  final bool replace;
  @override
  final bool clearStack;
  @override
  final String args;

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
      {String path,
      bool replace,
      bool clearStack,
      String args}) = _$_RouterArgs;

  factory _RouterArgs.fromJson(Map<String, dynamic> json) =
      _$_RouterArgs.fromJson;

  @override
  String get path;
  @override
  bool get replace;
  @override
  bool get clearStack;
  @override
  String get args;
  @override
  _$RouterArgsCopyWith<_RouterArgs> get copyWith;
}
