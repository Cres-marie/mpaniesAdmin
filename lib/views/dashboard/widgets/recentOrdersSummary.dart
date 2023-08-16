import 'package:flutter/material.dart';

import '../../../models/recentOrders.dart';

class RecentOrdersSummary extends StatefulWidget {
  const RecentOrdersSummary({super.key});

  @override
  State<RecentOrdersSummary> createState() => _RecentOrdersSummaryState();
}

class _RecentOrdersSummaryState extends State<RecentOrdersSummary> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Card(
            color: Colors.white,
            child: DataTable(
              columns: const <DataColumn>[
                DataColumn(label: Text('ID')),
                DataColumn(label: Text('Status')),
                DataColumn(label: Text('Country')),
                DataColumn(label: Text('Customer')),
                DataColumn(label: Text('Date')),
                DataColumn(label: Text('Total')),
              ],
              rows: recentOrders
                  .take(5) // Limit the number of rows to 5
                  .map((order) => DataRow(cells: [
                        DataCell(Text('${order.id}')),
                        DataCell(_getStatusCell(order.status)),
                        DataCell(Text(order.country)),
                        DataCell(Text(order.customerName)),
                        DataCell(Text(order.date)),
                        DataCell(Text(order.total)),
                      ]))
                  .toList(),
            ),
          ),
        ),
      );
  }


  Widget _getStatusCell(String status) {
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
}