import 'package:flutter/material.dart';

import '../../../models/recentOrders.dart';

class RecentOrdersSummary extends StatefulWidget {
  const RecentOrdersSummary({super.key});

  @override
  State<RecentOrdersSummary> createState() => _RecentOrdersSummaryState();
}

class _RecentOrdersSummaryState extends State<RecentOrdersSummary> {
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
            DataColumn(label: Text('Order ID')),       // Column for product Name
            DataColumn(label: Text('Order Date')),    // Column for Category
            DataColumn(label: Text('Customer')),
            //DataColumn(label: Text('Paid')),
            DataColumn(label: Text('Items')),
            DataColumn(label: Text('Payment Method')),
            DataColumn(label: Text('Delivery Status')),
            DataColumn(label: Text('Total Spent')),
            
          ],
          source: _CategoryDataTableSource(selectedRows, _updateSelectedRow),
          rowsPerPage: 5 , // Number of rows to display per page
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

  _CategoryDataTableSource(this.selectedRows, this.updateSelectedRow);

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
    if (index >= rowCount) {
      return null; // Return null for indices beyond available data
    }
    return DataRow(
      cells: [
        DataCell(Text(recentOrders[index].id.toString())),  // Display the id
        DataCell(Text(recentOrders[index].date)), // Display the date
        DataCell(Text(recentOrders[index].customerName)), // Display the name
        DataCell(Text('${recentOrders[index].items.toString()} Items')), // Display the items
        DataCell(Text(recentOrders[index].paymentMethod)), 
        DataCell(_buildStatusCell(recentOrders[index].status)), // Display the paid status
        DataCell(Text(recentOrders[index].total.toString())), // Display the total
        
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => recentOrders.length > 5 ? 5 : recentOrders.length; // Total number of rows in the table

  @override
  int get selectedRowCount => selectedRows.where((isSelected) => isSelected).length;
  // Number of selected rows




}
