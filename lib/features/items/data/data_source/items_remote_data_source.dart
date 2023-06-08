import 'package:store_app_api/core/items_model/items.model.dart';
import 'package:store_app_api/core/services/api_service.dart';
import 'package:store_app_api/core/entity/item_entity.dart';

abstract class ItemsRemoteDataSource {
  Future<List<ItemsEntity>> fetchItems();
}

class ItemsRemoteDataSourceImpl extends ItemsRemoteDataSource {
  final ApiService apiService;

  ItemsRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<ItemsEntity>> fetchItems() async {
    var data = await apiService.get(endPoint: "");

    List<ItemsEntity> items = getItemsList(data);

    return items;
  }

  List<ItemsEntity> getItemsList(List<dynamic> data) {
    List<ItemsEntity> items = [];
    for (var itemsMap in data) {
      items.add(Items.fromJson(itemsMap));
    }
    return items;
  }
}
