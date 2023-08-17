import 'package:flutter/material.dart';

import '../../../shared/utils.dart';
import '../../categories/widgets/header.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            AddProductHeader(),
            SizedBox(height: 20,), 
            Card(
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
                          //contentPadding: const EdgeInsets.all(2),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: borderside,
                                      //width: 1,
                            ),
                        //borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.grey,
                                      //width: 3,
                            ),
                            //borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: '',
                        ),
                      ),
                    ),
      
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}