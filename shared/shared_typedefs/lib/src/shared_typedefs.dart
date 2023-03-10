/// {@template shared_typedefs}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}

typedef ValidationErrors = Map<String, List<String>>;

typedef Validator<ValueType extends Object?> = String? Function(
  ValueType? value,
);
