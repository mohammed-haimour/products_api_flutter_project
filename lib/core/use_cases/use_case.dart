import 'package:dartz/dartz.dart';
import 'package:store_app_api/core/errors/failure.dart';

abstract class UseCase<Type> {
  Future<Either<Failure, Type>> call();
}

class NoParam {}
