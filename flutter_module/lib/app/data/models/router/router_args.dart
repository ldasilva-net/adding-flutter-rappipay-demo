import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'router_args.freezed.dart';
part 'router_args.g.dart';

@freezed
abstract class RouterArgs with _$RouterArgs {
  factory RouterArgs({
    String path,
    bool replace,
    bool clearStack,
    String args,
  }) = _RouterArgs;

  factory RouterArgs.fromJson(Map<String, dynamic> json) =>
      _$RouterArgsFromJson(json);
}
