import 'package:flutter/material.dart';
import 'package:mpanies_admin/models/recentOrders.dart';
import 'package:mpanies_admin/views/orders/widgets/viewOrderDetails.dart';

class OrdersListTable extends StatefulWidget {
  const OrdersListTable({super.key});

  @override
  State<OrdersListTable> createState() => _OrdersListTableState();
}

class _OrdersListTableState extends State<OrdersListTable> {
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
            DataColumn(label: Text('Order ID')),       // Column for product Name
            DataColumn(label: Text('Order Date')),    // Column for Category
            DataColumn(label: Text('Customer')),
            //DataColumn(label: Text('Paid')),
            DataColumn(label: Text('Items')),
            DataColumn(label: Text('Payment Method')),
            DataColumn(label: Text('Delivery Status')),
            DataColumn(label: Text('Total Spent')),
            DataColumn(label: Text('Actions')),    // Column for Actions
          ],
          source: _CategoryDataTableSource(context, selectedRows, _updateSelectedRow),
          rowsPerPage: recentOrders.length > 10 ?  10 : recentOrders.length , // Number of rows to display per page
          //emptyRowCount: 0, // Set the number of empty rows to 0
          // Increase the height of data cells
          //dataRowMaxHeight: 140, 
        ),
      ),
    );
  }
}

class _CategoryDataTableSource extends DataTableSource {
  final List<bool> selectedRows;
  final Function(int, bool) updateSelectedRow; // Callback function
  final BuildContext context;

  _CategoryDataTableSource(this.context, this.selectedRows, this.updateSelectedRow);

  // Custom method to determine the appearance of the "Paid" cell
  Widget _buildPaidCell(String paid) {
    Color color;
    String text = paid;
    Color textColor;

    if (paid.toLowerCase() == 'partially') {
      color = Colors.yellow.withOpacity(0.5);
      textColor = Colors.brown; // Set text color to match container color
    } else if (paid.toLowerCase() == 'yes') {
      color = Colors.green.withOpacity(0.2);
      textColor = Colors.green; // Set text color to match container color
    } else if (paid.toLowerCase() == 'no') {
      color = Colors.red.withOpacity(0.2);
      textColor = Colors.red; // Set text color to match container color
    } else {
      color = Colors.transparent;
      textColor = Colors.black; // Set default text color
    }

    return Container(
      color: color,
      height: 24,
      padding: const EdgeInsets.all(4.0),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

    // Custom method to determine the appearance of the "Status" cell
  Widget _buildStatusCell(String status) {
    Color color;
    String text = status;
    Color textColor;

    if (status.toLowerCase() == 'pending') {
      color = Colors.blue.withOpacity(0.2);
      textColor = Colors.blue; // Set text color to match container color
    } else if (status.toLowerCase() == 'completed') {
      color = Colors.green.withOpacity(0.2);
      textColor = Colors.green; // Set text color to match container color
    } else if (status.toLowerCase() == 'cancelled') {
      color = Colors.red.withOpacity(0.2);
      textColor = Colors.red; // Set text color to match container color
    } else {
      color = Colors.transparent;
      textColor = Colors.black; // Set default text color
    }

    return Container(
      color: color,
      height: 24,
      padding: const EdgeInsets.all(4.0),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

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
        DataCell(Text(recentOrders[index].id.toString())),  // Display the id
        DataCell(Text(recentOrders[index].date)), // Display the date
        DataCell(Text(recentOrders[index].customerName)), // Display the name
        DataCell(Text('${recentOrders[index].items.toString()} Items')), // Display the items
        //DataCell(_buildPaidCell(recentOrders[index].paid)), // Display the paid status
        DataCell(Text(recentOrders[index].paymentMethod)), 
        DataCell(_buildStatusCell(recentOrders[index].status)), // Display the paid status
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
                        return ViewOrderDetails();
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
