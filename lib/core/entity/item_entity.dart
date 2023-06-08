class ItemsEntity {
  final String itemTitle;
  final String itemImage;
  final num itemPrice;
  final num itemId;
  ItemsEntity(this.itemId, {
    required this.itemTitle,
    required this.itemImage,
    required this.itemPrice,
  });
}
