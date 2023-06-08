import 'package:flutter/material.dart';
import 'package:store_app_api/core/entity/item_entity.dart';
import 'package:store_app_api/features/items/presnetation/views/widgets/items_grid_view_builder_item.dart';

class ItemsGridViewBuilder extends StatelessWidget {
  const ItemsGridViewBuilder({super.key, required this.items});
  final List<ItemsEntity> items;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.6,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      itemBuilder: (context, index) {
        return ItemsGridViewBuilderItem(
          item: items[index],
        );
      },
    );
  }
}
