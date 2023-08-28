import 'package:flutter/material.dart';
import 'package:mpanies_admin/models/productItems.dart';

class OrdersProfile extends StatefulWidget {
  const OrdersProfile({super.key});

  @override
  State<OrdersProfile> createState() => _OrdersProfileState();
}

class _OrdersProfileState extends State<OrdersProfile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(30),         
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [                    
            Text('Customer', style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14, )),
            SizedBox(height: 15,),
            Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: productItems.length,
                  itemBuilder: (content, index){
                    if (index == 1) { // Display only for index 1
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(productItems[index].customerName),
                          SizedBox(height: 5,),
                          InkWell(
                            onTap: () {},
                            child: Text(productItems[index].email, style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),)
                          ),
                          SizedBox(height: 5,),
                          Text(productItems[index].telNo),
                        ],
                      );
                    } else {
                      return SizedBox.shrink(); // Return an empty widget for other indices
                    }
                  },
                  
                )
              ],
            )
            

      
          ],
        ),
      ),
    );
  }
}