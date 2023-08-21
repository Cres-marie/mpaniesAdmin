// import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';

// class BarChartComponent extends StatefulWidget {
//   const BarChartComponent({Key? key}) : super(key: key);

//   @override
//   State<BarChartComponent> createState() => _BarChartComponentState();
// }

// class _BarChartComponentState extends State<BarChartComponent> {
//   final List<RecentOrder> recentOrders = [
//     // ... your RecentOrder data entries
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 500,
//       width: MediaQuery.of(context).size.width,
//       child: BarChart(
//         BarChartData(
//           borderData: FlBorderData(show: false),
//           alignment: BarChartAlignment.spaceBetween,
//           titlesData: FlTitlesData(
//             leftTitles: AxisTitles(
//               sideTitles: SideTitles(
//                 showTitles: true,
//                 interval: 1,
//                 getTitlesWidget: leftTitleWidgets,
//                 reservedSize: 42,
//               ),
              
//             ),
//             bottomTitles: AxisTitle(
//               showTitles: true,
//               reservedSize: 30,
//               interval: 1,
//               getTitles: bottomTitleWidgets,
//             ),
//           ),
//           barGroups: recentOrders.map((order) {
//             final int month = int.parse(order.date.split('-')[1]);
//             return BarChartGroupData(
//               x: month.toDouble(), // Use the month as x value
//               barRods: [
//                 BarChartRodData(y: order.items.toDouble(), colors: [Colors.black]),
//               ],
//             );
//           }).toList(),
//         ),
//         swapAnimationDuration: Duration(milliseconds: 150), // Optional
//         swapAnimationCurve: Curves.linear, // Optional
//       ),
//     );
//   }

//   Widget bottomTitleWidgets(double value) {
//     final int month = value.toInt();
//     if (month >= 1 && month <= 12) {
//       return month.toString();
//     }
//     return '';
//   }

//   Widget leftTitleWidgets(double value) {
//     return value.toInt().toString();
//   }
// }

// class RecentOrder {
//   // ... your RecentOrder class definition
// }
