// ignore_for_file: avoid_returning_this, public_member_api_docs

import 'dart:collection';

import 'package:typedefs/typedefs.dart';

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

  void addNameValidation() {
    return addCustomValidaton<String>(
      key: 'name',
      validation: (value) {
        final name = value ?? '';

        if (name.isEmpty) {
          return 'Name is required';
        }

        return null;
      },
    );
  }

  void addRequiredStringValidation(String key) {
    return addCustomValidaton<String>(
      key: key,
      validation: (value) =>
          value == null || value.isEmpty ? '$key is required' : null,
    );
  }

  void addNullableAndNotEmptyValidation(String key) {
    return addCustomValidaton<dynamic>(
      key: key,
      validation: (value) {
        if (value != null) {
          if ((value is String && value.isEmpty) ||
              (value is Iterable && value.isEmpty)) {
            // ignore: avoid_escaping_inner_quotes
            return '$key must not have an empty value if it\'s not null';
          }
        }

        return null;
      },
    );
  }

  void addMinNumberOfFieldsRequiredValidaton({
    required Set<String> fields,
    required int min,
  }) {
    assert(
      fields.length > min,
      'fieldNames lenght must be greater than min',
    );

    var withValue = 0;

    for (final field in fields) {
      addCustomValidaton<dynamic>(
        key: field,
        validation: (value) {
          if (value != null) {
            if (value is String && value.isEmpty) {
              return null;
            }

            withValue++;
          }

          return null;
        },
      );
    }

    return addCustomValidaton(
      key: 'body',
      validation: (value) {
        if (withValue < min) {
          return 'At least one of the following fields must be provided: $fields';
        }

        return null;
      },
    );
  }

  void addEmailValidation({bool required = true}) {
    return addCustomValidaton<String>(
      key: 'email',
      validation: (value) {
        if (!required && value == null) {
          return null;
        }

        if (value == null || value.isEmpty) {
          return 'Email is required';
        }

        if (!value.contains('@')) {
          return 'Email is invalid';
        }

        return null;
      },
    );
  }

  void _removeErrorEntryIfEmpty(String key) {
    final errors = _errors[key];

    if (errors == null || errors.isEmpty) {
      _errors.remove(key);
    }
  }

  void addPasswordValidation() {
    return addCustomValidaton<String>(
      key: 'password',
      validation: (password) {
        password ??= '';
        if (password.isEmpty) {
          return 'Password is required';
        }

        if (password.length < 6) {
          return 'Password must have at least 6 characters';
        }

        return null;
      },
    );
  }

  void addCustomValidaton<ValueType extends Object?>({
    required String key,
    required String? Function(ValueType? value) validation,
  }) {
    final error = validation(_map[key] as ValueType?);
    _errors[key] ??= [];

    if (error != null) {
      _errors[key]!.add(error);
    }

    _removeErrorEntryIfEmpty(key);
  }

  @override
  ValidationErrors get errors => UnmodifiableMapView(_errors);

  @override
  bool get isValid => _errors.isEmpty;

  @override
  void clear() => _errors.clear();
}
