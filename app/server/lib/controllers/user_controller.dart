import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:models/models.dart';
import 'package:repository/repository.dart';
import 'dart:async';

import 'package:server/controllers/http_controller.dart';
import 'package:server/services/jwt_service.dart';

class UserController extends HttpController {
  UserController(this._repo, this._jwtService);

  final UserRepository _repo;
  final JwtService _jwtService;

  @override
  FutureOr<Response> create(Request req) async {
    final parsedBody = await parseJson(req);

    if (parsedBody.isLeft) {
      return mapFailureToResponse(parsedBody.left);
    }

    final json = parsedBody.right;

    final dto = CreateUserDto.fromJson(json);

    return dto.maybeMap(
      invalid: (value) => mapFailureToResponse(value.failure),
      orElse: () async {
        final res = await _repo.create(dto);

        return res.fold(
          mapFailureToResponse,
          (success) => _signAndSendToken(success, HttpStatus.created),
        );
      },
    );
  }

  FutureOr<Response> login(Request req) async {
    final parsedBody = await parseJson(req);

    if (parsedBody.isLeft) {
      return mapFailureToResponse(parsedBody.left);
    }

    final json = parsedBody.right;
    final dto = LoginUserDto.fromJson(json);

    return dto.maybeMap(
      invalid: (value) => mapFailureToResponse(value.failure),
      orElse: () async {
        final res = await _repo.login(dto);

        return res.fold(mapFailureToResponse, _signAndSendToken);
      },
    );
  }

  Response _signAndSendToken(User user, [int? httpStatus]) {
    final token = _jwtService.sign(user.toJson());
    return Response.json(
      body: {
        'token': token,
        'user': user.toJson()..remove('password'),
      },
      statusCode: httpStatus ?? HttpStatus.ok,
    );
  }
}
