import 'package:flutter/material.dart';
import '../../../models/categoriesItems.dart'; // Import your data model

class CategoryListTable extends StatefulWidget {
  CategoryListTable({Key? key}) : super(key: key);

  @override
  State<CategoryListTable> createState() => _CategoryListTableState();
}

class _CategoryListTableState extends State<CategoryListTable> {
  List<bool> selectedRows = List.generate(brand.length, (index) => false);
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
            DataColumn(label: Text('Category Name')),
            DataColumn(label: Text('Item Number')),
            DataColumn(label: Text('Actions')),
          ],
          source: _CategoryDataTableSource(selectedRows, _updateSelectedRow),
          rowsPerPage: brand.length > 10 ? 10 : brand.length,
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
    if (index >= brand.length) {
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
        DataCell(Text(brand[index].name)),
        DataCell(Text(brand[index].itemNo.toString())),
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
  int get rowCount => brand.length;

  @override
  int get selectedRowCount => selectedRows.where((isSelected) => isSelected).length;
}
