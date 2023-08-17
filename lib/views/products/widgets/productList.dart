import 'package:flutter/material.dart';
import 'package:mpanies_admin/models/productItems.dart';

class ProductsListTable extends StatefulWidget {
  const ProductsListTable({super.key});

  @override
  State<ProductsListTable> createState() => _ProductsListTableState();
}

class _ProductsListTableState extends State<ProductsListTable> {

  // List to keep track of selected rows
  List<bool> selectedRows = List.generate(productItems.length, (index) => false);

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
            DataColumn(label: Text('Product')),       // Column for product Name
            DataColumn(label: Text('Category')),    // Column for Category
            DataColumn(label: Text('Stock')),
            DataColumn(label: Text('Price')),
            DataColumn(label: Text('Actions')),    // Column for Actions
          ],
          source: _CategoryDataTableSource(selectedRows, _updateSelectedRow),
          rowsPerPage: productItems.length > 10 ?  10 : productItems.length , // Number of rows to display per page
          //emptyRowCount: 0, // Set the number of empty rows to 0
          // Increase the height of data cells
          dataRowMaxHeight: 140, 
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
    if (index >= productItems.length) {
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
          Row(
            children: [
              Container(
                height: 100, width: 120,
                child: Image.asset(productItems[index].images, height: 50, width: 100, fit: BoxFit.cover)
              ),
              Text(productItems[index].title)
            ],
          )
        ),  // Display the category name
        DataCell(Text(productItems[index].category)), // Display the category
        DataCell(Text('${productItems[index].stock.toString()} in stock')), // Display the stock number
        DataCell(Text(productItems[index].price.toString())), // Display the price
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
  int get rowCount => productItems.length; // Total number of rows in the table

  @override
  int get selectedRowCount => selectedRows.where((isSelected) => isSelected).length;
  // Number of selected rows
}
