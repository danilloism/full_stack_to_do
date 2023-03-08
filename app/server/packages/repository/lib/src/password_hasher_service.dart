import 'package:bcrypt/bcrypt.dart';

abstract class PasswordHasherService {
  String hashPassword(String password);

  bool checkPassword(String password, String hashedPassword);
}

class BCryptService implements PasswordHasherService {
  const BCryptService();

  @override
  bool checkPassword(String password, String hashedPassword) {
    return BCrypt.checkpw(password, hashedPassword);
  }

  @override
  String hashPassword(String password) {
    return BCrypt.hashpw(password, BCrypt.gensalt());
  }
}
