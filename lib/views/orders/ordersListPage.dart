import 'package:flutter/material.dart';
import 'package:mpanies_admin/views/orders/widgets/ordersList.dart';

import '../categories/widgets/header.dart';

class OrdersListPage extends StatefulWidget {
  const OrdersListPage({super.key});

  @override
  State<OrdersListPage> createState() => _OrdersListPageState();
}

class _OrdersListPageState extends State<OrdersListPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Orders', style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,),),
            SizedBox(height: 20,),
            OrdersListTable()
          ],
        ),
      ),
    );
  }
}