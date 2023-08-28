import 'package:flutter/material.dart';
import 'package:mpanies_admin/models/productItems.dart';
import 'package:mpanies_admin/shared/utils.dart';

class CustomerProfile extends StatefulWidget {
  const CustomerProfile({super.key});

  @override
  State<CustomerProfile> createState() => _CustomerProfileState();
}

class _CustomerProfileState extends State<CustomerProfile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(30),         
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            ),
            SizedBox(height: 20,),
            Divider(),
            SizedBox(height: 20,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Registered Date',style: headerText),
                Text("01-03-2023")
              ],
            ),
            SizedBox(height: 15,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Address', style: headerText),
                SizedBox(height: 5,),
                Text("Kampala")
              ],
            ),
            SizedBox(height: 15,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Last Order', style: headerText),
                SizedBox(height: 5,),
                Text("01-03-2023")
              ],
            )
          ],
        )
      ),
    );
  }
}