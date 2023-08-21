import 'package:flutter/material.dart';
import 'package:mpanies_admin/models/users.dart';

class UsersList extends StatefulWidget {
  const UsersList({super.key});

  @override
  State<UsersList> createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Card(
            elevation: 2,
            color: Colors.white,
            child: DataTable(
              columns: const <DataColumn>[
                DataColumn(label: Text('ID')),
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('Password')),
                DataColumn(label: Text('Email')),
                DataColumn(label: Text('Role')),
                DataColumn(label: Text('Date Registered')),
              ],
              rows: userdetails
                  .take(5) // Limit the number of rows to 5
                  .map((user) => DataRow(cells: [
                        DataCell(Text('${user.id}')),
                        DataCell(Text(user.userName)),
                        DataCell(Text(user.password)),
                        DataCell(Text(user.email)),
                        DataCell(Text(user.role)),
                        DataCell(Text(user.date)),
                        
                      ]))
                  .toList(),
            ),
          ),
        ),
      );
  }
}