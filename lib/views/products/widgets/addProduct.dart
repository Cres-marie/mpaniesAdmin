import 'package:flutter/material.dart';
import 'package:mpanies_admin/views/products/widgets/addImages.dart';
import 'package:mpanies_admin/views/products/widgets/addVideo.dart';
import 'package:mpanies_admin/views/products/widgets/pricing.dart';
import 'package:mpanies_admin/views/products/widgets/productDetails.dart';
import 'package:mpanies_admin/views/products/widgets/productStock.dart';
import 'package:mpanies_admin/views/products/widgets/productdropdown.dart';

import '../../../models/productItems.dart';
import '../../../shared/responsive.dart';
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

            if (Responsive.isDesktop(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ProductDetails()
                ),
                SizedBox(width: 20,),
                Container(
                  width: MediaQuery.of(context).size.width/4,
                  child: ProductDropDown()
                )
              ],
            ),

            if (!Responsive.isDesktop(context))
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductDetails(),
                SizedBox(width: 20,),
                ProductDropDown()
              ],
            ),

            SizedBox(height: 20,),

            if (Responsive.isDesktop(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Pricing()
                ),
                SizedBox(width: 20,),
                Container(
                  width: MediaQuery.of(context).size.width/4,
                )
              ],
            ),
            if (!Responsive.isDesktop(context))
            Pricing(),

            
            SizedBox(height: 20,),
            if (Responsive.isDesktop(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ProductStock()
                ),
                SizedBox(width: 20,),
                Container(
                  width: MediaQuery.of(context).size.width/4,
                )
              ],
            ),

            if (!Responsive.isDesktop(context))
            ProductStock(),

            SizedBox(height: 20,),
            if (Responsive.isDesktop(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: AddImages()
                ),
                SizedBox(width: 20,),
                Container(
                  width: MediaQuery.of(context).size.width/4,
                )
              ],
            ),

            SizedBox(height: 20,),

            if (!Responsive.isDesktop(context))
            AddImages(),

            SizedBox(height: 20,),
            if (Responsive.isDesktop(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: AddVideo()
                ),
                SizedBox(width: 20,),
                Container(
                  width: MediaQuery.of(context).size.width/4,
                )
              ],
            ),

            if (!Responsive.isDesktop(context))
            AddVideo(),
          
          ]
        ),
      ),
    );
  }
}