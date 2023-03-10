import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:models/models.dart';
import 'package:repository/repository.dart';
import 'package:server/services/jwt_service.dart';

Middleware parseAuthentication() => provider<Future<AuthUser>>((context) async {
      final request = context.request;
      final authHeader = request.headers[HttpHeaders.authorizationHeader] ?? '';

      if (authHeader.isEmpty) {
        return const UnauthenticatedUser();
      }

      final token = authHeader.replaceFirst('Bearer ', '');

      final jwtService = context.read<JwtService>();
      final decoded = jwtService.verify(token);

      return decoded.fold(
        FailedAuthentication.new,
        (decodedSuccess) async {
          final userFromJson = User.fromJson(decodedSuccess);

          final user =
              await context.read<UserRepository>().getById(userFromJson.id);

          return user.fold(FailedAuthentication.new, AuthenticatedUser.new);
        },
      );
    });
