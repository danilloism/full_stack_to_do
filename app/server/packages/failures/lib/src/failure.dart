// ignore_for_file: invalid_annotation_target

import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:typedefs/typedefs.dart';

part 'failure.g.dart';
part 'failure.freezed.dart';

abstract class Failure {
  String get message;
  dynamic get errors;
  int get statusCode;

  Map<String, dynamic> toJson();
}

@freezed
class NetworkFailure with _$NetworkFailure implements Failure {
  const factory NetworkFailure({
    required String message,
    @JsonKey(ignore: true) required int statusCode,
    @Default([]) List<String> errors,
  }) = _NetworkFailure;
}

@freezed
class RequestFailure with _$RequestFailure implements Failure {
  @Implements<Failure>()
  const factory RequestFailure({
    required String message,
    @JsonKey(ignore: true) @Default(HttpStatus.badRequest) int statusCode,
    @Default(null) dynamic errors,
  }) = _RequestFailure;
}

@freezed
class ServerFailure with _$ServerFailure implements Failure {
  const factory ServerFailure({
    required String message,
    @JsonKey(ignore: true)
    @Default(HttpStatus.internalServerError)
        int statusCode,
    @Default(null) dynamic errors,
  }) = _ServerFailure;
}

@freezed
class ValidationFailure with _$ValidationFailure implements Failure {
  const factory ValidationFailure({
    required String message,
    @JsonKey(ignore: true) @Default(HttpStatus.badRequest) int statusCode,
    @Default({}) ValidationErrors errors,
  }) = _ValidationFailure;
}

@freezed
class NotAllowedFailure with _$NotAllowedFailure implements Failure {
  const factory NotAllowedFailure({
    @Default('👀 Looks like you are lost 🔦') String message,
    @JsonKey(ignore: true) @Default(HttpStatus.methodNotAllowed) int statusCode,
    @Default(null) dynamic errors,
  }) = _NotAllowedFailure;
}
