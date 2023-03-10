// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_todo_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateTodoDto {
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String? description) pure,
    required TResult Function(String title, String? description) valid,
    required TResult Function(
            Failure failure, String title, String? description)
        invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String? description)? pure,
    TResult? Function(String title, String? description)? valid,
    TResult? Function(Failure failure, String title, String? description)?
        invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String? description)? pure,
    TResult Function(String title, String? description)? valid,
    TResult Function(Failure failure, String title, String? description)?
        invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTodoDto value) pure,
    required TResult Function(_ValidCreateTodoDto value) valid,
    required TResult Function(_InvalidCreateTodoDto value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateTodoDto value)? pure,
    TResult? Function(_ValidCreateTodoDto value)? valid,
    TResult? Function(_InvalidCreateTodoDto value)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTodoDto value)? pure,
    TResult Function(_ValidCreateTodoDto value)? valid,
    TResult Function(_InvalidCreateTodoDto value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateTodoDtoCopyWith<CreateTodoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTodoDtoCopyWith<$Res> {
  factory $CreateTodoDtoCopyWith(
          CreateTodoDto value, $Res Function(CreateTodoDto) then) =
      _$CreateTodoDtoCopyWithImpl<$Res, CreateTodoDto>;
  @useResult
  $Res call({String title, String? description});
}

/// @nodoc
class _$CreateTodoDtoCopyWithImpl<$Res, $Val extends CreateTodoDto>
    implements $CreateTodoDtoCopyWith<$Res> {
  _$CreateTodoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateTodoDtoCopyWith<$Res>
    implements $CreateTodoDtoCopyWith<$Res> {
  factory _$$_CreateTodoDtoCopyWith(
          _$_CreateTodoDto value, $Res Function(_$_CreateTodoDto) then) =
      __$$_CreateTodoDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String? description});
}

/// @nodoc
class __$$_CreateTodoDtoCopyWithImpl<$Res>
    extends _$CreateTodoDtoCopyWithImpl<$Res, _$_CreateTodoDto>
    implements _$$_CreateTodoDtoCopyWith<$Res> {
  __$$_CreateTodoDtoCopyWithImpl(
      _$_CreateTodoDto _value, $Res Function(_$_CreateTodoDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
  }) {
    return _then(_$_CreateTodoDto(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_CreateTodoDto implements _CreateTodoDto {
  const _$_CreateTodoDto(
      {required this.title, this.description, final String? $type})
      : $type = $type ?? 'pure';

  @override
  final String title;
  @override
  final String? description;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateTodoDto &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateTodoDtoCopyWith<_$_CreateTodoDto> get copyWith =>
      __$$_CreateTodoDtoCopyWithImpl<_$_CreateTodoDto>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String? description) pure,
    required TResult Function(String title, String? description) valid,
    required TResult Function(
            Failure failure, String title, String? description)
        invalid,
  }) {
    return pure(title, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String? description)? pure,
    TResult? Function(String title, String? description)? valid,
    TResult? Function(Failure failure, String title, String? description)?
        invalid,
  }) {
    return pure?.call(title, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String? description)? pure,
    TResult Function(String title, String? description)? valid,
    TResult Function(Failure failure, String title, String? description)?
        invalid,
    required TResult orElse(),
  }) {
    if (pure != null) {
      return pure(title, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTodoDto value) pure,
    required TResult Function(_ValidCreateTodoDto value) valid,
    required TResult Function(_InvalidCreateTodoDto value) invalid,
  }) {
    return pure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateTodoDto value)? pure,
    TResult? Function(_ValidCreateTodoDto value)? valid,
    TResult? Function(_InvalidCreateTodoDto value)? invalid,
  }) {
    return pure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTodoDto value)? pure,
    TResult Function(_ValidCreateTodoDto value)? valid,
    TResult Function(_InvalidCreateTodoDto value)? invalid,
    required TResult orElse(),
  }) {
    if (pure != null) {
      return pure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateTodoDtoToJson(
      this,
    );
  }
}

abstract class _CreateTodoDto implements CreateTodoDto {
  const factory _CreateTodoDto(
      {required final String title,
      final String? description}) = _$_CreateTodoDto;

  @override
  String get title;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_CreateTodoDtoCopyWith<_$_CreateTodoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ValidCreateTodoDtoCopyWith<$Res>
    implements $CreateTodoDtoCopyWith<$Res> {
  factory _$$_ValidCreateTodoDtoCopyWith(_$_ValidCreateTodoDto value,
          $Res Function(_$_ValidCreateTodoDto) then) =
      __$$_ValidCreateTodoDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String? description});
}

/// @nodoc
class __$$_ValidCreateTodoDtoCopyWithImpl<$Res>
    extends _$CreateTodoDtoCopyWithImpl<$Res, _$_ValidCreateTodoDto>
    implements _$$_ValidCreateTodoDtoCopyWith<$Res> {
  __$$_ValidCreateTodoDtoCopyWithImpl(
      _$_ValidCreateTodoDto _value, $Res Function(_$_ValidCreateTodoDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
  }) {
    return _then(_$_ValidCreateTodoDto(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_ValidCreateTodoDto implements _ValidCreateTodoDto {
  const _$_ValidCreateTodoDto(
      {required this.title, this.description, final String? $type})
      : $type = $type ?? 'valid';

  @override
  final String title;
  @override
  final String? description;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidCreateTodoDto &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValidCreateTodoDtoCopyWith<_$_ValidCreateTodoDto> get copyWith =>
      __$$_ValidCreateTodoDtoCopyWithImpl<_$_ValidCreateTodoDto>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String? description) pure,
    required TResult Function(String title, String? description) valid,
    required TResult Function(
            Failure failure, String title, String? description)
        invalid,
  }) {
    return valid(title, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String? description)? pure,
    TResult? Function(String title, String? description)? valid,
    TResult? Function(Failure failure, String title, String? description)?
        invalid,
  }) {
    return valid?.call(title, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String? description)? pure,
    TResult Function(String title, String? description)? valid,
    TResult Function(Failure failure, String title, String? description)?
        invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(title, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTodoDto value) pure,
    required TResult Function(_ValidCreateTodoDto value) valid,
    required TResult Function(_InvalidCreateTodoDto value) invalid,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateTodoDto value)? pure,
    TResult? Function(_ValidCreateTodoDto value)? valid,
    TResult? Function(_InvalidCreateTodoDto value)? invalid,
  }) {
    return valid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTodoDto value)? pure,
    TResult Function(_ValidCreateTodoDto value)? valid,
    TResult Function(_InvalidCreateTodoDto value)? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ValidCreateTodoDtoToJson(
      this,
    );
  }
}

abstract class _ValidCreateTodoDto implements CreateTodoDto {
  const factory _ValidCreateTodoDto(
      {required final String title,
      final String? description}) = _$_ValidCreateTodoDto;

  @override
  String get title;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_ValidCreateTodoDtoCopyWith<_$_ValidCreateTodoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InvalidCreateTodoDtoCopyWith<$Res>
    implements $CreateTodoDtoCopyWith<$Res> {
  factory _$$_InvalidCreateTodoDtoCopyWith(_$_InvalidCreateTodoDto value,
          $Res Function(_$_InvalidCreateTodoDto) then) =
      __$$_InvalidCreateTodoDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Failure failure, String title, String? description});
}

/// @nodoc
class __$$_InvalidCreateTodoDtoCopyWithImpl<$Res>
    extends _$CreateTodoDtoCopyWithImpl<$Res, _$_InvalidCreateTodoDto>
    implements _$$_InvalidCreateTodoDtoCopyWith<$Res> {
  __$$_InvalidCreateTodoDtoCopyWithImpl(_$_InvalidCreateTodoDto _value,
      $Res Function(_$_InvalidCreateTodoDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
    Object? title = null,
    Object? description = freezed,
  }) {
    return _then(_$_InvalidCreateTodoDto(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_InvalidCreateTodoDto implements _InvalidCreateTodoDto {
  const _$_InvalidCreateTodoDto(this.failure,
      {this.title = '', this.description = null, final String? $type})
      : $type = $type ?? 'invalid';

  @override
  final Failure failure;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String? description;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidCreateTodoDto &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, failure, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvalidCreateTodoDtoCopyWith<_$_InvalidCreateTodoDto> get copyWith =>
      __$$_InvalidCreateTodoDtoCopyWithImpl<_$_InvalidCreateTodoDto>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String? description) pure,
    required TResult Function(String title, String? description) valid,
    required TResult Function(
            Failure failure, String title, String? description)
        invalid,
  }) {
    return invalid(failure, title, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String? description)? pure,
    TResult? Function(String title, String? description)? valid,
    TResult? Function(Failure failure, String title, String? description)?
        invalid,
  }) {
    return invalid?.call(failure, title, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String? description)? pure,
    TResult Function(String title, String? description)? valid,
    TResult Function(Failure failure, String title, String? description)?
        invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(failure, title, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTodoDto value) pure,
    required TResult Function(_ValidCreateTodoDto value) valid,
    required TResult Function(_InvalidCreateTodoDto value) invalid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateTodoDto value)? pure,
    TResult? Function(_ValidCreateTodoDto value)? valid,
    TResult? Function(_InvalidCreateTodoDto value)? invalid,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTodoDto value)? pure,
    TResult Function(_ValidCreateTodoDto value)? valid,
    TResult Function(_InvalidCreateTodoDto value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvalidCreateTodoDtoToJson(
      this,
    );
  }
}

abstract class _InvalidCreateTodoDto implements CreateTodoDto {
  const factory _InvalidCreateTodoDto(final Failure failure,
      {final String title,
      final String? description}) = _$_InvalidCreateTodoDto;

  Failure get failure;
  @override
  String get title;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_InvalidCreateTodoDtoCopyWith<_$_InvalidCreateTodoDto> get copyWith =>
      throw _privateConstructorUsedError;
}
