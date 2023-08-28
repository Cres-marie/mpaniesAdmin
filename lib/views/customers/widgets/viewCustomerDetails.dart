import 'package:flutter/material.dart';
import 'package:mpanies_admin/shared/responsive.dart';
import 'package:mpanies_admin/views/customers/widgets/customersOrderList.dart';
import 'package:mpanies_admin/views/customers/widgets/customersProfile.dart';

class ViewCustomerDetails extends StatefulWidget {
  const ViewCustomerDetails({super.key});

  @override
  State<ViewCustomerDetails> createState() => _ViewCustomerDetailsState();
}

class _ViewCustomerDetailsState extends State<ViewCustomerDetails> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //CategoryHeader(),
            Text('Customer Details', style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,),),
            SizedBox(height: 20,),
            if (Responsive.isDesktop(context))
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  //flex: 2,
                  child: Column(
                    children: [
                      CustomerProfile(),
            
                    ],
                  ),
                ),
                SizedBox(width: 18,),
                Expanded(
                  flex:2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomersOrderList()
                      
                      
                    ],
                  ),
                )
              ],
            ),

            if (!Responsive.isDesktop(context))
            Column(
              children: [
                CustomerProfile(),
                SizedBox(height: 15,),
                CustomersOrderList()
              ],
            )
          ],
        ),
      ),
    );
  }
}