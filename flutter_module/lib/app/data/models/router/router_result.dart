import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'router_result.freezed.dart';
part 'router_result.g.dart';

@freezed
class RouterResult with _$RouterResult {
  factory RouterResult({required String result}) = _RouterResult;

  factory RouterResult.fromJson(Map<String, dynamic> json) =>
      _$RouterResultFromJson(json);
}
