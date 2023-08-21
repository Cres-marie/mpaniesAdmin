import 'package:flutter/material.dart';
import 'package:mpanies_admin/views/dashboard/widgets/activityCards.dart';
import 'package:mpanies_admin/views/dashboard/widgets/barGraph.dart';
import 'package:mpanies_admin/views/dashboard/widgets/barIncome.dart';
import 'package:mpanies_admin/views/dashboard/widgets/recentOrdersSummary.dart';
import 'package:mpanies_admin/views/dashboard/widgets/sample.dart';

import '../../shared/responsive.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ActivityCard(),
              SizedBox(height: 20,),
              LineChartSample2(),
              //BarGraphIncome(),
              BarChartSample2(),
              //BarChartCopmponent(),
              //SizedBox(height: 20,),
              Responsive.isMobile(context) // Check if the screen is mobile
                  ? SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: RecentOrdersSummary(),
                    )
                  : RecentOrdersSummary(),

              //MyBarGraph()
              
              
                  

            ],
          ),
        ),
      ),
    );
  }
}


// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';

// class IndividualBar {

//   final int x;
//   final double y;

//   IndividualBar({required this.x, required this.y});
// }


// class BarData{

//   final double sunAmount;
//   final double monAmount;
//   final double tueAmount;
//   final double wedAmount;
//   final double thurAmount;
//   final double friAmount;
//   final double satAmount;
//   //final double sunAmount;

//   BarData({required this.sunAmount, required this.monAmount, required this.tueAmount, required this.wedAmount, required this.thurAmount, required this.friAmount, required this.satAmount});

//   List<IndividualBar> barData = [];

//   void initializedBarData(){

//     barData = [

//       IndividualBar(x: 0, y:sunAmount ),
//       IndividualBar(x: 0, y:monAmount ),
//       IndividualBar(x: 0, y:tueAmount ),
//       IndividualBar(x: 0, y:wedAmount ),
//       IndividualBar(x: 0, y:thurAmount ),
//       IndividualBar(x: 0, y:friAmount ),
//       IndividualBar(x: 0, y:satAmount ),
//     ];
//   }

// }

// class MyBarGraph extends StatefulWidget {
//   const MyBarGraph({super.key});

//   @override
//   State<MyBarGraph> createState() => _MyBarGraphState();
// }

// class _MyBarGraphState extends State<MyBarGraph> {
//   @override
//   Widget build(BuildContext context) {
//     return BarChart(
//       BarChartData(
//         maxY: 100,
//         minY: 0
//       )
//     )
//   }
// }