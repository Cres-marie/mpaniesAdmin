import 'package:flutter/material.dart';
import 'package:mpanies_admin/views/categories/widgets/header.dart';
import 'package:mpanies_admin/views/products/widgets/productList.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductHeader(),
            SizedBox(height: 20,),
            ProductsListTable()
          ],
        ),
      ),
    );
  }
}