import 'package:dart_frog/dart_frog.dart';

import 'package:server/middlewares/parse_authentication_middleware.dart';

Handler middleware(Handler handler) =>
    handler.use(parseAuthentication()).use(requestLogger());
