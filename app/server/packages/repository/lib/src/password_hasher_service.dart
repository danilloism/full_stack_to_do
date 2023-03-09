import 'package:bcrypt/bcrypt.dart';

class PasswordHasherService {
  const PasswordHasherService();

  bool checkPassword(String password, String hashedPassword) {
    return BCrypt.checkpw(password, hashedPassword);
  }

  String hashPassword(String password) {
    return BCrypt.hashpw(password, BCrypt.gensalt());
  }
}
