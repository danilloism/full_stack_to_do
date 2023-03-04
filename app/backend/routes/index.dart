import 'package:dart_frog/dart_frog.dart';
import 'package:database/database.dart';

Future<Response> onRequest(RequestContext context) async {
  final connection = context.read<DatabaseConnection>();
  await connection.open();
  final response =
      await connection.db.query('select * from information_schema.tables');
  await connection.close();
  return Response.json(body: response.map((e) => e.toColumnMap()).toList());
}
