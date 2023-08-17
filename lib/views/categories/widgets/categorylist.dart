import 'package:flutter/material.dart';
import '../../../models/categoriesItems.dart'; // Import your data model

class CategoryListTable extends StatefulWidget {
  CategoryListTable({Key? key}) : super(key: key);

  @override
  State<CategoryListTable> createState() => _CategoryListTableState();
}

class _CategoryListTableState extends State<CategoryListTable> {
  // List to keep track of selected rows
  List<bool> selectedRows = List.generate(brand.length, (index) => false);

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
            DataColumn(label: Text('Name')),       // Column for Category Name
            DataColumn(label: Text('Items')),    // Column for Item Number
            DataColumn(label: Text('Actions')),    // Column for Actions
          ],
          source: _CategoryDataTableSource(selectedRows, _updateSelectedRow),
          rowsPerPage: brand.length > 10 ?  10 : brand.length , // Number of rows to display per page
          //emptyRowCount: 0, // Set the number of empty rows to 0
        ),
      ),
    );
  }
}

class _CategoryDataTableSource extends DataTableSource {
  final List<bool> selectedRows;
  final Function(int, bool) updateSelectedRow; // Callback function

  _CategoryDataTableSource(this.selectedRows, this.updateSelectedRow);

  @override
  DataRow? getRow(int index) {
    if (index >= brand.length) {
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
        DataCell(Text(brand[index].name)),  // Display the category name
        DataCell(Text(brand[index].itemNo.toString())), // Display the item number
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
              PopupMenuItem<String>(
                value: 'edit',
                child: Text('Edit'),   // Option to edit the category
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
  int get rowCount => brand.length; // Total number of rows in the table

  @override
  int get selectedRowCount => selectedRows.where((isSelected) => isSelected).length;
  // Number of selected rows
}
