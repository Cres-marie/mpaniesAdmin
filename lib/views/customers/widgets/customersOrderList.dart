import 'package:flutter/material.dart';
import 'package:mpanies_admin/models/productItems.dart';
import 'package:mpanies_admin/shared/utils.dart';

class CustomersOrderList extends StatefulWidget {
  const CustomersOrderList({super.key});

  @override
  State<CustomersOrderList> createState() => _CustomersOrderListState();
}

class _CustomersOrderListState extends State<CustomersOrderList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Card(
        elevation: 2,
        color: Colors.white,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            //dataRowMaxHeight: 12.0,
            columns: [
              DataColumn(label: Text('Orders',style: headerText)),
              
            ],
            rows: productItems.take(3).map((item) {
            return DataRow(
              cells: [
                DataCell(
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
        
                      Text(item.id.toString()),
                      Text(item.date),
                      Text(item.status),
                      Text('${item.items.toString()} items'),
                      Text('\$${item.price.toString()}')
                    ]
                  )
                ),
            ]);
          }).toList(),
            
              
              
            
          ),
        ),
        
      ),
    );
  }
}