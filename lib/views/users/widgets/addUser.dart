import 'package:flutter/material.dart';
import 'package:mpanies_admin/views/users/widgets/userDetails.dart';

import '../../../shared/utils.dart';
import '../../categories/widgets/header.dart';

class AddUser extends StatefulWidget {
  const AddUser({super.key});

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            AddUserHeader(),
            SizedBox(height: 20,), 
            UserDetails()
          ],
        ),
      ),
    );
  }
}