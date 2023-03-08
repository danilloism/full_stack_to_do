import 'dart:developer';

import 'package:database/src/database_options.dart';
import 'package:postgres/postgres.dart';

part 'postgres_connection.dart';

abstract class _DatabaseConnection {
  // ignore: avoid_unused_constructor_parameters
  _DatabaseConnection(this._options);

  final DatabaseOptions _options;

  Future<void> open();
  Future<void> close();
  Future<dynamic> query(
    String query, {
    Map<String, dynamic>? substitutionValues,
  });
}
