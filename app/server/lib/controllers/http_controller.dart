import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:either_dart/either.dart';
import 'package:exceptions/exceptions.dart';
import 'package:failures/failures.dart';
import 'package:server/request_handlers/unimplemented_request_handler.dart';

abstract class HttpController {
  FutureOr<Response> getAll(Request req) => unimplementedRequestHandler();
  FutureOr<Response> getOne(Request req, String id) =>
      unimplementedRequestHandler();
  FutureOr<Response> create(Request req) => unimplementedRequestHandler();
  FutureOr<Response> update(Request req, String id) =>
      unimplementedRequestHandler();
  FutureOr<Response> remove(Request req, String id) =>
      unimplementedRequestHandler();

  Future<Either<Failure, Map<String, dynamic>>> parseJson(
    Request req,
  ) async {
    try {
      final body = await req.body();

      if (body.isEmpty) {
        throw const BadRequestException(
          message: 'Invalid body',
          errors: {
            'body': ['must not me empty']
          },
        );
      }

      late final Map<String, dynamic> json;

      try {
        json = jsonDecode(body) as Map<String, dynamic>;

        return Right(json);
      } catch (_) {
        throw const BadRequestException(
          message: 'Invalid body',
          errors: {
            'body': ['body structury is not valid']
          },
        );
      }
    } on BadRequestException catch (e) {
      return Left(ValidationFailure(message: e.message, errors: e.errors));
    }
  }

  Response mapFailureToResponse(Failure failure) => Response.json(
        body: failure.toJson(),
        statusCode: failure.statusCode,
      );
}
