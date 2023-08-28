import 'package:flutter/material.dart';
import 'package:mpanies_admin/shared/responsive.dart';
import 'package:mpanies_admin/views/orders/widgets/ordersItemList.dart';
import 'package:mpanies_admin/views/orders/widgets/ordersProfile.dart';
import 'package:mpanies_admin/views/orders/widgets/shippingAddress.dart';
import 'package:mpanies_admin/views/orders/widgets/transactions.dart';

class ViewOrderDetails extends StatefulWidget {
  const ViewOrderDetails({super.key});

  @override
  State<ViewOrderDetails> createState() => _ViewOrderDetailsState();
}

class _ViewOrderDetailsState extends State<ViewOrderDetails> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //CategoryHeader(),
            Text('Order Details', style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,),),
            SizedBox(height: 20,),
            if (Responsive.isDesktop(context))
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      OrdersItem(),
                      SizedBox(height: 15,),
                      Transaction()
                    ],
                  ),
                ),
                SizedBox(width: 18,),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OrdersProfile(),
                      SizedBox(height: 15,),
                      ShippingAddress()
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}