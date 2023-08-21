import 'package:flutter/material.dart';

import '../../../shared/utils.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
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

            Text('Email', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 14, )),
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

            Text('Password', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 14, )),
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

            Text('Date Joined', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 14, )),
            SizedBox(height: 12,),  
            TextFormField(
              controller: _joinedDateController,
              textInputAction: TextInputAction.next,
              onTap: () {},
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    //_selectDate();
                  },
                  icon: const Icon(Icons.calendar_month))),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select the issued Date';
                    }
                    return null;
                  },
            ),
                          

            SizedBox(height: 15,),


            SizedBox(height: 15,),



            
      
          ],
        ),
      ),
    );
  }
}