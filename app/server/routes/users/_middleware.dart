import 'package:dart_frog/dart_frog.dart';
import 'package:data_source/data_source.dart';
import 'package:repository/repository.dart';
import 'package:server/controllers/user_controller.dart';
import 'package:server/services/jwt_service.dart';

Handler middleware(Handler handler) => handler.use(
      provider<UserController>(
        (context) => UserController(
          UserRepositoryImpl(
            UserDataSourceImpl(context.read()),
            const PasswordHasherService(),
          ),
          JwtService(context.read()),
        ),
      ),
    );
