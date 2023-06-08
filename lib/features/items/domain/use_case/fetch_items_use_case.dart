import 'package:dartz/dartz.dart';
import 'package:store_app_api/core/errors/failure.dart';
import 'package:store_app_api/core/entity/item_entity.dart';
import 'package:store_app_api/features/items/domain/repo/item_repo.dart';
import 'package:store_app_api/core/use_cases/use_case.dart';

class FetchItemsUseCase extends UseCase<List<ItemsEntity>> {
  final ItemsRepo itemRepo;

  FetchItemsUseCase(this.itemRepo);

  @override
  Future<Either<Failure, List<ItemsEntity>>> call() async {
    return await itemRepo.fetchItems();
  }
}
