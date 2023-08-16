import 'package:flutter/material.dart';
import 'package:mpanies_admin/views/dashboard/widgets/activityCards.dart';
import 'package:mpanies_admin/views/dashboard/widgets/barIncome.dart';
import 'package:mpanies_admin/views/dashboard/widgets/recentOrdersSummary.dart';

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
              BarGraphIncome(),
              SizedBox(height: 20,),
              Responsive.isMobile(context) // Check if the screen is mobile
                  ? SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: RecentOrdersSummary(),
                    )
                  : RecentOrdersSummary(),
                  

            ],
          ),
        ),
      ),
    );
  }
}