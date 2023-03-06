import 'dart:async';
import 'dart:convert';

import 'package:dart_frog/dart_frog.dart';
import 'package:either_dart/either.dart';
import 'package:exceptions/exceptions.dart';
import 'package:failures/failures.dart';

abstract class HttpController {
  FutureOr<Response> getAll(Request req);
  FutureOr<Response> getOne(Request req, String id);
  FutureOr<Response> create(Request req);
  FutureOr<Response> update(Request req, String id);
  FutureOr<Response> remove(Request req, String id);

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
        body: {
          'message': failure.message,
          'errors': failure.errors,
        },
        statusCode: failure.statusCode,
      );
}
