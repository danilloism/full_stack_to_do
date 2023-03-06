import 'package:typedefs/typedefs.dart';

abstract class Failure {
  String get message;
  NetworkErrors get errors;
  int get statusCode;
}
