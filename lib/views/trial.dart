import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:mpanies_admin/views/categories/categoryListPage.dart';
import 'package:mpanies_admin/views/categories/widgets/addCategory.dart';
import 'package:mpanies_admin/views/categories/widgets/categorylist.dart';
import 'package:mpanies_admin/views/dashboard/dashboardPage.dart';
import 'package:mpanies_admin/views/orders/ordersPage.dart';
import 'package:mpanies_admin/views/orders/widgets/viewOrderDetails.dart';
import 'package:mpanies_admin/views/products/productListPage.dart';
import 'package:mpanies_admin/views/products/widgets/addProduct.dart';
import 'package:mpanies_admin/views/settings_page.dart';
import 'package:mpanies_admin/views/customers/customersPageList.dart';

import '../shared/utils.dart';
import 'dashboard/widgets/profile.dart';
import 'dashboard/widgets/search field.dart';
import 'orders/ordersListPage.dart';

class Trial extends StatefulWidget {
  const Trial({Key? key}) : super(key: key);

  @override
  State<Trial> createState() => _TrialState();
}

class _TrialState extends State<Trial> {

  // Add a GlobalKey<NavigatorState> to manage navigation
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();



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
          AdminMenuItem(
            icon: Icons.people, 
            title: 'Categories', 
            //route: '/categories',
            children: [
                AdminMenuItem(title: 'Categories List', route: '/categories/list'),
                AdminMenuItem(title: 'Add Category', route: '/categories/add'),

            ]
          ),
          AdminMenuItem(
            icon: Icons.people, 
            title: 'Products', 
            //route: '/products',
            children: [
              AdminMenuItem(title: 'Products List', route: '/products/list'),
              AdminMenuItem(title: 'Add Product', route: '/products/add'),
            ]
          ),
          AdminMenuItem(
            icon: Icons.people, 
            title: 'Orders', 
            //route: '/orders',
            children: [
              AdminMenuItem(title: 'Orders List', route: '/orders/list'),
              AdminMenuItem(title: 'Order Details', route: '/oders/details'),
            ]
          ),
          AdminMenuItem(
            icon: Icons.people, 
            title: 'Customers', 
            //route: '/customers'
            children: [
              AdminMenuItem(title: 'Customers List', route: '/customers/list'),
            ]
          ),
          AdminMenuItem(icon: Icons.settings, title: 'Settings', route: '/settings'),
        ],
        selectedRoute: '/',
        onSelected: (item) {
          if (item.route != null) {
            _navigatorKey.currentState?.pushNamed(item.route!);
          }
        },
      ),
      body: Navigator(
        key: _navigatorKey,
        onGenerateRoute: (menu) {
          // Handle different routes here
          if (menu.name == '/') {
            return PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => DashBoardPage(),
              transitionDuration: Duration(seconds: 0), // Set the transition duration to 0 seconds
            );
          } else if (menu.name == '/categories/list') {
            return PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => CategoryListPage(),
              transitionDuration: Duration(seconds: 0), // Set the transition duration to 0 seconds
            );
          } else if (menu.name == '/categories/add') {
            return PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => AddCategory(),
              transitionDuration: Duration(seconds: 0), // Set the transition duration to 0 seconds
            );
          }else if (menu.name == '/products/list') {
            return PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => ProductListPage(),
              transitionDuration: Duration(seconds: 0), // Set the transition duration to 0 seconds
            );
          }else if (menu.name == '/products/add') {
            return PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => AddProduct(),
              transitionDuration: Duration(seconds: 0), // Set the transition duration to 0 seconds
            );
          }else if (menu.name == '/orders/list') {
            return PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => OrdersListPage(),
              transitionDuration: Duration(seconds: 0), // Set the transition duration to 0 seconds
            );
          }else if (menu.name == '/customers/list') {
            return PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => CustomersPageList(),
              transitionDuration: Duration(seconds: 0), // Set the transition duration to 0 seconds
            );
          }
          // Add more routes for other admin menu items
          // ...

          // Default route (e.g., dashboard)
          return  MaterialPageRoute(
            builder: (context) => Center(child: Text('Not Found')),
          );
        },
      ),
    );
  }

  
}
