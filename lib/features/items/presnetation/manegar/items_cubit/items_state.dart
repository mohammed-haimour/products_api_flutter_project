part of 'items_cubit.dart';

@immutable
abstract class ItemsState {}

class ItemsInitial extends ItemsState {}

class ItemsLoading extends ItemsState {}

class ItemsSuccess extends ItemsState {
  final List<ItemsEntity> items;

  ItemsSuccess(this.items);
}

class ItemsFailure extends ItemsState {
  final String err;

  ItemsFailure(this.err);
}
