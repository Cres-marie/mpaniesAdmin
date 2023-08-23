import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:mpanies_admin/shared/pageStateManager.dart';
import 'package:mpanies_admin/views/categories/categoryListPage.dart';
import 'package:mpanies_admin/views/categories/widgets/addCategory.dart';
import 'package:mpanies_admin/views/dashboard/dashboardPage.dart';
import 'package:mpanies_admin/views/login/loginField.dart';
import 'package:mpanies_admin/views/products/productListPage.dart';
import 'package:mpanies_admin/views/products/widgets/addProduct.dart';
import 'package:mpanies_admin/views/customers/customersPageList.dart';
import 'package:mpanies_admin/views/users/usersListPage.dart';
import 'package:mpanies_admin/views/users/widgets/addUser.dart';


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

  @override
  void initState() {
    super.initState();
    
  }

  //a GlobalKey<NavigatorState> to manage navigation
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  void _handleLogout() {
  // Perform logout logic here, such as clearing user session or credentials
  // Update the current page to the initial route

  // Navigate to a fresh page (login or home page)
  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginField())); // Replace LoginPage with the appropriate page
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
          AdminMenuItem(
            icon: Icons.category, 
            title: 'Categories', 
            //route: '/categories',
            children: [
                AdminMenuItem(title: 'Categories List', route: '/categories/list'),
                //AdminMenuItem(title: 'Add Category', route: '/categories/add'),

            ]
          ),
          AdminMenuItem(
            icon: Icons.production_quantity_limits, 
            title: 'Products', 
            //route: '/products',
            children: [
              AdminMenuItem(title: 'Products List', route: '/products/list'),
              AdminMenuItem(title: 'Add Product', route: '/products/add'),
            ]
          ),
          AdminMenuItem(
            icon: Icons.menu, 
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
          AdminMenuItem(
            icon: Icons.people, 
            title: 'Users', 
            //route: '/orders',
            children: [
              AdminMenuItem(title: 'Users ', route: '/users/list'),
              AdminMenuItem(title: 'Add User', route: '/users/add'),
            ]
          ),
          AdminMenuItem(icon: Icons.settings, title: 'Settings', route: '/settings'),
          AdminMenuItem(icon: Icons.logout, title: 'Logout', route: '/logout',),
        ],
        selectedRoute: '/',
        onSelected: (item) {
          if (item.route == '/logout') {
            _handleLogout(); // Call the logout function
          } else {
            PageStateManager.setCurrentPage(item.route!);
          _navigatorKey.currentState?.pushNamed(item.route!);
          
            
          }
        },
      ),
      body: Navigator(
        key: _navigatorKey,
        onGenerateRoute: (menu) {
          // Handle different routes here
          if (menu.name == '/') {
            PageStateManager.setCurrentPage('/');
            return PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => DashBoardPage(),
              transitionDuration: Duration(seconds: 0), // Set the transition duration to 0 seconds
            );
          } else if (menu.name == '/categories/list') {
            PageStateManager.setCurrentPage('/categories/list');
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
          }else if (menu.name == '/users/list') {
            return PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => UsersListPage(),
              transitionDuration: Duration(seconds: 0), // Set the transition duration to 0 seconds
            );
          }else if (menu.name == '/users/add') {
            return PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => AddUser(),
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
