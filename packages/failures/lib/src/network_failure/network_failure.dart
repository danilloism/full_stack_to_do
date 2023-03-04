import 'dart:html';

import 'package:failures/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:typedefs/typedefs.dart';

part 'network_failure.freezed.dart';
part 'network_failure.g.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
class NetworkFailure extends Failure with _$NetworkFailure {
  ///
  const factory NetworkFailure({
    required String message,
    required int statusCode,
    @Default([]) List<String> errors,
  }) = _NetworkFailure;

  const factory NetworkFailure.request({
    required String message,
    @Default(HttpStatus.badRequest) int statusCode,
  }) = RequestFailure;

  const factory NetworkFailure.server({
    required String message,
    @Default(HttpStatus.internalServerError) int statusCode,
  }) = ServerFailure;

  const factory NetworkFailure.validation({
    required String message,
    @Default(HttpStatus.badRequest) int statusCode,
    @Default({}) ValidationErrors errors,
  }) = ValidationFailure;

  factory NetworkFailure.fromJson(Map<String, dynamic> json) =>
      _$NetworkFailureFromJson(json);
}
