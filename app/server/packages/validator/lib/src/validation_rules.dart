// ignore_for_file: public_member_api_docs

class ValidationRules {
  const ValidationRules({
    this.minLength,
    this.maxLenght,
    this.mustContain,
    this.required = true,
    this.notNull,
    this.notEmpty,
  });

  final bool required;
  final bool? notNull;
  final bool? notEmpty;
  final int? minLength;
  final int? maxLenght;
  final String? mustContain;
}
