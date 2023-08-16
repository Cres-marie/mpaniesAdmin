import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mpanies_admin/shared/utils.dart';
import 'package:mpanies_admin/views/categories/widgets/header.dart';

class AddCategory extends StatefulWidget {
  const AddCategory({super.key});

  @override
  State<AddCategory> createState() => _AddCategoryState();
}

class _AddCategoryState extends State<AddCategory> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            AddCategoryHeader(),
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