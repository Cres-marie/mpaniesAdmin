import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../models/productItems.dart';

class ProductDropDown extends StatefulWidget {
  const ProductDropDown({super.key});

  @override
  State<ProductDropDown> createState() => _ProductDropDownState();
}

class _ProductDropDownState extends State<ProductDropDown> {

  List<String> subCategories = [];
  List<String> categories = [];

  @override
  void initState() {
    super.initState();
    // Extract unique brands and categories from productItems
    subCategories = productItems.map((item) => item.subCategory).toSet().toList();
    categories = productItems.map((item) => item.category).toSet().toList();
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      //width: MediaQuery.of(context).size.width/4,
      child: Card(
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.all(30),         
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text('Category', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 14, )),
              SizedBox(height: 12,),  
              Container(
                child: DropdownButtonFormField<String>(
                  items: categories.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                          // Handle category selection
                  },
                ),
              ),
              TextButton(
                onPressed: () {
                  _showAddCategoryDialog(); // Implement this function
                },
                child: Text('Add New Category'),
              ),

              SizedBox(height: 15,),


              Text('SubCategory', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 14, )),
              SizedBox(height: 12,),  
              Container(
                child: DropdownButtonFormField<String>(
                  items: subCategories.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                          // Handle brand selection
                  },
                ),
              ),
              TextButton(
                onPressed: () {
                  _showAddCategoryDialog(); // Implement this function
                },
                child: Text('Add New Sub Category'),
              ),

              
                    
              

      
            ],
          ),
        ),
      )
    );
  }


  // Function to show the dialog for adding a category
  void _showAddCategoryDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add New'),
          content: TextField(
            // Implement text field for entering category name
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Handle adding the category and updating state
                Navigator.pop(context);
              },
              child: Text('Add'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}