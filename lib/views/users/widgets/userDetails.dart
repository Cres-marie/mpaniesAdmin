import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mpanies_admin/models/users.dart';

import '../../../shared/utils.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _joinedDateController = TextEditingController();
  final TextEditingController _joinedDateTimeController = TextEditingController();

  List<String> roles = [];

  @override
  void initState() {
    super.initState();
    // Extract role from userdetails
  
    roles = userdetails.map((item) => item.role).toSet().toList();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(30),         
        child: Form(
          key: _formKey,
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
        
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Date Joined', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 14, )),
                        SizedBox(height: 12,),  
                        TextFormField(
                          controller: _joinedDateController,
                          textInputAction: TextInputAction.next,
                          onTap: () {},
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
                            suffixIcon: IconButton(
                              onPressed: () {
                                _selectDate();
                              },
                              icon: const Icon(Icons.calendar_month))
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please select the Date';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),

                  SizedBox(width: 10,),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Last Login', style: TextStyle(fontWeight: FontWeight.w200, fontSize: 14)),
                        SizedBox(height: 12),
                        TextFormField(
                          controller: _joinedDateTimeController,
                          readOnly: true,
                          onTap: _selectDateTime, // Open both date and time pickers on tap
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: borderside)),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                            suffixIcon: Icon(Icons.calendar_today),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please select the Date and Time';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),


                ],
              ),
                            
              SizedBox(height: 15,),

              Text('Role', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 14, )),
              SizedBox(height: 12,),  
              Container(
                child: DropdownButtonFormField<String>(
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
                  items: roles.map((String value) {
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
        
              
        
        
              SizedBox(height: 15,),
        
        
        
              
              
            ],
          ),
        ),
      ),
    );
  }


  Future<void> _selectDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2300),
    );

    if (picked != null) {
      String formattedDate = DateFormat('yyyy-MM-dd').format(picked);

      setState(() {
        _joinedDateController.text = formattedDate.toString();
        //_dueDateController.text = formattedDate.toString();
        //'${pickedDate.day}/${pickedDate.month}/${pickedDate.year}';
      });
    }
  }

  Future<void> _selectDateTime() async {
    DateTime currentDate = DateTime.now();
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: currentDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2300),
    );

    if (pickedDate != null) {
      TimeOfDay currentTime = TimeOfDay.fromDateTime(currentDate);
      TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: currentTime,
      );

      if (pickedTime != null) {
        DateTime selectedDateTime = DateTime(
          pickedDate.year,
          pickedDate.month,
          pickedDate.day,
          pickedTime.hour,
          pickedTime.minute,
        );

        String formattedDateTime = DateFormat('yyyy-MM-dd HH:mm').format(selectedDateTime);

        setState(() {
          _joinedDateTimeController.text = formattedDateTime;
        });
      }
    }
  }

}