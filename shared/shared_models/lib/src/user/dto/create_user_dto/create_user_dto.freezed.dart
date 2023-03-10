// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateUserDto {
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String name, String password) pure,
    required TResult Function(String email, String name, String password) valid,
    required TResult Function(ValidationFailure failure, String email,
            String name, String password)
        invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String name, String password)? pure,
    TResult? Function(String email, String name, String password)? valid,
    TResult? Function(ValidationFailure failure, String email, String name,
            String password)?
        invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String name, String password)? pure,
    TResult Function(String email, String name, String password)? valid,
    TResult Function(ValidationFailure failure, String email, String name,
            String password)?
        invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateUserDto value) pure,
    required TResult Function(_ValidCreateUserDto value) valid,
    required TResult Function(_InvalidCreateUserDto value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateUserDto value)? pure,
    TResult? Function(_ValidCreateUserDto value)? valid,
    TResult? Function(_InvalidCreateUserDto value)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateUserDto value)? pure,
    TResult Function(_ValidCreateUserDto value)? valid,
    TResult Function(_InvalidCreateUserDto value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateUserDtoCopyWith<CreateUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserDtoCopyWith<$Res> {
  factory $CreateUserDtoCopyWith(
          CreateUserDto value, $Res Function(CreateUserDto) then) =
      _$CreateUserDtoCopyWithImpl<$Res, CreateUserDto>;
  @useResult
  $Res call({String email, String name, String password});
}

/// @nodoc
class _$CreateUserDtoCopyWithImpl<$Res, $Val extends CreateUserDto>
    implements $CreateUserDtoCopyWith<$Res> {
  _$CreateUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? name = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateUserDtoCopyWith<$Res>
    implements $CreateUserDtoCopyWith<$Res> {
  factory _$$_CreateUserDtoCopyWith(
          _$_CreateUserDto value, $Res Function(_$_CreateUserDto) then) =
      __$$_CreateUserDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String name, String password});
}

/// @nodoc
class __$$_CreateUserDtoCopyWithImpl<$Res>
    extends _$CreateUserDtoCopyWithImpl<$Res, _$_CreateUserDto>
    implements _$$_CreateUserDtoCopyWith<$Res> {
  __$$_CreateUserDtoCopyWithImpl(
      _$_CreateUserDto _value, $Res Function(_$_CreateUserDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? name = null,
    Object? password = null,
  }) {
    return _then(_$_CreateUserDto(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$_CreateUserDto implements _CreateUserDto {
  const _$_CreateUserDto(
      {required this.email,
      required this.name,
      required this.password,
      final String? $type})
      : $type = $type ?? 'pure';

  @override
  final String email;
  @override
  final String name;
  @override
  final String password;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateUserDto &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, name, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateUserDtoCopyWith<_$_CreateUserDto> get copyWith =>
      __$$_CreateUserDtoCopyWithImpl<_$_CreateUserDto>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String name, String password) pure,
    required TResult Function(String email, String name, String password) valid,
    required TResult Function(ValidationFailure failure, String email,
            String name, String password)
        invalid,
  }) {
    return pure(email, name, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String name, String password)? pure,
    TResult? Function(String email, String name, String password)? valid,
    TResult? Function(ValidationFailure failure, String email, String name,
            String password)?
        invalid,
  }) {
    return pure?.call(email, name, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String name, String password)? pure,
    TResult Function(String email, String name, String password)? valid,
    TResult Function(ValidationFailure failure, String email, String name,
            String password)?
        invalid,
    required TResult orElse(),
  }) {
    if (pure != null) {
      return pure(email, name, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateUserDto value) pure,
    required TResult Function(_ValidCreateUserDto value) valid,
    required TResult Function(_InvalidCreateUserDto value) invalid,
  }) {
    return pure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateUserDto value)? pure,
    TResult? Function(_ValidCreateUserDto value)? valid,
    TResult? Function(_InvalidCreateUserDto value)? invalid,
  }) {
    return pure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateUserDto value)? pure,
    TResult Function(_ValidCreateUserDto value)? valid,
    TResult Function(_InvalidCreateUserDto value)? invalid,
    required TResult orElse(),
  }) {
    if (pure != null) {
      return pure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateUserDtoToJson(
      this,
    );
  }
}

abstract class _CreateUserDto implements CreateUserDto {
  const factory _CreateUserDto(
      {required final String email,
      required final String name,
      required final String password}) = _$_CreateUserDto;

  @override
  String get email;
  @override
  String get name;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_CreateUserDtoCopyWith<_$_CreateUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ValidCreateUserDtoCopyWith<$Res>
    implements $CreateUserDtoCopyWith<$Res> {
  factory _$$_ValidCreateUserDtoCopyWith(_$_ValidCreateUserDto value,
          $Res Function(_$_ValidCreateUserDto) then) =
      __$$_ValidCreateUserDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String name, String password});
}

/// @nodoc
class __$$_ValidCreateUserDtoCopyWithImpl<$Res>
    extends _$CreateUserDtoCopyWithImpl<$Res, _$_ValidCreateUserDto>
    implements _$$_ValidCreateUserDtoCopyWith<$Res> {
  __$$_ValidCreateUserDtoCopyWithImpl(
      _$_ValidCreateUserDto _value, $Res Function(_$_ValidCreateUserDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? name = null,
    Object? password = null,
  }) {
    return _then(_$_ValidCreateUserDto(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$_ValidCreateUserDto implements _ValidCreateUserDto {
  const _$_ValidCreateUserDto(
      {required this.email,
      required this.name,
      required this.password,
      final String? $type})
      : $type = $type ?? 'valid';

  @override
  final String email;
  @override
  final String name;
  @override
  final String password;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidCreateUserDto &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, name, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValidCreateUserDtoCopyWith<_$_ValidCreateUserDto> get copyWith =>
      __$$_ValidCreateUserDtoCopyWithImpl<_$_ValidCreateUserDto>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String name, String password) pure,
    required TResult Function(String email, String name, String password) valid,
    required TResult Function(ValidationFailure failure, String email,
            String name, String password)
        invalid,
  }) {
    return valid(email, name, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String name, String password)? pure,
    TResult? Function(String email, String name, String password)? valid,
    TResult? Function(ValidationFailure failure, String email, String name,
            String password)?
        invalid,
  }) {
    return valid?.call(email, name, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String name, String password)? pure,
    TResult Function(String email, String name, String password)? valid,
    TResult Function(ValidationFailure failure, String email, String name,
            String password)?
        invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(email, name, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateUserDto value) pure,
    required TResult Function(_ValidCreateUserDto value) valid,
    required TResult Function(_InvalidCreateUserDto value) invalid,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateUserDto value)? pure,
    TResult? Function(_ValidCreateUserDto value)? valid,
    TResult? Function(_InvalidCreateUserDto value)? invalid,
  }) {
    return valid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateUserDto value)? pure,
    TResult Function(_ValidCreateUserDto value)? valid,
    TResult Function(_InvalidCreateUserDto value)? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ValidCreateUserDtoToJson(
      this,
    );
  }
}

abstract class _ValidCreateUserDto implements CreateUserDto {
  const factory _ValidCreateUserDto(
      {required final String email,
      required final String name,
      required final String password}) = _$_ValidCreateUserDto;

  @override
  String get email;
  @override
  String get name;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_ValidCreateUserDtoCopyWith<_$_ValidCreateUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InvalidCreateUserDtoCopyWith<$Res>
    implements $CreateUserDtoCopyWith<$Res> {
  factory _$$_InvalidCreateUserDtoCopyWith(_$_InvalidCreateUserDto value,
          $Res Function(_$_InvalidCreateUserDto) then) =
      __$$_InvalidCreateUserDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ValidationFailure failure, String email, String name, String password});

  $ValidationFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_InvalidCreateUserDtoCopyWithImpl<$Res>
    extends _$CreateUserDtoCopyWithImpl<$Res, _$_InvalidCreateUserDto>
    implements _$$_InvalidCreateUserDtoCopyWith<$Res> {
  __$$_InvalidCreateUserDtoCopyWithImpl(_$_InvalidCreateUserDto _value,
      $Res Function(_$_InvalidCreateUserDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
    Object? email = null,
    Object? name = null,
    Object? password = null,
  }) {
    return _then(_$_InvalidCreateUserDto(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ValidationFailure,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ValidationFailureCopyWith<$Res> get failure {
    return $ValidationFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_InvalidCreateUserDto implements _InvalidCreateUserDto {
  const _$_InvalidCreateUserDto(this.failure,
      {this.email = '',
      this.name = '',
      this.password = '',
      final String? $type})
      : $type = $type ?? 'invalid';

  @override
  final ValidationFailure failure;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String password;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidCreateUserDto &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, failure, email, name, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvalidCreateUserDtoCopyWith<_$_InvalidCreateUserDto> get copyWith =>
      __$$_InvalidCreateUserDtoCopyWithImpl<_$_InvalidCreateUserDto>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String name, String password) pure,
    required TResult Function(String email, String name, String password) valid,
    required TResult Function(ValidationFailure failure, String email,
            String name, String password)
        invalid,
  }) {
    return invalid(failure, email, name, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String name, String password)? pure,
    TResult? Function(String email, String name, String password)? valid,
    TResult? Function(ValidationFailure failure, String email, String name,
            String password)?
        invalid,
  }) {
    return invalid?.call(failure, email, name, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String name, String password)? pure,
    TResult Function(String email, String name, String password)? valid,
    TResult Function(ValidationFailure failure, String email, String name,
            String password)?
        invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(failure, email, name, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateUserDto value) pure,
    required TResult Function(_ValidCreateUserDto value) valid,
    required TResult Function(_InvalidCreateUserDto value) invalid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateUserDto value)? pure,
    TResult? Function(_ValidCreateUserDto value)? valid,
    TResult? Function(_InvalidCreateUserDto value)? invalid,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateUserDto value)? pure,
    TResult Function(_ValidCreateUserDto value)? valid,
    TResult Function(_InvalidCreateUserDto value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvalidCreateUserDtoToJson(
      this,
    );
  }
}

abstract class _InvalidCreateUserDto implements CreateUserDto {
  const factory _InvalidCreateUserDto(final ValidationFailure failure,
      {final String email,
      final String name,
      final String password}) = _$_InvalidCreateUserDto;

  ValidationFailure get failure;
  @override
  String get email;
  @override
  String get name;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_InvalidCreateUserDtoCopyWith<_$_InvalidCreateUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
