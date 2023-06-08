import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:store_app_api/core/errors/failure.dart';
import 'package:store_app_api/features/items/data/data_source/items_remote_data_source.dart';
import 'package:store_app_api/core/entity/item_entity.dart';
import 'package:store_app_api/features/items/domain/repo/item_repo.dart';

class ItemsRepoImpl extends ItemsRepo {
  final ItemsRemoteDataSource itemsRemoteDataSource;

  ItemsRepoImpl(this.itemsRemoteDataSource);

  @override
  Future<Either<Failure, List<ItemsEntity>>> fetchItems() async {
    List<ItemsEntity> itemsList;
    try {
      itemsList = await itemsRemoteDataSource.fetchItems();
      return right(itemsList);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
