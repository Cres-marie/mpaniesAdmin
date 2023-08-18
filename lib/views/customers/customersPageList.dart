import 'package:flutter/material.dart';
import 'package:mpanies_admin/views/categories/widgets/header.dart';
import 'package:mpanies_admin/views/customers/widgets/customersListTable.dart';

class CustomersPageList extends StatefulWidget {
  const CustomersPageList({super.key});

  @override
  State<CustomersPageList> createState() => _CustomersPageListState();
}

class _CustomersPageListState extends State<CustomersPageList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomerHeader(),
            SizedBox(height: 20,),
            CustomerListTable()
          ],
        ),
      ),
    );
  }
}