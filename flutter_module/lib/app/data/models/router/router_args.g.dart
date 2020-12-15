// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router_args.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RouterArgs _$_$_RouterArgsFromJson(Map<String, dynamic> json) {
  return _$_RouterArgs(
    path: json['path'] as String,
    replace: json['replace'] as bool,
    clearStack: json['clearStack'] as bool,
    args: json['args'] as String,
  );
}

Map<String, dynamic> _$_$_RouterArgsToJson(_$_RouterArgs instance) =>
    <String, dynamic>{
      'path': instance.path,
      'replace': instance.replace,
      'clearStack': instance.clearStack,
      'args': instance.args,
    };
