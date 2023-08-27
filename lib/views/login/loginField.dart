import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mpanies_admin/views/dashboard/dashboardPage.dart';
import 'package:mpanies_admin/views/trial.dart';

import '../../shared/utils.dart';
import '../hoverwidget.dart';


class LoginField extends StatelessWidget {
  
  const LoginField({
    Key? key,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 400,
          ),
          child: Form(
            child: Container(
              margin: EdgeInsets.only(top: 80, bottom: 80),
              child: Card(
                color: Colors.white,
                elevation: 2,
                child: Container(
                  padding: EdgeInsets.all(40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Center(child: SvgPicture.asset('assets/images/mpanies1.svg', height: 100, width: 180,colorFilter: ColorFilter.mode(buttonColor, BlendMode.srcIn),)),
                      
                      Text('Login', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 20, ) ),

                      SizedBox(height: 30,),  
                    
                      Text('UserName', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 14, )),
                      SizedBox(height: 10,),  
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(16),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.grey,
                              //width: 3,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black,
                              //width: 3,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          //hintText: 'Email',
                        ),
                      ),
                    
                      SizedBox(height: 20,),
                    
                      
                    
                      Text('Password', style: TextStyle(fontWeight: FontWeight.w200,fontSize: 14, )),
                      SizedBox(height: 10,),  
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(16),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.grey,
                              //width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black,
                              //width: 3,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Atleast 8 characters',
                        ),
                      ),

                      SizedBox(height: 20,),  
                    
                      Container(
                        height: 50,
                        width: 400,
                        child: ElevatedHoverButton(
                          text: 'Sign In',
                          
                          onTap: () {
                              Navigator.of(context).pushReplacementNamed('/');
                          },
                                    //icon: Icons.lock,
                        ),
                      ),
                    
                    
                    
                    
                    ],
                  ),
                ),
              ),
            ),
          ),
          
        ),
      ),
    );
  }
}
