import 'dart:developer';
import 'dart:io';

import 'package:data_source/data_source.dart';
import 'package:either_dart/either.dart';
import 'package:exceptions/exceptions.dart';
import 'package:failures/failures.dart';
import 'package:models/models.dart';
import 'package:repository/src/password_hasher_service.dart';
import 'package:typedefs/typedefs.dart';

abstract class UserRepository {
  Future<Either<Failure, User>> getById(UserId id);
  Future<Either<Failure, User>> create(CreateUserDto user);
  Future<Either<Failure, User>> login(LoginUserDto login);
  Future<Either<Failure, User>> getByEmail(String email);
}

class UserRepositoryImpl implements UserRepository {
  const UserRepositoryImpl(this._dataSource, this._passwordHasherService);
  final UserDataSource _dataSource;
  final PasswordHasherService _passwordHasherService;

  @override
  Future<Either<Failure, User>> create(CreateUserDto dto) async {
    try {
      final userExists = await getByEmail(dto.email);
      if (userExists.isRight) {
        throw const ServerException('Email already in use');
      }
      final hashedPassword = _passwordHasherService.hashPassword(
        dto.password,
      );
      final user = await _dataSource.create(
        dto.copyWith(
          password: hashedPassword,
        ),
        inDifferenteConnection: true,
      );
      return Right(user);
    } on ServerException catch (e) {
      log(e.message);
      return Left(
        ServerFailure(message: e.message),
      );
    }
  }

  @override
  Future<Either<Failure, User>> getByEmail(String email) async {
    try {
      final user = await _dataSource.getByEmail(email);
      return Right(user);
    } catch (e) {
      log(e.toString());
      return const Left(
        ServerFailure(
          message: 'User not found',
          statusCode: HttpStatus.notFound,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, User>> getById(UserId id) async {
    try {
      final res = await _dataSource.getById(id);
      return Right(res);
    } on NotFoundException catch (e) {
      log(e.message);
      return Left(
        ServerFailure(
          message: e.message,
          statusCode: e.statusCode,
        ),
      );
    } on ServerException catch (e) {
      log(e.message);
      return Left(
        ServerFailure(message: e.message),
      );
    }
  }

  @override
  Future<Either<Failure, User>> login(LoginUserDto login) async {
    try {
      final email = login.email;
      final userExists = await getByEmail(email);
      if (userExists.isLeft) {
        throw const ServerException('Invalid email or password');
      }
      final user = userExists.right;
      final password = login.password;
      final isPasswordCorrect =
          _passwordHasherService.checkPassword(password, user.password);
      if (!isPasswordCorrect) {
        throw const ServerException('Invalid email or password');
      }
      return Right(user);
    } catch (e) {
      log(e.toString());
      return const Left(
        ServerFailure(
          message: 'Invalid email or password',
          statusCode: HttpStatus.unauthorized,
        ),
      );
    }
  }
}
