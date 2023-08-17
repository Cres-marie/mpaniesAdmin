import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../shared/utils.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(30),         
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                    
            Text('Name', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 14, )),
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

            SizedBox(height: 15,),

            Text('Description', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 14, )),
            SizedBox(height: 12,),  
            Container(
              child: TextFormField(
                maxLines: 5, // Make the box bigger
                minLines: 5, // Ensure a fixed number of lines
                maxLength: 1000, // Limit total characters
                validator: (value) {
                  if (value!.isEmpty || value.length < 20) {
                    return 'Description must be at least 20 characters';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: borderside,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  hintText: 'Enter product description...',
                ),
              ),
            ),

      
          ],
        ),
      ),
    );
  }
}