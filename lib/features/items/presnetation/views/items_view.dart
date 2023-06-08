import 'package:flutter/material.dart';
import 'package:store_app_api/features/items/presnetation/views/widgets/items_view_body.dart';

class ItemsView extends StatelessWidget {
  const ItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Items"),
      ),
      body: const ItemsViewBody(),
    );
  }
}
