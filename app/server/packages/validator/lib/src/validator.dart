// ignore_for_file: avoid_returning_this, public_member_api_docs

import 'dart:collection';

import 'package:typedefs/typedefs.dart';
import 'package:validator/src/validation_rules.dart';

export './validation_rules.dart';

/// {@template validator}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
abstract class Validator {
  bool get isValid;
  ValidationErrors get errors;
  void clear();
}

class MapValidator implements Validator {
  MapValidator(this._map);

  final Map<String, dynamic> _map;
  final ValidationErrors _errors = {};

  MapValidator addNameValidation([
    ValidationRules rules = const ValidationRules(),
  ]) {
    final name = _map['name'] as String? ?? '';
    _errors['name'] ??= [];

    if (name.isEmpty) {
      _errors['name']!.add('Name is required');
    }

    return this;
  }

  MapValidator addEmailValidation([
    ValidationRules rules = const ValidationRules(),
  ]) {
    final email = _map['email'] as String? ?? '';
    _errors['email'] ??= [];

    if (email.isEmpty) {
      _errors['email']!.add('Email is required');
    }

    if (!email.contains('@')) {
      errors['email']!.add('Email is invalid');
    }

    return this;
  }

  MapValidator addPasswordValidation([
    ValidationRules rules = const ValidationRules(minLength: 6),
  ]) {
    final password = _map['password'] as String? ?? '';
    _errors['password'] ??= [];

    if (password.isEmpty) {
      _errors['password']!.add('Password is required');
    }

    final minLength = rules.minLength;
    if (minLength != null && password.length < minLength) {
      _errors['password']!
          .add('Password must have at least $minLength characters');
    }

    final maxLength = rules.maxLenght;

    if (maxLength != null && password.length > maxLength) {
      _errors['password']!
          .add('Password must have a maximium of $maxLength characters');
    }

    return this;
  }

  MapValidator addCustomValidator<T extends Object?>({
    required String fieldName,
    required String? Function(T? value) validation,
  }) {
    final error = validation(_map[fieldName] as T);
    _errors[fieldName] ??= [];

    if (error != null) {
      _errors[fieldName] ??= [];
      _errors[fieldName]!.add(error);
    }

    if (_errors[fieldName]!.isEmpty) {
      _errors.remove(fieldName);
    }
    return this;
  }

  @override
  ValidationErrors get errors => UnmodifiableMapView(_errors);

  @override
  bool get isValid => _errors.isEmpty;

  @override
  void clear() => _errors.clear();
}
