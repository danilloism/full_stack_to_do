import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:either_dart/either.dart';
import 'package:failures/failures.dart';
import 'package:server/core/environment.dart';

class JwtService {
  const JwtService(this._env);

  final Environment _env;

  String sign(Map<String, dynamic> payload) {
    final secret = _env.jwtSecret;
    final jwt = JWT(payload);
    return jwt.sign(SecretKey(secret), expiresIn: const Duration(days: 7));
  }

  Either<Failure, Map<String, dynamic>> verify(String token) {
    try {
      final secret = _env.jwtSecret;
      final jwt = JWT.verify(token, SecretKey(secret));
      return Right(jwt.payload as Map<String, dynamic>);
      // ignore: avoid_catching_errors
    } on JWTError catch (e) {
      return Left(
        AuthFailure(
          message: e.message,
        ),
      );
    }
  }
}
