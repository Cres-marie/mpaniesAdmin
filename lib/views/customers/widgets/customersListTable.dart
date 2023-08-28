import 'package:flutter/material.dart';
import 'package:mpanies_admin/views/customers/widgets/viewCustomerDetails.dart';

import '../../../models/recentOrders.dart';

class CustomerListTable extends StatefulWidget {
  const CustomerListTable({super.key});

  @override
  State<CustomerListTable> createState() => _CustomerListTableState();
}

class _CustomerListTableState extends State<CustomerListTable> {
    // List to keep track of selected rows
  List<bool> selectedRows = List.generate(recentOrders.length, (index) => false);

  bool _selectAll = false;

  // Function to update selected rows and trigger a rebuild
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
          //header: Text('Category List'), // Display a header for the table
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
            DataColumn(label: Text('Name')),       // Column for product Name
            DataColumn(label: Text('Registered')),    // Column for Category
            DataColumn(label: Text('Country')),
            DataColumn(label: Text('Spent')),
            DataColumn(label: Text('Actions')),    // Column for Actions
          ],
          source: _CategoryDataTableSource(context, selectedRows, _updateSelectedRow),
          rowsPerPage: recentOrders.length > 10 ?  10 : recentOrders.length , // Number of rows to display per page
          //emptyRowCount: 0, // Set the number of empty rows to 0
          // Increase the height of data cells
          dataRowMaxHeight: 60, 
        ),
      ),
    );
  }
}

class _CategoryDataTableSource extends DataTableSource {
  final List<bool> selectedRows;
  final Function(int, bool) updateSelectedRow; // Callback function
  final BuildContext context;

  _CategoryDataTableSource(this.context,this.selectedRows, this.updateSelectedRow);

  
  @override
  DataRow? getRow(int index) {
    if (index >= recentOrders.length) {
      return null; // Return null for indices beyond available data
    }
    return DataRow(
      cells: [
        DataCell(
          Checkbox(
            value: selectedRows[index],
            onChanged: (value) {
              updateSelectedRow(index, value?? false); // Update individual row selection
            },
          ),
        ),
        DataCell(
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(recentOrders[index].customerName),
              SizedBox(height: 5,),
              Text(recentOrders[index].email, style: TextStyle(color: Colors.grey),),
            ],
          )
        ),  // Display the id
        DataCell(Text(recentOrders[index].date)), // Display the date
        DataCell(Text(recentOrders[index].country)), // Display the name
        DataCell(Text(recentOrders[index].total.toString())), // Display the total
        DataCell(
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'edit') {
                // Perform edit action
              } else if (value == 'view') {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return ViewCustomerDetails();
                      },
                      transitionDuration: Duration(seconds: 0), // No transition duration
                    ),
                  );
              } else if (value == 'delete') {
                // Perform delete action
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'edit',
                child: Text('Edit'),   // Option to edit the category
              ),
              PopupMenuItem<String>(
                value: 'view',
                child: Text('View'),   // Option to edit the category
              ),
              PopupMenuItem<String>(
                value: 'delete',
                child: Text('Delete'), // Option to delete the category
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
  int get rowCount => recentOrders.length; // Total number of rows in the table

  @override
  int get selectedRowCount => selectedRows.where((isSelected) => isSelected).length;
  // Number of selected rows




}
