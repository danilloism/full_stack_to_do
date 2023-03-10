import 'package:dart_frog/dart_frog.dart';
import 'package:server/controllers/user_controller.dart';

Handler middleware(Handler handler) => handler.use(
      provider<UserController>(
        (context) => UserController(
          context.read(),
          context.read(),
        ),
      ),
    );
