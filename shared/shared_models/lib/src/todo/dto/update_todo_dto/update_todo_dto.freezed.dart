// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_todo_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateTodoDto {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get completed => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? title, String? description, bool? completed)
        pure,
    required TResult Function(Failure failure, String? title,
            String? description, bool? completed)
        invalid,
    required TResult Function(
            String? title, String? description, bool? completed)
        valid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? title, String? description, bool? completed)?
        pure,
    TResult? Function(Failure failure, String? title, String? description,
            bool? completed)?
        invalid,
    TResult? Function(String? title, String? description, bool? completed)?
        valid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? title, String? description, bool? completed)? pure,
    TResult Function(Failure failure, String? title, String? description,
            bool? completed)?
        invalid,
    TResult Function(String? title, String? description, bool? completed)?
        valid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PureUpdateTodoDto value) pure,
    required TResult Function(_InvalidUpdateTodoDto value) invalid,
    required TResult Function(_ValidUpdateTodoDto value) valid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PureUpdateTodoDto value)? pure,
    TResult? Function(_InvalidUpdateTodoDto value)? invalid,
    TResult? Function(_ValidUpdateTodoDto value)? valid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PureUpdateTodoDto value)? pure,
    TResult Function(_InvalidUpdateTodoDto value)? invalid,
    TResult Function(_ValidUpdateTodoDto value)? valid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateTodoDtoCopyWith<UpdateTodoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTodoDtoCopyWith<$Res> {
  factory $UpdateTodoDtoCopyWith(
          UpdateTodoDto value, $Res Function(UpdateTodoDto) then) =
      _$UpdateTodoDtoCopyWithImpl<$Res, UpdateTodoDto>;
  @useResult
  $Res call({String? title, String? description, bool? completed});
}

/// @nodoc
class _$UpdateTodoDtoCopyWithImpl<$Res, $Val extends UpdateTodoDto>
    implements $UpdateTodoDtoCopyWith<$Res> {
  _$UpdateTodoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? completed = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PureUpdateTodoDtoCopyWith<$Res>
    implements $UpdateTodoDtoCopyWith<$Res> {
  factory _$$_PureUpdateTodoDtoCopyWith(_$_PureUpdateTodoDto value,
          $Res Function(_$_PureUpdateTodoDto) then) =
      __$$_PureUpdateTodoDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? description, bool? completed});
}

/// @nodoc
class __$$_PureUpdateTodoDtoCopyWithImpl<$Res>
    extends _$UpdateTodoDtoCopyWithImpl<$Res, _$_PureUpdateTodoDto>
    implements _$$_PureUpdateTodoDtoCopyWith<$Res> {
  __$$_PureUpdateTodoDtoCopyWithImpl(
      _$_PureUpdateTodoDto _value, $Res Function(_$_PureUpdateTodoDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? completed = freezed,
  }) {
    return _then(_$_PureUpdateTodoDto(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_PureUpdateTodoDto implements _PureUpdateTodoDto {
  const _$_PureUpdateTodoDto(
      {this.title, this.description, this.completed, final String? $type})
      : $type = $type ?? 'pure';

  @override
  final String? title;
  @override
  final String? description;
  @override
  final bool? completed;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PureUpdateTodoDto &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, completed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PureUpdateTodoDtoCopyWith<_$_PureUpdateTodoDto> get copyWith =>
      __$$_PureUpdateTodoDtoCopyWithImpl<_$_PureUpdateTodoDto>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? title, String? description, bool? completed)
        pure,
    required TResult Function(Failure failure, String? title,
            String? description, bool? completed)
        invalid,
    required TResult Function(
            String? title, String? description, bool? completed)
        valid,
  }) {
    return pure(title, description, completed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? title, String? description, bool? completed)?
        pure,
    TResult? Function(Failure failure, String? title, String? description,
            bool? completed)?
        invalid,
    TResult? Function(String? title, String? description, bool? completed)?
        valid,
  }) {
    return pure?.call(title, description, completed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? title, String? description, bool? completed)? pure,
    TResult Function(Failure failure, String? title, String? description,
            bool? completed)?
        invalid,
    TResult Function(String? title, String? description, bool? completed)?
        valid,
    required TResult orElse(),
  }) {
    if (pure != null) {
      return pure(title, description, completed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PureUpdateTodoDto value) pure,
    required TResult Function(_InvalidUpdateTodoDto value) invalid,
    required TResult Function(_ValidUpdateTodoDto value) valid,
  }) {
    return pure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PureUpdateTodoDto value)? pure,
    TResult? Function(_InvalidUpdateTodoDto value)? invalid,
    TResult? Function(_ValidUpdateTodoDto value)? valid,
  }) {
    return pure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PureUpdateTodoDto value)? pure,
    TResult Function(_InvalidUpdateTodoDto value)? invalid,
    TResult Function(_ValidUpdateTodoDto value)? valid,
    required TResult orElse(),
  }) {
    if (pure != null) {
      return pure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_PureUpdateTodoDtoToJson(
      this,
    );
  }
}

abstract class _PureUpdateTodoDto implements UpdateTodoDto {
  const factory _PureUpdateTodoDto(
      {final String? title,
      final String? description,
      final bool? completed}) = _$_PureUpdateTodoDto;

  @override
  String? get title;
  @override
  String? get description;
  @override
  bool? get completed;
  @override
  @JsonKey(ignore: true)
  _$$_PureUpdateTodoDtoCopyWith<_$_PureUpdateTodoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InvalidUpdateTodoDtoCopyWith<$Res>
    implements $UpdateTodoDtoCopyWith<$Res> {
  factory _$$_InvalidUpdateTodoDtoCopyWith(_$_InvalidUpdateTodoDto value,
          $Res Function(_$_InvalidUpdateTodoDto) then) =
      __$$_InvalidUpdateTodoDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Failure failure, String? title, String? description, bool? completed});
}

/// @nodoc
class __$$_InvalidUpdateTodoDtoCopyWithImpl<$Res>
    extends _$UpdateTodoDtoCopyWithImpl<$Res, _$_InvalidUpdateTodoDto>
    implements _$$_InvalidUpdateTodoDtoCopyWith<$Res> {
  __$$_InvalidUpdateTodoDtoCopyWithImpl(_$_InvalidUpdateTodoDto _value,
      $Res Function(_$_InvalidUpdateTodoDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? completed = freezed,
  }) {
    return _then(_$_InvalidUpdateTodoDto(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_InvalidUpdateTodoDto implements _InvalidUpdateTodoDto {
  const _$_InvalidUpdateTodoDto(this.failure,
      {this.title = null,
      this.description = null,
      this.completed = null,
      final String? $type})
      : $type = $type ?? 'invalid';

  @override
  final Failure failure;
  @override
  @JsonKey()
  final String? title;
  @override
  @JsonKey()
  final String? description;
  @override
  @JsonKey()
  final bool? completed;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidUpdateTodoDto &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, failure, title, description, completed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvalidUpdateTodoDtoCopyWith<_$_InvalidUpdateTodoDto> get copyWith =>
      __$$_InvalidUpdateTodoDtoCopyWithImpl<_$_InvalidUpdateTodoDto>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? title, String? description, bool? completed)
        pure,
    required TResult Function(Failure failure, String? title,
            String? description, bool? completed)
        invalid,
    required TResult Function(
            String? title, String? description, bool? completed)
        valid,
  }) {
    return invalid(failure, title, description, completed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? title, String? description, bool? completed)?
        pure,
    TResult? Function(Failure failure, String? title, String? description,
            bool? completed)?
        invalid,
    TResult? Function(String? title, String? description, bool? completed)?
        valid,
  }) {
    return invalid?.call(failure, title, description, completed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? title, String? description, bool? completed)? pure,
    TResult Function(Failure failure, String? title, String? description,
            bool? completed)?
        invalid,
    TResult Function(String? title, String? description, bool? completed)?
        valid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(failure, title, description, completed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PureUpdateTodoDto value) pure,
    required TResult Function(_InvalidUpdateTodoDto value) invalid,
    required TResult Function(_ValidUpdateTodoDto value) valid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PureUpdateTodoDto value)? pure,
    TResult? Function(_InvalidUpdateTodoDto value)? invalid,
    TResult? Function(_ValidUpdateTodoDto value)? valid,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PureUpdateTodoDto value)? pure,
    TResult Function(_InvalidUpdateTodoDto value)? invalid,
    TResult Function(_ValidUpdateTodoDto value)? valid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvalidUpdateTodoDtoToJson(
      this,
    );
  }
}

abstract class _InvalidUpdateTodoDto implements UpdateTodoDto {
  const factory _InvalidUpdateTodoDto(final Failure failure,
      {final String? title,
      final String? description,
      final bool? completed}) = _$_InvalidUpdateTodoDto;

  Failure get failure;
  @override
  String? get title;
  @override
  String? get description;
  @override
  bool? get completed;
  @override
  @JsonKey(ignore: true)
  _$$_InvalidUpdateTodoDtoCopyWith<_$_InvalidUpdateTodoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ValidUpdateTodoDtoCopyWith<$Res>
    implements $UpdateTodoDtoCopyWith<$Res> {
  factory _$$_ValidUpdateTodoDtoCopyWith(_$_ValidUpdateTodoDto value,
          $Res Function(_$_ValidUpdateTodoDto) then) =
      __$$_ValidUpdateTodoDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? description, bool? completed});
}

/// @nodoc
class __$$_ValidUpdateTodoDtoCopyWithImpl<$Res>
    extends _$UpdateTodoDtoCopyWithImpl<$Res, _$_ValidUpdateTodoDto>
    implements _$$_ValidUpdateTodoDtoCopyWith<$Res> {
  __$$_ValidUpdateTodoDtoCopyWithImpl(
      _$_ValidUpdateTodoDto _value, $Res Function(_$_ValidUpdateTodoDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? completed = freezed,
  }) {
    return _then(_$_ValidUpdateTodoDto(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_ValidUpdateTodoDto implements _ValidUpdateTodoDto {
  const _$_ValidUpdateTodoDto(
      {this.title, this.description, this.completed, final String? $type})
      : $type = $type ?? 'valid';

  @override
  final String? title;
  @override
  final String? description;
  @override
  final bool? completed;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidUpdateTodoDto &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, completed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValidUpdateTodoDtoCopyWith<_$_ValidUpdateTodoDto> get copyWith =>
      __$$_ValidUpdateTodoDtoCopyWithImpl<_$_ValidUpdateTodoDto>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? title, String? description, bool? completed)
        pure,
    required TResult Function(Failure failure, String? title,
            String? description, bool? completed)
        invalid,
    required TResult Function(
            String? title, String? description, bool? completed)
        valid,
  }) {
    return valid(title, description, completed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? title, String? description, bool? completed)?
        pure,
    TResult? Function(Failure failure, String? title, String? description,
            bool? completed)?
        invalid,
    TResult? Function(String? title, String? description, bool? completed)?
        valid,
  }) {
    return valid?.call(title, description, completed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? title, String? description, bool? completed)? pure,
    TResult Function(Failure failure, String? title, String? description,
            bool? completed)?
        invalid,
    TResult Function(String? title, String? description, bool? completed)?
        valid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(title, description, completed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PureUpdateTodoDto value) pure,
    required TResult Function(_InvalidUpdateTodoDto value) invalid,
    required TResult Function(_ValidUpdateTodoDto value) valid,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PureUpdateTodoDto value)? pure,
    TResult? Function(_InvalidUpdateTodoDto value)? invalid,
    TResult? Function(_ValidUpdateTodoDto value)? valid,
  }) {
    return valid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PureUpdateTodoDto value)? pure,
    TResult Function(_InvalidUpdateTodoDto value)? invalid,
    TResult Function(_ValidUpdateTodoDto value)? valid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ValidUpdateTodoDtoToJson(
      this,
    );
  }
}

abstract class _ValidUpdateTodoDto implements UpdateTodoDto {
  const factory _ValidUpdateTodoDto(
      {final String? title,
      final String? description,
      final bool? completed}) = _$_ValidUpdateTodoDto;

  @override
  String? get title;
  @override
  String? get description;
  @override
  bool? get completed;
  @override
  @JsonKey(ignore: true)
  _$$_ValidUpdateTodoDtoCopyWith<_$_ValidUpdateTodoDto> get copyWith =>
      throw _privateConstructorUsedError;
}
