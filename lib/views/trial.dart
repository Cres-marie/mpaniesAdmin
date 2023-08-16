import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:mpanies_admin/views/categories/categoriesPage.dart';
import 'package:mpanies_admin/views/dashboard/dashboardPage.dart';
import 'package:mpanies_admin/views/orders/ordersPage.dart';
import 'package:mpanies_admin/views/products/productsPage.dart';
import 'package:mpanies_admin/views/settings_page.dart';
import 'package:mpanies_admin/views/users/users_page.dart';

import '../shared/utils.dart';
import 'dashboard/widgets/profile.dart';
import 'dashboard/widgets/search field.dart';

class Trial extends StatefulWidget {
  const Trial({Key? key}) : super(key: key);

  @override
  State<Trial> createState() => _TrialState();
}

class _TrialState extends State<Trial> {

  String _selectedRoute = '/'; // Initialize with the default route

  void _updateSelectedRoute(String newRoute) {
    setState(() {
      _selectedRoute = newRoute;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black), // Set the menu icon color to black
        actions: [
                Row(
        children: [
          SearchField(),
          SizedBox(width: 10),
          ProfileInfo(),
        ],
      ),

        ],
      ),
      sideBar: SideBar(
        items: [
          AdminMenuItem(icon: Icons.dashboard, title: 'Dashboard', route: '/'),
          AdminMenuItem(icon: Icons.people, title: 'Categories', route: '/categories'),
          AdminMenuItem(icon: Icons.people, title: 'Products', route: '/products'),
          AdminMenuItem(icon: Icons.people, title: 'Orders', route: '/orders'),
          AdminMenuItem(icon: Icons.people, title: 'Users', route: '/users'),
          AdminMenuItem(icon: Icons.settings, title: 'Settings', route: '/settings'),
        ],
        selectedRoute: _selectedRoute,
        onSelected: (item) {
          if (item.route != null) {
            _updateSelectedRoute(item.route!);
          }
        },
      ),
      body: Navigator(
        onGenerateRoute: (settings) {
          return MaterialPageRoute(builder: (context) => _buildBodyContent());
        },
      ), 
    );
  }

  Widget _buildBodyContent() {
    // Add logic to build different content based on the selectedRoute
    if (_selectedRoute == '/') {
      return DashBoardPage(); // Navigate to DashboardPage
    } else if (_selectedRoute == '/categories') {
      return CategoriesPage(); // Navigate to CategoriesPage
    } else if (_selectedRoute == '/products') {
      return ProductsPage(); // Navigate to SettingsPage
    } else if (_selectedRoute == '/orders') {
      return OrdersPage(); // Navigate to SettingsPage
    } else if (_selectedRoute == '/users') {
      return UsersPage(); // Navigate to UsersPage
    } else if (_selectedRoute == '/settings') {
      return SettingsPage(); // Navigate to SettingsPage
    } else {
      // You can handle other routes here
      return Center(child: Text('Unknown Route'));
    }
  }
}
