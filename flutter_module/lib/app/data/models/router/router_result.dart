import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'router_result.freezed.dart';
part 'router_result.g.dart';

@freezed
abstract class RouterResult with _$RouterResult {
  factory RouterResult({String result}) = _RouterResult;

  factory RouterResult.fromJson(Map<String, dynamic> json) =>
      _$RouterResultFromJson(json);
}
