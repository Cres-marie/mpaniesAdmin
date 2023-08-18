import 'package:flutter/material.dart';
import 'package:mpanies_admin/views/categories/categoryListPage.dart';
import 'package:mpanies_admin/views/categories/widgets/addCategory.dart';
import 'package:mpanies_admin/views/categories/widgets/categorylist.dart';
import 'package:mpanies_admin/views/orders/ordersListPage.dart';
import 'package:mpanies_admin/views/orders/ordersPage.dart';
import 'package:mpanies_admin/views/orders/widgets/viewOrderDetails.dart';
import 'package:mpanies_admin/views/products/productListPage.dart';
import 'package:mpanies_admin/views/products/widgets/addProduct.dart';
import 'package:mpanies_admin/views/trial.dart';
import 'package:mpanies_admin/views/customers/customersPageList.dart';
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
        '/categories/list': (context) => CategoryListPage(), // Category List Page
        '/categories/add': (context) => AddCategory(), // Add Category Page
        '/products/list': (context) => ProductListPage(), // Product List Page
        '/products/add': (context) => AddProduct(), // Add Product Page
        '/orders/list': (context) => OrdersListPage(), // Orders List Page
        '/orders/details': (context) => ViewOrderDetails(), // Orders Page
        '/customers/list': (context) => CustomersPageList(), // Users page
        '/settings': (context) => SettingsPage(), // Settings page
      },
    );
  }
}