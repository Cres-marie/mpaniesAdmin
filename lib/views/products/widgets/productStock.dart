import 'package:flutter/material.dart';

import '../../../shared/utils.dart';

class ProductStock extends StatefulWidget {
  const ProductStock({super.key});

  @override
  State<ProductStock> createState() => _ProductStockState();
}

class _ProductStockState extends State<ProductStock> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(30),         
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text('Quantity', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18, )),

            SizedBox(height: 25,),

            Text('Stock Quantity', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 14, )),
            SizedBox(height: 12,),  
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: borderside,
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  hintText: '',
                ),
              ),
            ),

            

      
          ],
        ),
      ),
    );
  }
}