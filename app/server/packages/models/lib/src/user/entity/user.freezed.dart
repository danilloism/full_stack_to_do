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

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @UserIdConverter()
  Uuid get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@UserIdConverter() Uuid id,
      String email,
      String name,
      @DateTimeConverter() DateTime createdAt,
      @JsonKey(includeToJson: false) String password});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? name = null,
    Object? createdAt = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Uuid,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@UserIdConverter() Uuid id,
      String email,
      String name,
      @DateTimeConverter() DateTime createdAt,
      @JsonKey(includeToJson: false) String password});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? name = null,
    Object? createdAt = null,
    Object? password = null,
  }) {
    return _then(_$_User(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Uuid,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {@UserIdConverter() required this.id,
      required this.email,
      required this.name,
      @DateTimeConverter() required this.createdAt,
      @JsonKey(includeToJson: false) this.password = ''});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  @UserIdConverter()
  final Uuid id;
  @override
  final String email;
  @override
  final String name;
  @override
  @DateTimeConverter()
  final DateTime createdAt;
  @override
  @JsonKey(includeToJson: false)
  final String password;

  @override
  String toString() {
    return 'User(id: $id, email: $email, name: $name, createdAt: $createdAt, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, email, name, createdAt, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {@UserIdConverter() required final Uuid id,
      required final String email,
      required final String name,
      @DateTimeConverter() required final DateTime createdAt,
      @JsonKey(includeToJson: false) final String password}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  @UserIdConverter()
  Uuid get id;
  @override
  String get email;
  @override
  String get name;
  @override
  @DateTimeConverter()
  DateTime get createdAt;
  @override
  @JsonKey(includeToJson: false)
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}

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
abstract class $AuthUserCopyWith<$Res> {
  factory $AuthUserCopyWith(AuthUser value, $Res Function(AuthUser) then) =
      _$AuthUserCopyWithImpl<$Res, AuthUser>;
}

/// @nodoc
class _$AuthUserCopyWithImpl<$Res, $Val extends AuthUser>
    implements $AuthUserCopyWith<$Res> {
  _$AuthUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthenticatedUserCopyWith<$Res> {
  factory _$$AuthenticatedUserCopyWith(
          _$AuthenticatedUser value, $Res Function(_$AuthenticatedUser) then) =
      __$$AuthenticatedUserCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AuthenticatedUserCopyWithImpl<$Res>
    extends _$AuthUserCopyWithImpl<$Res, _$AuthenticatedUser>
    implements _$$AuthenticatedUserCopyWith<$Res> {
  __$$AuthenticatedUserCopyWithImpl(
      _$AuthenticatedUser _value, $Res Function(_$AuthenticatedUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuthenticatedUser(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$AuthenticatedUser extends AuthenticatedUser {
  const _$AuthenticatedUser(this.user) : super._();

  @override
  final User user;

  @override
  String toString() {
    return 'AuthUser.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedUser &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedUserCopyWith<_$AuthenticatedUser> get copyWith =>
      __$$AuthenticatedUserCopyWithImpl<_$AuthenticatedUser>(this, _$identity);

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
  @JsonKey(ignore: true)
  _$$AuthenticatedUserCopyWith<_$AuthenticatedUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthenticatedUserCopyWith<$Res> {
  factory _$$UnauthenticatedUserCopyWith(_$UnauthenticatedUser value,
          $Res Function(_$UnauthenticatedUser) then) =
      __$$UnauthenticatedUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedUserCopyWithImpl<$Res>
    extends _$AuthUserCopyWithImpl<$Res, _$UnauthenticatedUser>
    implements _$$UnauthenticatedUserCopyWith<$Res> {
  __$$UnauthenticatedUserCopyWithImpl(
      _$UnauthenticatedUser _value, $Res Function(_$UnauthenticatedUser) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnauthenticatedUser extends UnauthenticatedUser {
  const _$UnauthenticatedUser() : super._();

  @override
  String toString() {
    return 'AuthUser.unauthenticated()';
  }

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
abstract class _$$FailedAuthenticationCopyWith<$Res> {
  factory _$$FailedAuthenticationCopyWith(_$FailedAuthentication value,
          $Res Function(_$FailedAuthentication) then) =
      __$$FailedAuthenticationCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$FailedAuthenticationCopyWithImpl<$Res>
    extends _$AuthUserCopyWithImpl<$Res, _$FailedAuthentication>
    implements _$$FailedAuthenticationCopyWith<$Res> {
  __$$FailedAuthenticationCopyWithImpl(_$FailedAuthentication _value,
      $Res Function(_$FailedAuthentication) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FailedAuthentication(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$FailedAuthentication extends FailedAuthentication {
  const _$FailedAuthentication(this.failure) : super._();

  @override
  final Failure failure;

  @override
  String toString() {
    return 'AuthUser.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedAuthentication &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedAuthenticationCopyWith<_$FailedAuthentication> get copyWith =>
      __$$FailedAuthenticationCopyWithImpl<_$FailedAuthentication>(
          this, _$identity);

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
  @JsonKey(ignore: true)
  _$$FailedAuthenticationCopyWith<_$FailedAuthentication> get copyWith =>
      throw _privateConstructorUsedError;
}
