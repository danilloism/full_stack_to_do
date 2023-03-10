// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginUserDto {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) pure,
    required TResult Function(String email, String password) valid,
    required TResult Function(Failure failure, String email, String password)
        invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? pure,
    TResult? Function(String email, String password)? valid,
    TResult? Function(Failure failure, String email, String password)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? pure,
    TResult Function(String email, String password)? valid,
    TResult Function(Failure failure, String email, String password)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginUserDto value) pure,
    required TResult Function(_ValidLoginUserDto value) valid,
    required TResult Function(_InvalidLoginUserDto value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginUserDto value)? pure,
    TResult? Function(_ValidLoginUserDto value)? valid,
    TResult? Function(_InvalidLoginUserDto value)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginUserDto value)? pure,
    TResult Function(_ValidLoginUserDto value)? valid,
    TResult Function(_InvalidLoginUserDto value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginUserDtoCopyWith<LoginUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginUserDtoCopyWith<$Res> {
  factory $LoginUserDtoCopyWith(
          LoginUserDto value, $Res Function(LoginUserDto) then) =
      _$LoginUserDtoCopyWithImpl<$Res, LoginUserDto>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$LoginUserDtoCopyWithImpl<$Res, $Val extends LoginUserDto>
    implements $LoginUserDtoCopyWith<$Res> {
  _$LoginUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginUserDtoCopyWith<$Res>
    implements $LoginUserDtoCopyWith<$Res> {
  factory _$$_LoginUserDtoCopyWith(
          _$_LoginUserDto value, $Res Function(_$_LoginUserDto) then) =
      __$$_LoginUserDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_LoginUserDtoCopyWithImpl<$Res>
    extends _$LoginUserDtoCopyWithImpl<$Res, _$_LoginUserDto>
    implements _$$_LoginUserDtoCopyWith<$Res> {
  __$$_LoginUserDtoCopyWithImpl(
      _$_LoginUserDto _value, $Res Function(_$_LoginUserDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_LoginUserDto(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_LoginUserDto implements _LoginUserDto {
  const _$_LoginUserDto(
      {required this.email, required this.password, final String? $type})
      : $type = $type ?? 'pure';

  @override
  final String email;
  @override
  final String password;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginUserDto &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginUserDtoCopyWith<_$_LoginUserDto> get copyWith =>
      __$$_LoginUserDtoCopyWithImpl<_$_LoginUserDto>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) pure,
    required TResult Function(String email, String password) valid,
    required TResult Function(Failure failure, String email, String password)
        invalid,
  }) {
    return pure(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? pure,
    TResult? Function(String email, String password)? valid,
    TResult? Function(Failure failure, String email, String password)? invalid,
  }) {
    return pure?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? pure,
    TResult Function(String email, String password)? valid,
    TResult Function(Failure failure, String email, String password)? invalid,
    required TResult orElse(),
  }) {
    if (pure != null) {
      return pure(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginUserDto value) pure,
    required TResult Function(_ValidLoginUserDto value) valid,
    required TResult Function(_InvalidLoginUserDto value) invalid,
  }) {
    return pure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginUserDto value)? pure,
    TResult? Function(_ValidLoginUserDto value)? valid,
    TResult? Function(_InvalidLoginUserDto value)? invalid,
  }) {
    return pure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginUserDto value)? pure,
    TResult Function(_ValidLoginUserDto value)? valid,
    TResult Function(_InvalidLoginUserDto value)? invalid,
    required TResult orElse(),
  }) {
    if (pure != null) {
      return pure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginUserDtoToJson(
      this,
    );
  }
}

abstract class _LoginUserDto implements LoginUserDto {
  const factory _LoginUserDto(
      {required final String email,
      required final String password}) = _$_LoginUserDto;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_LoginUserDtoCopyWith<_$_LoginUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ValidLoginUserDtoCopyWith<$Res>
    implements $LoginUserDtoCopyWith<$Res> {
  factory _$$_ValidLoginUserDtoCopyWith(_$_ValidLoginUserDto value,
          $Res Function(_$_ValidLoginUserDto) then) =
      __$$_ValidLoginUserDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_ValidLoginUserDtoCopyWithImpl<$Res>
    extends _$LoginUserDtoCopyWithImpl<$Res, _$_ValidLoginUserDto>
    implements _$$_ValidLoginUserDtoCopyWith<$Res> {
  __$$_ValidLoginUserDtoCopyWithImpl(
      _$_ValidLoginUserDto _value, $Res Function(_$_ValidLoginUserDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_ValidLoginUserDto(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_ValidLoginUserDto implements _ValidLoginUserDto {
  const _$_ValidLoginUserDto(
      {required this.email, required this.password, final String? $type})
      : $type = $type ?? 'valid';

  @override
  final String email;
  @override
  final String password;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidLoginUserDto &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValidLoginUserDtoCopyWith<_$_ValidLoginUserDto> get copyWith =>
      __$$_ValidLoginUserDtoCopyWithImpl<_$_ValidLoginUserDto>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) pure,
    required TResult Function(String email, String password) valid,
    required TResult Function(Failure failure, String email, String password)
        invalid,
  }) {
    return valid(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? pure,
    TResult? Function(String email, String password)? valid,
    TResult? Function(Failure failure, String email, String password)? invalid,
  }) {
    return valid?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? pure,
    TResult Function(String email, String password)? valid,
    TResult Function(Failure failure, String email, String password)? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginUserDto value) pure,
    required TResult Function(_ValidLoginUserDto value) valid,
    required TResult Function(_InvalidLoginUserDto value) invalid,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginUserDto value)? pure,
    TResult? Function(_ValidLoginUserDto value)? valid,
    TResult? Function(_InvalidLoginUserDto value)? invalid,
  }) {
    return valid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginUserDto value)? pure,
    TResult Function(_ValidLoginUserDto value)? valid,
    TResult Function(_InvalidLoginUserDto value)? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ValidLoginUserDtoToJson(
      this,
    );
  }
}

abstract class _ValidLoginUserDto implements LoginUserDto {
  const factory _ValidLoginUserDto(
      {required final String email,
      required final String password}) = _$_ValidLoginUserDto;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_ValidLoginUserDtoCopyWith<_$_ValidLoginUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InvalidLoginUserDtoCopyWith<$Res>
    implements $LoginUserDtoCopyWith<$Res> {
  factory _$$_InvalidLoginUserDtoCopyWith(_$_InvalidLoginUserDto value,
          $Res Function(_$_InvalidLoginUserDto) then) =
      __$$_InvalidLoginUserDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Failure failure, String email, String password});
}

/// @nodoc
class __$$_InvalidLoginUserDtoCopyWithImpl<$Res>
    extends _$LoginUserDtoCopyWithImpl<$Res, _$_InvalidLoginUserDto>
    implements _$$_InvalidLoginUserDtoCopyWith<$Res> {
  __$$_InvalidLoginUserDtoCopyWithImpl(_$_InvalidLoginUserDto _value,
      $Res Function(_$_InvalidLoginUserDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_InvalidLoginUserDto(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_InvalidLoginUserDto implements _InvalidLoginUserDto {
  const _$_InvalidLoginUserDto(this.failure,
      {this.email = '', this.password = '', final String? $type})
      : $type = $type ?? 'invalid';

  @override
  final Failure failure;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidLoginUserDto &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, failure, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvalidLoginUserDtoCopyWith<_$_InvalidLoginUserDto> get copyWith =>
      __$$_InvalidLoginUserDtoCopyWithImpl<_$_InvalidLoginUserDto>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) pure,
    required TResult Function(String email, String password) valid,
    required TResult Function(Failure failure, String email, String password)
        invalid,
  }) {
    return invalid(failure, email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? pure,
    TResult? Function(String email, String password)? valid,
    TResult? Function(Failure failure, String email, String password)? invalid,
  }) {
    return invalid?.call(failure, email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? pure,
    TResult Function(String email, String password)? valid,
    TResult Function(Failure failure, String email, String password)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(failure, email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginUserDto value) pure,
    required TResult Function(_ValidLoginUserDto value) valid,
    required TResult Function(_InvalidLoginUserDto value) invalid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginUserDto value)? pure,
    TResult? Function(_ValidLoginUserDto value)? valid,
    TResult? Function(_InvalidLoginUserDto value)? invalid,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginUserDto value)? pure,
    TResult Function(_ValidLoginUserDto value)? valid,
    TResult Function(_InvalidLoginUserDto value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvalidLoginUserDtoToJson(
      this,
    );
  }
}

abstract class _InvalidLoginUserDto implements LoginUserDto {
  const factory _InvalidLoginUserDto(final Failure failure,
      {final String email, final String password}) = _$_InvalidLoginUserDto;

  Failure get failure;
  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_InvalidLoginUserDtoCopyWith<_$_InvalidLoginUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
