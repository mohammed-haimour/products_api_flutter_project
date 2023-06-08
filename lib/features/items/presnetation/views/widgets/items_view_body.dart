import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app_api/features/items/presnetation/manegar/items_cubit/items_cubit.dart';
import 'package:store_app_api/features/items/presnetation/views/widgets/items_grid_view_builder.dart';

class ItemsViewBody extends StatelessWidget {
  const ItemsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemsCubit, ItemsState>(
      builder: (context, state) {
        if (state is ItemsLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is ItemsSuccess) {
          return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ItemsGridViewBuilder(
                items: state.items,
              ));
        } else if (state is ItemsFailure) {
          return Center(
            child: Text(
              "Some Thing Wen't Wrong \n ${state.err}",
              textAlign: TextAlign.center,
            ),
          );
        } else {
          return const Center();
        }
      },
    );
  }
}
