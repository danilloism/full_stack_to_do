import 'package:failures/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_models/shared_models.dart';

export 'package:shared_models/shared_models.dart';

part 'user.freezed.dart';

@Freezed(copyWith: false, toStringOverride: false)
class AuthUser with _$AuthUser {
  const AuthUser._();

  const factory AuthUser.authenticated(User user) = AuthenticatedUser;

  const factory AuthUser.unauthenticated() = UnauthenticatedUser;

  const factory AuthUser.failure(Failure failure) = FailedAuthentication;
}
