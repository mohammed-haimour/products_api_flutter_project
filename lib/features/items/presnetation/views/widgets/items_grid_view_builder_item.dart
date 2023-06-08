import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:store_app_api/core/constants/custom_colors.dart';
import 'package:store_app_api/core/constants/styles.dart';

import 'package:store_app_api/core/entity/item_entity.dart';

class ItemsGridViewBuilderItem extends StatelessWidget {
  const ItemsGridViewBuilderItem({super.key, required this.item});
  final ItemsEntity item;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
                flex: 4,
                child: CachedNetworkImage(
                  imageUrl: item.itemImage,
                )),
            Expanded(
                child: Text(
              item.itemTitle,
              maxLines: 2,
              style: Styles.textStyle14
                  .copyWith(fontWeight: FontWeight.bold, color: customBlack),
            )),
            // const SizedBox(
            //   height: 20,
            // )
          ],
        ),
      ),
    );
  }
}
