import 'package:flutter/material.dart';
import 'package:mpanies_admin/models/users.dart';
import 'package:mpanies_admin/shared/utils.dart';

class UsersList extends StatefulWidget {
  const UsersList({super.key});

  @override
  State<UsersList> createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  List<bool> selectedRows = List.generate(userdetails.length, (index) => false);
  bool _selectAll = false;

  void _updateSelectedRow(int index, bool isSelected) {
    setState(() {
      selectedRows[index] = isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Card(
        elevation: 2,
        color: Colors.white,
        child: PaginatedDataTable(
          columns: [
            DataColumn(
              label: Checkbox(
                value: _selectAll,
                onChanged: (value) {
                  setState(() {
                    _selectAll = value!;
                    for (int i = 0; i < selectedRows.length; i++) {
                      selectedRows[i] = value;
                    }
                  });
                },
              ),
            ),
            DataColumn(label: Text('UserName',style: headerText)),
            DataColumn(label: Text('Password ',style: headerText)),
            DataColumn(label: Text('Email',style: headerText)),
            DataColumn(label: Text('Role',style: headerText)),
            DataColumn(label: Text('Date Registered',style: headerText)),
            DataColumn(label: Text('Last Login',style: headerText)),
            DataColumn(label: Text('Actions',style: headerText)),
          ],
          source: _CategoryDataTableSource(selectedRows, _updateSelectedRow),
          rowsPerPage: userdetails.length > 10 ? 10 : userdetails.length,
        ),
      ),
    );
  }
}

class _CategoryDataTableSource extends DataTableSource {
  final List<bool> selectedRows;
  final Function(int, bool) updateSelectedRow;

  _CategoryDataTableSource(this.selectedRows, this.updateSelectedRow);

  @override
  DataRow? getRow(int index) {
    if (index >= userdetails.length) {
      return null;
    }
    return DataRow(
      cells: [
        DataCell(
          Checkbox(
            value: selectedRows[index],
            onChanged: (value) {
              updateSelectedRow(index, value ?? false);
            },
          ),
        ),
        DataCell(Text(userdetails[index].userName)),
        DataCell(Text(userdetails[index].password)),
        DataCell(Text(userdetails[index].email)),
        DataCell(Text(userdetails[index].role)),
        DataCell(Text(userdetails[index].date)),
        DataCell(Text(userdetails[index].date)),

        DataCell(
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'edit') {
                // Perform edit action
              } else if (value == 'delete') {
                // Perform delete action
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'edit',
                child: Text('Edit'),
              ),
              const PopupMenuItem<String>(
                value: 'delete',
                child: Text('Delete'),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => userdetails.length;

  @override
  int get selectedRowCount => selectedRows.where((isSelected) => isSelected).length;
}



    