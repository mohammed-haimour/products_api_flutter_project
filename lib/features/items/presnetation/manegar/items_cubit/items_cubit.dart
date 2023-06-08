// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app_api/core/entity/item_entity.dart';

import 'package:store_app_api/features/items/domain/use_case/fetch_items_use_case.dart';

part 'items_state.dart';

class ItemsCubit extends Cubit<ItemsState> {
  ItemsCubit(
    this.fetchItemsUseCase,
  ) : super(ItemsInitial());

  final FetchItemsUseCase fetchItemsUseCase;

  Future<void> fetchItems() async {
    emit(ItemsLoading());
    var result = await fetchItemsUseCase.call();
    result.fold((err) {
      emit(ItemsFailure(err.msg));
    }, (item) {
      emit(ItemsSuccess(item));
    });
  }
}
