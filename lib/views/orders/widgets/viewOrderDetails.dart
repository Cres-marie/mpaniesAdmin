import 'package:flutter/material.dart';
import 'package:mpanies_admin/shared/responsive.dart';
import 'package:mpanies_admin/views/orders/widgets/ordersItemList.dart';

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
              children: [
                Expanded(
                  child: Column(
                    children: [
                      OrdersItem()
                
                    ],
                  ),
                ),
                Column(
                  children: [

                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}