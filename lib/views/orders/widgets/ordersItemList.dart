import 'package:flutter/material.dart';
import 'package:mpanies_admin/models/productItems.dart';

class OrdersItem extends StatefulWidget {
  const OrdersItem({super.key});

  @override
  State<OrdersItem> createState() => _OrdersItemState();
}

class _OrdersItemState extends State<OrdersItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Card(
        elevation: 2,
        color: Colors.white,
        child: DataTable(
          //dataRowMaxHeight: 12.0,
          columns: [
            DataColumn(label: Text('Items')),
            DataColumn(label: Text('Price')), 
            DataColumn(label: Text('Quantity')),    
            DataColumn(label: Text('Shipping Cost')),
          ],
          rows: [
          ...List<DataRow>.generate(productItems.length, (index) {
            return DataRow(
              cells: [
                DataCell(
                  Container(
                    height: 120,
                    child: Row(
                      children: [
                        Container(
                          height: 100, width: 120,
                          child: Image.asset(productItems[index].images, height: 50, width: 100, fit: BoxFit.cover)
                        ),
                        Text(productItems[index].title),
                      ],
                    ),
                  )
                ),
                DataCell(Text(productItems[index].price.toString())),
                DataCell(Text(productItems[index].items.toString())),
                DataCell(Text(productItems[index].price.toString())),
              ],
            );
          }),
          //dataRowMaxHeight: 28.0,

          DataRow( // Total row
            cells: [
              DataCell(Text('Total', style: TextStyle(fontWeight: FontWeight.bold))),
              DataCell(Text('')), // Empty cells for other columns
              DataCell(Text('')),
              DataCell(Text('')),
              //DataCell(Text(productItems[index].total, style: TextStyle(fontWeight: FontWeight.bold))),
            ],
            ),
          ]
        ),
        
      ),
    );
  }
}