import 'package:dro_test/src/features/store/add_product.dart';
import 'package:dro_test/src/features/store/search_screen.dart';
import 'package:dro_test/src/features/store/store_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  StoreScreen.routeName: (ctx) => const StoreScreen(),
  SearchProductScreen.routeName: (ctx) => const SearchProductScreen(),
  AddProdut.routeName: (ctx) => const AddProdut(),
};
