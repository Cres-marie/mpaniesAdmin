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
          ],
          rows: List<DataRow>.generate(productItems.length, (index) {
            return DataRow(
              cells: [
                DataCell(
                  Container(
                    height: 120,
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Container(
                                height: 100, width: 120,
                                child: Image.asset(productItems[index].images, height: 50, width: 100, fit: BoxFit.cover)
                              ),
                              Text(productItems[index].title),
                            ],
                          ),
                        ),
                        
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(productItems[index].price.toString()),
                              Text(productItems[index].items.toString()),
                              Text(productItems[index].price.toString()),
                            ],
                          ),
                        )
                        
                      ],
                    ),
                  )
                ),
              ],
            );
          }),
          //dataRowMaxHeight: 28.0,
        ),
      ),
    );
  }
}