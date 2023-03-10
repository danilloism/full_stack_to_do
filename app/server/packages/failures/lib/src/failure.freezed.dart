// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkFailure {
  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  int get statusCode => throw _privateConstructorUsedError;
  List<String> get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_NetworkFailure implements _NetworkFailure {
  const _$_NetworkFailure(
      {required this.message,
      @JsonKey(ignore: true) required this.statusCode,
      final List<String> errors = const []})
      : _errors = errors;

  @override
  final String message;
  @override
  @JsonKey(ignore: true)
  final int statusCode;
  final List<String> _errors;
  @override
  @JsonKey()
  List<String> get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

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
      @JsonKey(ignore: true) required final int statusCode,
      final List<String> errors}) = _$_NetworkFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  int get statusCode;
  @override
  List<String> get errors;
}

/// @nodoc
mixin _$RequestFailure {
  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  int get statusCode => throw _privateConstructorUsedError;
  dynamic get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_RequestFailure implements _RequestFailure {
  const _$_RequestFailure(
      {required this.message,
      @JsonKey(ignore: true) this.statusCode = HttpStatus.badRequest,
      this.errors = null});

  @override
  final String message;
  @override
  @JsonKey(ignore: true)
  final int statusCode;
  @override
  @JsonKey()
  final dynamic errors;

  @override
  String toString() {
    return 'RequestFailure(message: $message, statusCode: $statusCode, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestFailure &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality().equals(other.errors, errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode,
      const DeepCollectionEquality().hash(errors));

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestFailureToJson(
      this,
    );
  }
}

abstract class _RequestFailure implements RequestFailure {
  const factory _RequestFailure(
      {required final String message,
      @JsonKey(ignore: true) final int statusCode,
      final dynamic errors}) = _$_RequestFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  int get statusCode;
  @override
  dynamic get errors;
}

/// @nodoc
mixin _$ServerFailure {
  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  int get statusCode => throw _privateConstructorUsedError;
  dynamic get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_ServerFailure implements _ServerFailure {
  const _$_ServerFailure(
      {required this.message,
      @JsonKey(ignore: true) this.statusCode = HttpStatus.internalServerError,
      this.errors = null});

  @override
  final String message;
  @override
  @JsonKey(ignore: true)
  final int statusCode;
  @override
  @JsonKey()
  final dynamic errors;

  @override
  String toString() {
    return 'ServerFailure(message: $message, statusCode: $statusCode, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerFailure &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality().equals(other.errors, errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode,
      const DeepCollectionEquality().hash(errors));

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServerFailureToJson(
      this,
    );
  }
}

abstract class _ServerFailure implements ServerFailure {
  const factory _ServerFailure(
      {required final String message,
      @JsonKey(ignore: true) final int statusCode,
      final dynamic errors}) = _$_ServerFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  int get statusCode;
  @override
  dynamic get errors;
}

/// @nodoc
mixin _$ValidationFailure {
  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  int get statusCode => throw _privateConstructorUsedError;
  Map<String, List<String>> get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_ValidationFailure implements _ValidationFailure {
  const _$_ValidationFailure(
      {required this.message,
      @JsonKey(ignore: true) this.statusCode = HttpStatus.badRequest,
      final Map<String, List<String>> errors = const {}})
      : _errors = errors;

  @override
  final String message;
  @override
  @JsonKey(ignore: true)
  final int statusCode;
  final Map<String, List<String>> _errors;
  @override
  @JsonKey()
  Map<String, List<String>> get errors {
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errors);
  }

  @override
  String toString() {
    return 'ValidationFailure(message: $message, statusCode: $statusCode, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidationFailure &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode,
      const DeepCollectionEquality().hash(_errors));

  @override
  Map<String, dynamic> toJson() {
    return _$$_ValidationFailureToJson(
      this,
    );
  }
}

abstract class _ValidationFailure implements ValidationFailure {
  const factory _ValidationFailure(
      {required final String message,
      @JsonKey(ignore: true) final int statusCode,
      final Map<String, List<String>> errors}) = _$_ValidationFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  int get statusCode;
  @override
  Map<String, List<String>> get errors;
}

/// @nodoc
mixin _$NotAllowedFailure {
  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  int get statusCode => throw _privateConstructorUsedError;
  dynamic get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_NotAllowedFailure implements _NotAllowedFailure {
  const _$_NotAllowedFailure(
      {this.message = '👀 Looks like you are lost 🔦',
      @JsonKey(ignore: true) this.statusCode = HttpStatus.methodNotAllowed,
      this.errors = null});

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey(ignore: true)
  final int statusCode;
  @override
  @JsonKey()
  final dynamic errors;

  @override
  String toString() {
    return 'NotAllowedFailure(message: $message, statusCode: $statusCode, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotAllowedFailure &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality().equals(other.errors, errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode,
      const DeepCollectionEquality().hash(errors));

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotAllowedFailureToJson(
      this,
    );
  }
}

abstract class _NotAllowedFailure implements NotAllowedFailure {
  const factory _NotAllowedFailure(
      {final String message,
      @JsonKey(ignore: true) final int statusCode,
      final dynamic errors}) = _$_NotAllowedFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  int get statusCode;
  @override
  dynamic get errors;
}

/// @nodoc
mixin _$AuthFailure {
  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  int get statusCode => throw _privateConstructorUsedError;
  dynamic get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_AuthFailure implements _AuthFailure {
  const _$_AuthFailure(
      {this.message = 'Unauthorized',
      @JsonKey(ignore: true) this.statusCode = HttpStatus.unauthorized,
      this.errors = null});

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey(ignore: true)
  final int statusCode;
  @override
  @JsonKey()
  final dynamic errors;

  @override
  String toString() {
    return 'AuthFailure(message: $message, statusCode: $statusCode, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthFailure &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality().equals(other.errors, errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode,
      const DeepCollectionEquality().hash(errors));

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthFailureToJson(
      this,
    );
  }
}

abstract class _AuthFailure implements AuthFailure {
  const factory _AuthFailure(
      {final String message,
      @JsonKey(ignore: true) final int statusCode,
      final dynamic errors}) = _$_AuthFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  int get statusCode;
  @override
  dynamic get errors;
}
