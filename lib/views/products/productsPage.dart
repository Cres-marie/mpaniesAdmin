import 'package:flutter/material.dart';
import 'package:mpanies_admin/views/categories/widgets/header.dart';
import 'package:mpanies_admin/views/products/widgets/productList.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
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