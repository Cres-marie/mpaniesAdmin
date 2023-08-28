import 'package:flutter/material.dart';
import 'package:mpanies_admin/models/productItems.dart';

class ShippingAddress extends StatefulWidget {
  const ShippingAddress({super.key});

  @override
  State<ShippingAddress> createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(30),         
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [                    
            Text('Shipping Address', style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14, )),
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
                          
                          Text(productItems[index].country),
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