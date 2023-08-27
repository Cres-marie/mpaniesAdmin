import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:mpanies_admin/models/productItems.dart';

class AddVideo extends StatefulWidget {
  const AddVideo({super.key});

  @override
  State<AddVideo> createState() => _AddVideoState();
}

class _AddVideoState extends State<AddVideo> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(30),         
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                    
            Text('Add Video', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18, )),
            SizedBox(height: 12,),  
            
            Container(
              child: Column(
                children: [
                  InkWell(
                    onTap: (){},
                    child: Container(
                      child: DottedBorder(
                        color: Colors.grey,
                        radius: Radius.circular(20),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 400,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.upload,size: 48,color: Colors.grey,),
                              SizedBox(height: 10),
                              Text('Upload Video',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey,),
                              ),
                            ],
                          ),
                        )
                      ),                    
                    ),
                  ),

                  SizedBox(height: 15,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // The following code will display the slide images for index 1
                      for (final slideImage in productItems[1].slideImages)
                      Stack(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              border: Border.all(
                              color: Colors.grey,
                              style: BorderStyle.solid,
                              
                              ),
                            ),
                            child: Image.asset(slideImage, fit: BoxFit.cover),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child:InkWell(
                              onTap: () {
                                
                              },
                              child: Icon(Icons.remove_circle, color: Colors.black,)
                            ),
                                                
                          ),
                        ],
                      ),
                    ],
                  )      
                ],
              ),
            ),
          ]
        )
      )
    );
  }
}
