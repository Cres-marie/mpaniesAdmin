import 'package:flutter/material.dart';
import 'package:mpanies_admin/views/categories/widgets/categorylist.dart';
import 'package:mpanies_admin/views/categories/widgets/header.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoryHeader(),
            SizedBox(height: 20,),
            CategoryListTable()
          ],
        ),
      ),
    );
  }
}


