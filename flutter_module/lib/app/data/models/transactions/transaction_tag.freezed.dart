// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'transaction_tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TransactionTag _$TransactionTagFromJson(Map<String, dynamic> json) {
  return _TransactionTag.fromJson(json);
}

/// @nodoc
class _$TransactionTagTearOff {
  const _$TransactionTagTearOff();

// ignore: unused_element
  _TransactionTag call(
      {@JsonKey(name: 'background_color') String backgroundColor,
      String name,
      @JsonKey(name: 'text_color') String textColor,
      String icon}) {
    return _TransactionTag(
      backgroundColor: backgroundColor,
      name: name,
      textColor: textColor,
      icon: icon,
    );
  }

// ignore: unused_element
  TransactionTag fromJson(Map<String, Object> json) {
    return TransactionTag.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TransactionTag = _$TransactionTagTearOff();

/// @nodoc
mixin _$TransactionTag {
  @JsonKey(name: 'background_color')
  String get backgroundColor;
  String get name;
  @JsonKey(name: 'text_color')
  String get textColor;
  String get icon;

  Map<String, dynamic> toJson();
  $TransactionTagCopyWith<TransactionTag> get copyWith;
}

/// @nodoc
abstract class $TransactionTagCopyWith<$Res> {
  factory $TransactionTagCopyWith(
          TransactionTag value, $Res Function(TransactionTag) then) =
      _$TransactionTagCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'background_color') String backgroundColor,
      String name,
      @JsonKey(name: 'text_color') String textColor,
      String icon});
}

/// @nodoc
class _$TransactionTagCopyWithImpl<$Res>
    implements $TransactionTagCopyWith<$Res> {
  _$TransactionTagCopyWithImpl(this._value, this._then);

  final TransactionTag _value;
  // ignore: unused_field
  final $Res Function(TransactionTag) _then;

  @override
  $Res call({
    Object backgroundColor = freezed,
    Object name = freezed,
    Object textColor = freezed,
    Object icon = freezed,
  }) {
    return _then(_value.copyWith(
      backgroundColor: backgroundColor == freezed
          ? _value.backgroundColor
          : backgroundColor as String,
      name: name == freezed ? _value.name : name as String,
      textColor: textColor == freezed ? _value.textColor : textColor as String,
      icon: icon == freezed ? _value.icon : icon as String,
    ));
  }
}

/// @nodoc
abstract class _$TransactionTagCopyWith<$Res>
    implements $TransactionTagCopyWith<$Res> {
  factory _$TransactionTagCopyWith(
          _TransactionTag value, $Res Function(_TransactionTag) then) =
      __$TransactionTagCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'background_color') String backgroundColor,
      String name,
      @JsonKey(name: 'text_color') String textColor,
      String icon});
}

/// @nodoc
class __$TransactionTagCopyWithImpl<$Res>
    extends _$TransactionTagCopyWithImpl<$Res>
    implements _$TransactionTagCopyWith<$Res> {
  __$TransactionTagCopyWithImpl(
      _TransactionTag _value, $Res Function(_TransactionTag) _then)
      : super(_value, (v) => _then(v as _TransactionTag));

  @override
  _TransactionTag get _value => super._value as _TransactionTag;

  @override
  $Res call({
    Object backgroundColor = freezed,
    Object name = freezed,
    Object textColor = freezed,
    Object icon = freezed,
  }) {
    return _then(_TransactionTag(
      backgroundColor: backgroundColor == freezed
          ? _value.backgroundColor
          : backgroundColor as String,
      name: name == freezed ? _value.name : name as String,
      textColor: textColor == freezed ? _value.textColor : textColor as String,
      icon: icon == freezed ? _value.icon : icon as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TransactionTag
    with DiagnosticableTreeMixin
    implements _TransactionTag {
  _$_TransactionTag(
      {@JsonKey(name: 'background_color') this.backgroundColor,
      this.name,
      @JsonKey(name: 'text_color') this.textColor,
      this.icon});

  factory _$_TransactionTag.fromJson(Map<String, dynamic> json) =>
      _$_$_TransactionTagFromJson(json);

  @override
  @JsonKey(name: 'background_color')
  final String backgroundColor;
  @override
  final String name;
  @override
  @JsonKey(name: 'text_color')
  final String textColor;
  @override
  final String icon;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransactionTag(backgroundColor: $backgroundColor, name: $name, textColor: $textColor, icon: $icon)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransactionTag'))
      ..add(DiagnosticsProperty('backgroundColor', backgroundColor))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('textColor', textColor))
      ..add(DiagnosticsProperty('icon', icon));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionTag &&
            (identical(other.backgroundColor, backgroundColor) ||
                const DeepCollectionEquality()
                    .equals(other.backgroundColor, backgroundColor)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.textColor, textColor) ||
                const DeepCollectionEquality()
                    .equals(other.textColor, textColor)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(backgroundColor) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(textColor) ^
      const DeepCollectionEquality().hash(icon);

  @override
  _$TransactionTagCopyWith<_TransactionTag> get copyWith =>
      __$TransactionTagCopyWithImpl<_TransactionTag>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransactionTagToJson(this);
  }
}

abstract class _TransactionTag implements TransactionTag {
  factory _TransactionTag(
      {@JsonKey(name: 'background_color') String backgroundColor,
      String name,
      @JsonKey(name: 'text_color') String textColor,
      String icon}) = _$_TransactionTag;

  factory _TransactionTag.fromJson(Map<String, dynamic> json) =
      _$_TransactionTag.fromJson;

  @override
  @JsonKey(name: 'background_color')
  String get backgroundColor;
  @override
  String get name;
  @override
  @JsonKey(name: 'text_color')
  String get textColor;
  @override
  String get icon;
  @override
  _$TransactionTagCopyWith<_TransactionTag> get copyWith;
}
