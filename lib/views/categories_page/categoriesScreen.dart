import 'package:flutter/material.dart';
import 'package:mpanies_admin/views/categories_page/widgets/home2.dart';
import 'package:mpanies_admin/views/dashboard_page/widgets/header.dart';

import '../../shared/responsive.dart';
import '../dashboard_page/widgets/menu.dart';

class Categories extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const Categories({super.key, required this.scaffoldKey});


  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer:!Responsive.isDesktop(context) ? SizedBox(width: 250,
        child: Menu(scaffoldKey: _scaffoldKey)) :null,
        endDrawer:Responsive.isMobile(context) ? SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            //child: Profile()
        ) : null,
        body: SafeArea(
          child: Row(
            children: [
              if (Responsive.isDesktop(context))
                Expanded(
                  flex: 3,
                  child: SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: Menu(scaffoldKey: _scaffoldKey)),
                ),
              Expanded(flex: 8, child: Home2(scaffoldKey: _scaffoldKey)),
              if (!Responsive.isMobile(context))
                Expanded(
                  flex: 4,
                  child: Container(),
                ),
            ],
          ),
        )
      );
  }
}