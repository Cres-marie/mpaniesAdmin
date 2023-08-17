import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:mpanies_admin/shared/utils.dart';
import 'package:mpanies_admin/views/categories/categoriesPage.dart';
import 'package:mpanies_admin/views/categories/widgets/addCategory.dart';
import 'package:mpanies_admin/views/products/widgets/addProduct.dart';

class CustomHeader extends StatelessWidget {
  final String headerText;
  final String buttonText;
  final VoidCallback onTap;
  final VoidCallback? onCancel; // Optional cancel callback
  final Color buttonColor;
  final Color hoverColor;

  const CustomHeader({
    required this.headerText,
    required this.buttonText,
    required this.onTap,
    this.onCancel, // Optional cancel callback
    required this.buttonColor , // Default button color
    required this.hoverColor, // Default hover color
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          headerText,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          child: Row(
            children: [
              if (onCancel != null)
                Container(
                  height: 40,
                  child: ElevatedButton(
                    onPressed: onCancel,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade200,
                      foregroundColor: Colors.transparent,
                    ),
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(width: 10),
              Container(
                height: 40,
                child: ElevatedButton(
                  onPressed: onTap,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                    foregroundColor: hoverColor,
                    // Add other button styles as needed
                  ),
                  child: Text(buttonText, style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black),),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


class CategoryHeader extends StatelessWidget {
  const CategoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomHeader(
      headerText: 'Categories',
      buttonText: 'Add Category',
      onTap: () {
        // Add your onTap logic here
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) {
              return AddCategory();
            },
            transitionDuration: Duration(seconds: 0), // No transition duration
          ),
        );
      },
      buttonColor: Colors.yellow, // Set the button color
      hoverColor: Colors.yellow[800]!, // Set the hover color
    );
  }
}


class AddCategoryHeader extends StatelessWidget {
  const AddCategoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomHeader(
      headerText: 'Add Category',
      buttonText: 'Save',
      onCancel: () {
        // Add your onCancel logic here
        //Navigator.pop(context);
      },
      onTap: () {
        // Add your onTap logic here
        // Navigator.pushReplacement(
        //   context,
        //   PageRouteBuilder(
        //     pageBuilder: (context, animation, secondaryAnimation) {
        //       return CategoriesPage();
        //     },
        //     transitionDuration: Duration(seconds: 0), // No transition duration
        //   ),
        // );
        Navigator.pop(context);
      },
      buttonColor: Colors.yellow, // Set the button color
      hoverColor: Colors.yellow[800]!, // Set the hover color
    );
  }
}


class ProductHeader extends StatelessWidget {
  const ProductHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomHeader(
      headerText: 'Products',
      buttonText: 'Add Product',
      onTap: () {
        // Add your onTap logic here
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) {
              return AddProduct();
            },
            transitionDuration: Duration(seconds: 0), // No transition duration
          ),
        );
      },
      buttonColor: Colors.yellow, // Set the button color
      hoverColor: Colors.yellow[800]!, // Set the hover color
    );
  }
}


class AddProductHeader extends StatelessWidget {
  const AddProductHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomHeader(
      headerText: 'Add Product',
      buttonText: 'Save',
      onCancel: () {
        // Add your onCancel logic here
        //Navigator.pop(context);
      },
      onTap: () {
        // Add your onTap logic here
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) {
              return CategoriesPage();
            },
            transitionDuration: Duration(seconds: 0), // No transition duration
          ),
        );
      },
      buttonColor: Colors.yellow, // Set the button color
      hoverColor: Colors.yellow[800]!, // Set the hover color
    );
  }
}


