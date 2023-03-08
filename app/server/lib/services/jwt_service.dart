import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:server/core/environment.dart';

class JwtService {
  const JwtService(this._env);

  final Environment _env;

  String sign(Map<String, dynamic> payload) {
    final secret = _env.jwtSecret;
    final jwt = JWT(payload);
    return jwt.sign(SecretKey(secret));
  }

  Map<String, dynamic> verify(String token) {
    final secret = _env.jwtSecret;
    final jwt = JWT.verify(token, SecretKey(secret));
    return jwt.payload as Map<String, dynamic>;
  }
}
