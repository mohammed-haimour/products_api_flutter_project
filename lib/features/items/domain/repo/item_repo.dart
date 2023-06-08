import 'package:dartz/dartz.dart';
import 'package:store_app_api/core/errors/failure.dart';
import 'package:store_app_api/core/entity/item_entity.dart';

abstract class ItemsRepo {
  Future<Either<Failure, List<ItemsEntity>>> fetchItems();
}
