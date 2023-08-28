import 'package:flutter/material.dart';
import 'package:mpanies_admin/models/productItems.dart';

class Transaction extends StatefulWidget {
  const Transaction({super.key});

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
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
            DataColumn(label: Text('Transactions')),
            
          ],
          rows: productItems.take(3).map((item) {
          return DataRow(
            cells: [
              DataCell(
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Payment'),
                        Center(child: Text(item.paymentMethod, style: TextStyle(color: Colors.grey),)),
                      ],
                    ),

                    Text(item.date),
                    Text(item.price.toString())
                  ]
                )
              ),
          ]);
        }).toList(),
          
            
            
          
        ),
        
      ),
    );
  }
}