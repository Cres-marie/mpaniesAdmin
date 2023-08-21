import 'package:flutter/material.dart';
import 'package:mpanies_admin/views/categories/widgets/header.dart';
import 'package:mpanies_admin/views/users/widgets/usersList.dart';

class UsersListPage extends StatefulWidget {
  const UsersListPage({super.key});

  @override
  State<UsersListPage> createState() => _UsersListPageState();
}

class _UsersListPageState extends State<UsersListPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UsersHeader(),            
            SizedBox(height: 20,),
            UsersList()
          ],
        ),
      ),
    );
  }
}