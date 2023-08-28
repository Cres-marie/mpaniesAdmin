import 'package:flutter/material.dart';
import 'package:mpanies_admin/views/categories/widgets/categorylist.dart';
import 'package:mpanies_admin/views/categories/widgets/header.dart';

class CategoryListPage extends StatefulWidget {
  const CategoryListPage({super.key});

  @override
  State<CategoryListPage> createState() => _CategoryListPageState();
}

class _CategoryListPageState extends State<CategoryListPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //CategoryHeader(),
            Text('Categories', style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,),),
            SizedBox(height: 20,),
            CategoryListTable()
          ],
        ),
      ),
    );
  }
}