import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../shared/utils.dart';

class Pricing extends StatefulWidget {
  const Pricing({super.key});

  @override
  State<Pricing> createState() => _PricingState();
}

class _PricingState extends State<Pricing> {
  TextEditingController currentPriceController = TextEditingController();
  TextEditingController oldPriceController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Card(
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.all(30), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text('Pricing', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18, )),

              SizedBox(height: 25,),

              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Current Price', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 14, )),
                                  SizedBox(height: 12,),
                                  TextFormField(
                                    controller: currentPriceController,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(8.0),
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
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.0), // Add spacing between fields
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        //height: 40, // Adjust the height as needed
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Old Price', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 14, )),
                                  SizedBox(height: 12,),
                                  TextFormField(
                                    controller: oldPriceController,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(8.0),
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
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
