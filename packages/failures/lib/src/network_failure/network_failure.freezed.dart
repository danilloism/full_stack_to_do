// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NetworkFailure _$NetworkFailureFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'default':
      return _NetworkFailure.fromJson(json);
    case 'request':
      return RequestFailure.fromJson(json);
    case 'server':
      return ServerFailure.fromJson(json);
    case 'validation':
      return ValidationFailure.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'NetworkFailure',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$NetworkFailure {
  String get message => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;
  Map<String, List<String>> get errors => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)
        $default, {
    required TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)
        request,
    required TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)
        server,
    required TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)
        validation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        $default, {
    TResult? Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        request,
    TResult? Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        server,
    TResult? Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        validation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        $default, {
    TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        request,
    TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        server,
    TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        validation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NetworkFailure value) $default, {
    required TResult Function(RequestFailure value) request,
    required TResult Function(ServerFailure value) server,
    required TResult Function(ValidationFailure value) validation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NetworkFailure value)? $default, {
    TResult? Function(RequestFailure value)? request,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(ValidationFailure value)? validation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NetworkFailure value)? $default, {
    TResult Function(RequestFailure value)? request,
    TResult Function(ServerFailure value)? server,
    TResult Function(ValidationFailure value)? validation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NetworkFailureCopyWith<NetworkFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkFailureCopyWith<$Res> {
  factory $NetworkFailureCopyWith(
          NetworkFailure value, $Res Function(NetworkFailure) then) =
      _$NetworkFailureCopyWithImpl<$Res, NetworkFailure>;
  @useResult
  $Res call({String message, int statusCode, Map<String, List<String>> errors});
}

/// @nodoc
class _$NetworkFailureCopyWithImpl<$Res, $Val extends NetworkFailure>
    implements $NetworkFailureCopyWith<$Res> {
  _$NetworkFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = null,
    Object? errors = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NetworkFailureCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory _$$_NetworkFailureCopyWith(
          _$_NetworkFailure value, $Res Function(_$_NetworkFailure) then) =
      __$$_NetworkFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int statusCode, Map<String, List<String>> errors});
}

/// @nodoc
class __$$_NetworkFailureCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$_NetworkFailure>
    implements _$$_NetworkFailureCopyWith<$Res> {
  __$$_NetworkFailureCopyWithImpl(
      _$_NetworkFailure _value, $Res Function(_$_NetworkFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = null,
    Object? errors = null,
  }) {
    return _then(_$_NetworkFailure(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NetworkFailure implements _NetworkFailure {
  const _$_NetworkFailure(
      {required this.message,
      required this.statusCode,
      final Map<String, List<String>> errors = const {},
      final String? $type})
      : _errors = errors,
        $type = $type ?? 'default';

  factory _$_NetworkFailure.fromJson(Map<String, dynamic> json) =>
      _$$_NetworkFailureFromJson(json);

  @override
  final String message;
  @override
  final int statusCode;
  final Map<String, List<String>> _errors;
  @override
  @JsonKey()
  Map<String, List<String>> get errors {
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errors);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'NetworkFailure(message: $message, statusCode: $statusCode, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NetworkFailure &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode,
      const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NetworkFailureCopyWith<_$_NetworkFailure> get copyWith =>
      __$$_NetworkFailureCopyWithImpl<_$_NetworkFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)
        $default, {
    required TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)
        request,
    required TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)
        server,
    required TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)
        validation,
  }) {
    return $default(message, statusCode, errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        $default, {
    TResult? Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        request,
    TResult? Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        server,
    TResult? Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        validation,
  }) {
    return $default?.call(message, statusCode, errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        $default, {
    TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        request,
    TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        server,
    TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        validation,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(message, statusCode, errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NetworkFailure value) $default, {
    required TResult Function(RequestFailure value) request,
    required TResult Function(ServerFailure value) server,
    required TResult Function(ValidationFailure value) validation,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NetworkFailure value)? $default, {
    TResult? Function(RequestFailure value)? request,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(ValidationFailure value)? validation,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NetworkFailure value)? $default, {
    TResult Function(RequestFailure value)? request,
    TResult Function(ServerFailure value)? server,
    TResult Function(ValidationFailure value)? validation,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_NetworkFailureToJson(
      this,
    );
  }
}

abstract class _NetworkFailure implements NetworkFailure {
  const factory _NetworkFailure(
      {required final String message,
      required final int statusCode,
      final Map<String, List<String>> errors}) = _$_NetworkFailure;

  factory _NetworkFailure.fromJson(Map<String, dynamic> json) =
      _$_NetworkFailure.fromJson;

  @override
  String get message;
  @override
  int get statusCode;
  @override
  Map<String, List<String>> get errors;
  @override
  @JsonKey(ignore: true)
  _$$_NetworkFailureCopyWith<_$_NetworkFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestFailureCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory _$$RequestFailureCopyWith(
          _$RequestFailure value, $Res Function(_$RequestFailure) then) =
      __$$RequestFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int statusCode, Map<String, List<String>> errors});
}

/// @nodoc
class __$$RequestFailureCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$RequestFailure>
    implements _$$RequestFailureCopyWith<$Res> {
  __$$RequestFailureCopyWithImpl(
      _$RequestFailure _value, $Res Function(_$RequestFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = null,
    Object? errors = null,
  }) {
    return _then(_$RequestFailure(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestFailure implements RequestFailure {
  const _$RequestFailure(
      {required this.message,
      this.statusCode = HttpStatus.badRequest,
      final Map<String, List<String>> errors = const {},
      final String? $type})
      : _errors = errors,
        $type = $type ?? 'request';

  factory _$RequestFailure.fromJson(Map<String, dynamic> json) =>
      _$$RequestFailureFromJson(json);

  @override
  final String message;
  @override
  @JsonKey()
  final int statusCode;
  final Map<String, List<String>> _errors;
  @override
  @JsonKey()
  Map<String, List<String>> get errors {
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errors);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'NetworkFailure.request(message: $message, statusCode: $statusCode, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestFailure &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode,
      const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestFailureCopyWith<_$RequestFailure> get copyWith =>
      __$$RequestFailureCopyWithImpl<_$RequestFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)
        $default, {
    required TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)
        request,
    required TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)
        server,
    required TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)
        validation,
  }) {
    return request(message, statusCode, errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        $default, {
    TResult? Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        request,
    TResult? Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        server,
    TResult? Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        validation,
  }) {
    return request?.call(message, statusCode, errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        $default, {
    TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        request,
    TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        server,
    TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        validation,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(message, statusCode, errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NetworkFailure value) $default, {
    required TResult Function(RequestFailure value) request,
    required TResult Function(ServerFailure value) server,
    required TResult Function(ValidationFailure value) validation,
  }) {
    return request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NetworkFailure value)? $default, {
    TResult? Function(RequestFailure value)? request,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(ValidationFailure value)? validation,
  }) {
    return request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NetworkFailure value)? $default, {
    TResult Function(RequestFailure value)? request,
    TResult Function(ServerFailure value)? server,
    TResult Function(ValidationFailure value)? validation,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestFailureToJson(
      this,
    );
  }
}

abstract class RequestFailure implements NetworkFailure {
  const factory RequestFailure(
      {required final String message,
      final int statusCode,
      final Map<String, List<String>> errors}) = _$RequestFailure;

  factory RequestFailure.fromJson(Map<String, dynamic> json) =
      _$RequestFailure.fromJson;

  @override
  String get message;
  @override
  int get statusCode;
  @override
  Map<String, List<String>> get errors;
  @override
  @JsonKey(ignore: true)
  _$$RequestFailureCopyWith<_$RequestFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerFailureCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory _$$ServerFailureCopyWith(
          _$ServerFailure value, $Res Function(_$ServerFailure) then) =
      __$$ServerFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int statusCode, Map<String, List<String>> errors});
}

/// @nodoc
class __$$ServerFailureCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$ServerFailure>
    implements _$$ServerFailureCopyWith<$Res> {
  __$$ServerFailureCopyWithImpl(
      _$ServerFailure _value, $Res Function(_$ServerFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = null,
    Object? errors = null,
  }) {
    return _then(_$ServerFailure(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerFailure implements ServerFailure {
  const _$ServerFailure(
      {required this.message,
      this.statusCode = HttpStatus.internalServerError,
      final Map<String, List<String>> errors = const {},
      final String? $type})
      : _errors = errors,
        $type = $type ?? 'server';

  factory _$ServerFailure.fromJson(Map<String, dynamic> json) =>
      _$$ServerFailureFromJson(json);

  @override
  final String message;
  @override
  @JsonKey()
  final int statusCode;
  final Map<String, List<String>> _errors;
  @override
  @JsonKey()
  Map<String, List<String>> get errors {
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errors);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'NetworkFailure.server(message: $message, statusCode: $statusCode, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailure &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode,
      const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureCopyWith<_$ServerFailure> get copyWith =>
      __$$ServerFailureCopyWithImpl<_$ServerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)
        $default, {
    required TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)
        request,
    required TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)
        server,
    required TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)
        validation,
  }) {
    return server(message, statusCode, errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        $default, {
    TResult? Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        request,
    TResult? Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        server,
    TResult? Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        validation,
  }) {
    return server?.call(message, statusCode, errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        $default, {
    TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        request,
    TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        server,
    TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        validation,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message, statusCode, errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NetworkFailure value) $default, {
    required TResult Function(RequestFailure value) request,
    required TResult Function(ServerFailure value) server,
    required TResult Function(ValidationFailure value) validation,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NetworkFailure value)? $default, {
    TResult? Function(RequestFailure value)? request,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(ValidationFailure value)? validation,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NetworkFailure value)? $default, {
    TResult Function(RequestFailure value)? request,
    TResult Function(ServerFailure value)? server,
    TResult Function(ValidationFailure value)? validation,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerFailureToJson(
      this,
    );
  }
}

abstract class ServerFailure implements NetworkFailure {
  const factory ServerFailure(
      {required final String message,
      final int statusCode,
      final Map<String, List<String>> errors}) = _$ServerFailure;

  factory ServerFailure.fromJson(Map<String, dynamic> json) =
      _$ServerFailure.fromJson;

  @override
  String get message;
  @override
  int get statusCode;
  @override
  Map<String, List<String>> get errors;
  @override
  @JsonKey(ignore: true)
  _$$ServerFailureCopyWith<_$ServerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidationFailureCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory _$$ValidationFailureCopyWith(
          _$ValidationFailure value, $Res Function(_$ValidationFailure) then) =
      __$$ValidationFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int statusCode, Map<String, List<String>> errors});
}

/// @nodoc
class __$$ValidationFailureCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$ValidationFailure>
    implements _$$ValidationFailureCopyWith<$Res> {
  __$$ValidationFailureCopyWithImpl(
      _$ValidationFailure _value, $Res Function(_$ValidationFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = null,
    Object? errors = null,
  }) {
    return _then(_$ValidationFailure(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidationFailure implements ValidationFailure {
  const _$ValidationFailure(
      {required this.message,
      this.statusCode = HttpStatus.badRequest,
      final Map<String, List<String>> errors = const {},
      final String? $type})
      : _errors = errors,
        $type = $type ?? 'validation';

  factory _$ValidationFailure.fromJson(Map<String, dynamic> json) =>
      _$$ValidationFailureFromJson(json);

  @override
  final String message;
  @override
  @JsonKey()
  final int statusCode;
  final Map<String, List<String>> _errors;
  @override
  @JsonKey()
  Map<String, List<String>> get errors {
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errors);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'NetworkFailure.validation(message: $message, statusCode: $statusCode, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationFailure &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode,
      const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationFailureCopyWith<_$ValidationFailure> get copyWith =>
      __$$ValidationFailureCopyWithImpl<_$ValidationFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)
        $default, {
    required TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)
        request,
    required TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)
        server,
    required TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)
        validation,
  }) {
    return validation(message, statusCode, errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        $default, {
    TResult? Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        request,
    TResult? Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        server,
    TResult? Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        validation,
  }) {
    return validation?.call(message, statusCode, errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        $default, {
    TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        request,
    TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        server,
    TResult Function(
            String message, int statusCode, Map<String, List<String>> errors)?
        validation,
    required TResult orElse(),
  }) {
    if (validation != null) {
      return validation(message, statusCode, errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NetworkFailure value) $default, {
    required TResult Function(RequestFailure value) request,
    required TResult Function(ServerFailure value) server,
    required TResult Function(ValidationFailure value) validation,
  }) {
    return validation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NetworkFailure value)? $default, {
    TResult? Function(RequestFailure value)? request,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(ValidationFailure value)? validation,
  }) {
    return validation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NetworkFailure value)? $default, {
    TResult Function(RequestFailure value)? request,
    TResult Function(ServerFailure value)? server,
    TResult Function(ValidationFailure value)? validation,
    required TResult orElse(),
  }) {
    if (validation != null) {
      return validation(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidationFailureToJson(
      this,
    );
  }
}

abstract class ValidationFailure implements NetworkFailure {
  const factory ValidationFailure(
      {required final String message,
      final int statusCode,
      final Map<String, List<String>> errors}) = _$ValidationFailure;

  factory ValidationFailure.fromJson(Map<String, dynamic> json) =
      _$ValidationFailure.fromJson;

  @override
  String get message;
  @override
  int get statusCode;
  @override
  Map<String, List<String>> get errors;
  @override
  @JsonKey(ignore: true)
  _$$ValidationFailureCopyWith<_$ValidationFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
