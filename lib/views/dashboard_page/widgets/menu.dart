import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mpanies_admin/views/categories_page/categoriesScreen.dart';
import 'package:mpanies_admin/views/dashboardScreen.dart';

import '../../../shared/responsive.dart';

class Menu extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const Menu({super.key, required this.scaffoldKey});

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List<Map<String, String>> menu = [
    { 'icon': 'assets/svg/home.svg', 'title': "Dashboard" },
    { 'icon': 'assets/svg/categories-1.svg', 'title': "Categories" },
    { 'icon': 'assets/svg/product-1.svg', 'title': "Products" },
    { 'icon': 'assets/svg/all-orders-1.svg', 'title': "Orders" },
    { 'icon': 'assets/svg/person-1.svg', 'title': "Users" },
    { 'icon': 'assets/svg/signout.svg', 'title': "Signout" },
  ];

  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          border: Border(
            right: BorderSide(
              color: Colors.grey[800]!,
              width: 1,
            ),
          ),
          color: const Color(0xFF171821)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: Responsive.isMobile(context) ? 40 : 80,
            ),
            for (var i = 0; i < menu.length; i++)
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(6.0),
                  ),
                  color: selected == i
                      ? Theme.of(context).primaryColor
                      : Colors.transparent,
                ),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selected = i;
                    });
                    widget.scaffoldKey.currentState!.closeDrawer();
                    navigateToScreen( context, i);
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 13, vertical: 7),
                        child: SvgPicture.asset(
                          menu[i]['icon']!,width: 15, height: 15,
                          color: selected == i ? Colors.black : Colors.grey,
                        ),
                      ),
                      Text(
                        menu[i]['title']!,
                        style: TextStyle(
                            fontSize: 16,
                            color: selected == i ? Colors.black : Colors.grey,
                            fontWeight: selected == i
                                ? FontWeight.w600
                                : FontWeight.normal),
                      )
                    ],
                  ),
                ),
              ),
          ],
        )),
      ),
    );
  }





  void navigateToScreen(BuildContext context,int index) {
    switch (index) {
      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (context) => DashBoard()));
        break;
      case 1:
        Navigator.push(context, MaterialPageRoute(builder: (context) => Categories()));
        break;
      case 2:
        Navigator.of(context).pushReplacementNamed('/products');
        break;
      case 3:
        Navigator.of(context).pushReplacementNamed('/orders');
        break;
      case 4:
        Navigator.of(context).pushReplacementNamed('/users');
        break;
      case 5:
        Navigator.of(context).pushReplacementNamed('/signout');
        break;
      // Add more cases for additional screens
    }
  }
}

