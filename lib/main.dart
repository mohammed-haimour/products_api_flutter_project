import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app_api/core/constants/themes.dart';
import 'package:store_app_api/core/services/api_service.dart';
import 'package:store_app_api/features/items/data/data_source/items_remote_data_source.dart';
import 'package:store_app_api/features/items/data/repos/itema_repo_impl.dart';
import 'package:store_app_api/features/items/domain/use_case/fetch_items_use_case.dart';
import 'package:store_app_api/features/items/presnetation/manegar/items_cubit/items_cubit.dart';
import 'package:store_app_api/features/items/presnetation/views/items_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ItemsCubit(FetchItemsUseCase(
          ItemsRepoImpl(ItemsRemoteDataSourceImpl(ApiService(Dio())))))
        ..fetchItems(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Store App',
        theme: lightTheme(),
        darkTheme: darkTheme(),
        themeMode: ThemeMode.dark,
        home: const ItemsView(),
      ),
    );
  }
}
