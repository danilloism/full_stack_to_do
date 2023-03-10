/// {@template shared_typedefs}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
class SharedTypedefs {
  /// {@macro shared_typedefs}
  const SharedTypedefs();
}

typedef ValidationErrors = Map<String, List<String>>;

typedef Validator<ValueType extends Object?> = String? Function(
  ValueType? value,
);
