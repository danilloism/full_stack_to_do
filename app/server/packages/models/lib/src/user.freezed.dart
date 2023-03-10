// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthUser {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticatedUser value) authenticated,
    required TResult Function(UnauthenticatedUser value) unauthenticated,
    required TResult Function(FailedAuthentication value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticatedUser value)? authenticated,
    TResult? Function(UnauthenticatedUser value)? unauthenticated,
    TResult? Function(FailedAuthentication value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticatedUser value)? authenticated,
    TResult Function(UnauthenticatedUser value)? unauthenticated,
    TResult Function(FailedAuthentication value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$AuthenticatedUser extends AuthenticatedUser {
  const _$AuthenticatedUser(this.user) : super._();

  @override
  final User user;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedUser &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(Failure failure) failure,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(Failure failure)? failure,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticatedUser value) authenticated,
    required TResult Function(UnauthenticatedUser value) unauthenticated,
    required TResult Function(FailedAuthentication value) failure,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticatedUser value)? authenticated,
    TResult? Function(UnauthenticatedUser value)? unauthenticated,
    TResult? Function(FailedAuthentication value)? failure,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticatedUser value)? authenticated,
    TResult Function(UnauthenticatedUser value)? unauthenticated,
    TResult Function(FailedAuthentication value)? failure,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AuthenticatedUser extends AuthUser {
  const factory AuthenticatedUser(final User user) = _$AuthenticatedUser;
  const AuthenticatedUser._() : super._();

  User get user;
}

/// @nodoc

class _$UnauthenticatedUser extends UnauthenticatedUser {
  const _$UnauthenticatedUser() : super._();

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthenticatedUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(Failure failure) failure,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(Failure failure)? failure,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticatedUser value) authenticated,
    required TResult Function(UnauthenticatedUser value) unauthenticated,
    required TResult Function(FailedAuthentication value) failure,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticatedUser value)? authenticated,
    TResult? Function(UnauthenticatedUser value)? unauthenticated,
    TResult? Function(FailedAuthentication value)? failure,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticatedUser value)? authenticated,
    TResult Function(UnauthenticatedUser value)? unauthenticated,
    TResult Function(FailedAuthentication value)? failure,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class UnauthenticatedUser extends AuthUser {
  const factory UnauthenticatedUser() = _$UnauthenticatedUser;
  const UnauthenticatedUser._() : super._();
}

/// @nodoc

class _$FailedAuthentication extends FailedAuthentication {
  const _$FailedAuthentication(this.failure) : super._();

  @override
  final Failure failure;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedAuthentication &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticatedUser value) authenticated,
    required TResult Function(UnauthenticatedUser value) unauthenticated,
    required TResult Function(FailedAuthentication value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticatedUser value)? authenticated,
    TResult? Function(UnauthenticatedUser value)? unauthenticated,
    TResult? Function(FailedAuthentication value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticatedUser value)? authenticated,
    TResult Function(UnauthenticatedUser value)? unauthenticated,
    TResult Function(FailedAuthentication value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class FailedAuthentication extends AuthUser {
  const factory FailedAuthentication(final Failure failure) =
      _$FailedAuthentication;
  const FailedAuthentication._() : super._();

  Failure get failure;
}
