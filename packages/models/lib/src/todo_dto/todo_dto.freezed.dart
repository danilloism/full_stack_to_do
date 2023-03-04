// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodoDto _$TodoDtoFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'create':
      return CreateTodoDto.fromJson(json);
    case 'update':
      return UpdateTodoDto.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'TodoDto', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$TodoDto {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String? description) create,
    required TResult Function(
            String? title, String? description, bool? completed)
        update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String? description)? create,
    TResult? Function(String? title, String? description, bool? completed)?
        update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String? description)? create,
    TResult Function(String? title, String? description, bool? completed)?
        update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateTodoDto value) create,
    required TResult Function(UpdateTodoDto value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateTodoDto value)? create,
    TResult? Function(UpdateTodoDto value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTodoDto value)? create,
    TResult Function(UpdateTodoDto value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoDtoCopyWith<TodoDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoDtoCopyWith<$Res> {
  factory $TodoDtoCopyWith(TodoDto value, $Res Function(TodoDto) then) =
      _$TodoDtoCopyWithImpl<$Res, TodoDto>;
  @useResult
  $Res call({String title, String? description});
}

/// @nodoc
class _$TodoDtoCopyWithImpl<$Res, $Val extends TodoDto>
    implements $TodoDtoCopyWith<$Res> {
  _$TodoDtoCopyWithImpl(this._value, this._then);

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
          ? _value.title!
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
abstract class _$$CreateTodoDtoCopyWith<$Res>
    implements $TodoDtoCopyWith<$Res> {
  factory _$$CreateTodoDtoCopyWith(
          _$CreateTodoDto value, $Res Function(_$CreateTodoDto) then) =
      __$$CreateTodoDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String? description});
}

/// @nodoc
class __$$CreateTodoDtoCopyWithImpl<$Res>
    extends _$TodoDtoCopyWithImpl<$Res, _$CreateTodoDto>
    implements _$$CreateTodoDtoCopyWith<$Res> {
  __$$CreateTodoDtoCopyWithImpl(
      _$CreateTodoDto _value, $Res Function(_$CreateTodoDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
  }) {
    return _then(_$CreateTodoDto(
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
@JsonSerializable()
class _$CreateTodoDto implements CreateTodoDto {
  const _$CreateTodoDto(
      {required this.title, this.description, final String? $type})
      : $type = $type ?? 'create';

  factory _$CreateTodoDto.fromJson(Map<String, dynamic> json) =>
      _$$CreateTodoDtoFromJson(json);

  @override
  final String title;
  @override
  final String? description;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TodoDto.create(title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTodoDto &&
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
  _$$CreateTodoDtoCopyWith<_$CreateTodoDto> get copyWith =>
      __$$CreateTodoDtoCopyWithImpl<_$CreateTodoDto>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String? description) create,
    required TResult Function(
            String? title, String? description, bool? completed)
        update,
  }) {
    return create(title, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String? description)? create,
    TResult? Function(String? title, String? description, bool? completed)?
        update,
  }) {
    return create?.call(title, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String? description)? create,
    TResult Function(String? title, String? description, bool? completed)?
        update,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(title, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateTodoDto value) create,
    required TResult Function(UpdateTodoDto value) update,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateTodoDto value)? create,
    TResult? Function(UpdateTodoDto value)? update,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTodoDto value)? create,
    TResult Function(UpdateTodoDto value)? update,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateTodoDtoToJson(
      this,
    );
  }
}

abstract class CreateTodoDto implements TodoDto {
  const factory CreateTodoDto(
      {required final String title,
      final String? description}) = _$CreateTodoDto;

  factory CreateTodoDto.fromJson(Map<String, dynamic> json) =
      _$CreateTodoDto.fromJson;

  @override
  String get title;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$CreateTodoDtoCopyWith<_$CreateTodoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTodoDtoCopyWith<$Res>
    implements $TodoDtoCopyWith<$Res> {
  factory _$$UpdateTodoDtoCopyWith(
          _$UpdateTodoDto value, $Res Function(_$UpdateTodoDto) then) =
      __$$UpdateTodoDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? description, bool? completed});
}

/// @nodoc
class __$$UpdateTodoDtoCopyWithImpl<$Res>
    extends _$TodoDtoCopyWithImpl<$Res, _$UpdateTodoDto>
    implements _$$UpdateTodoDtoCopyWith<$Res> {
  __$$UpdateTodoDtoCopyWithImpl(
      _$UpdateTodoDto _value, $Res Function(_$UpdateTodoDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? completed = freezed,
  }) {
    return _then(_$UpdateTodoDto(
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
@JsonSerializable()
class _$UpdateTodoDto implements UpdateTodoDto {
  const _$UpdateTodoDto(
      {this.title, this.description, this.completed, final String? $type})
      : $type = $type ?? 'update';

  factory _$UpdateTodoDto.fromJson(Map<String, dynamic> json) =>
      _$$UpdateTodoDtoFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final bool? completed;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TodoDto.update(title: $title, description: $description, completed: $completed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTodoDto &&
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
  _$$UpdateTodoDtoCopyWith<_$UpdateTodoDto> get copyWith =>
      __$$UpdateTodoDtoCopyWithImpl<_$UpdateTodoDto>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String? description) create,
    required TResult Function(
            String? title, String? description, bool? completed)
        update,
  }) {
    return update(title, description, completed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String? description)? create,
    TResult? Function(String? title, String? description, bool? completed)?
        update,
  }) {
    return update?.call(title, description, completed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String? description)? create,
    TResult Function(String? title, String? description, bool? completed)?
        update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(title, description, completed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateTodoDto value) create,
    required TResult Function(UpdateTodoDto value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateTodoDto value)? create,
    TResult? Function(UpdateTodoDto value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateTodoDto value)? create,
    TResult Function(UpdateTodoDto value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateTodoDtoToJson(
      this,
    );
  }
}

abstract class UpdateTodoDto implements TodoDto {
  const factory UpdateTodoDto(
      {final String? title,
      final String? description,
      final bool? completed}) = _$UpdateTodoDto;

  factory UpdateTodoDto.fromJson(Map<String, dynamic> json) =
      _$UpdateTodoDto.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  bool? get completed;
  @override
  @JsonKey(ignore: true)
  _$$UpdateTodoDtoCopyWith<_$UpdateTodoDto> get copyWith =>
      throw _privateConstructorUsedError;
}
