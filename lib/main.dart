import 'package:flutter/material.dart';
import 'package:mpanies_admin/views/categories/categoriesPage.dart';
import 'package:mpanies_admin/views/orders/ordersPage.dart';
import 'package:mpanies_admin/views/products/productsPage.dart';
import 'package:mpanies_admin/views/trial.dart';
import 'package:mpanies_admin/views/users/users_page.dart';
import 'package:mpanies_admin/views/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: DashBoard(),
      initialRoute: '/', // Set the initial route
      routes: {
        '/': (context) => Trial(), // Home screen
        '/categories': (context) => CategoriesPage(), // Categories Page
        '/products': (context) => ProductsPage(),// Products Page
        '/orders': (context) => OrdersPage(), // Orders Page
        '/users': (context) => UsersPage(), // Users page
        '/settings': (context) => SettingsPage(), // Settings page
      },
    );
  }
}