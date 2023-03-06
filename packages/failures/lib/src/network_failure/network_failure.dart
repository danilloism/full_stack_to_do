import 'dart:io';

import 'package:failures/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:typedefs/typedefs.dart';

part 'network_failure.freezed.dart';
part 'network_failure.g.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
class NetworkFailure with _$NetworkFailure implements Failure {
  ///
  const factory NetworkFailure({
    required String message,
    required int statusCode,
    @Default({}) NetworkErrors errors,
  }) = _NetworkFailure;

  const factory NetworkFailure.request({
    required String message,
    @Default(HttpStatus.badRequest) int statusCode,
    @Default({}) NetworkErrors errors,
  }) = RequestFailure;

  const factory NetworkFailure.server({
    required String message,
    @Default(HttpStatus.internalServerError) int statusCode,
    @Default({}) NetworkErrors errors,
  }) = ServerFailure;

  const factory NetworkFailure.validation({
    required String message,
    @Default(HttpStatus.badRequest) int statusCode,
    @Default({}) NetworkErrors errors,
  }) = ValidationFailure;

  factory NetworkFailure.fromJson(Map<String, dynamic> json) =>
      _$NetworkFailureFromJson(json);
}
