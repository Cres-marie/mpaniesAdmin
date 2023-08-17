import 'package:flutter/material.dart';

import '../../../shared/utils.dart';

class AddImages extends StatefulWidget {
  const AddImages({super.key});

  @override
  State<AddImages> createState() => _AddImagesState();
}

class _AddImagesState extends State<AddImages> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(30),         
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                    
            Text('', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 14, )),
            SizedBox(height: 12,),  
            Container(
              // child: TextFormField(
              //   decoration: InputDecoration(
              //     enabledBorder: OutlineInputBorder(
              //       borderSide: const BorderSide(
              //         color: borderside,
              //       )
              //     ),
              //     focusedBorder: OutlineInputBorder(
              //       borderSide: const BorderSide(
              //         color: Colors.grey,
              //       ),
              //     ),
              //     hintText: '',
              //   ),
              // ),
            ),

            

      
          ],
        ),
      ),
    );
  }
}