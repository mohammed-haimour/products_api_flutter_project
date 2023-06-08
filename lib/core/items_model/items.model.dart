import 'package:store_app_api/core/entity/item_entity.dart';

class Items extends ItemsEntity {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;

  Items({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
  }) : super(
    id!,
            itemTitle: title ?? "No Title",
            itemImage: image ??
                "https://t4.ftcdn.net/jpg/04/70/29/97/360_F_470299797_UD0eoVMMSUbHCcNJCdv2t8B2g1GVqYgs.jpg",
            itemPrice: price ?? 0);

  factory Items.fromJson(Map<String, dynamic> json) => Items(
        id: json['id'] as int?,
        title: json['title'] as String?,
        price: (json['price'] as num?)?.toDouble(),
        description: json['description'] as String?,
        category: json['category'] as String?,
        image: json['image'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'price': price,
        'description': description,
        'category': category,
        'image': image,
      };
}
