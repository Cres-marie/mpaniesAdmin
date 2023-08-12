import 'package:flutter/material.dart';

import '../../../shared/responsive.dart';
import 'activitydetailscard.dart';
import 'header.dart';

class HomePage extends StatefulWidget {

  final GlobalKey<ScaffoldState> scaffoldKey;
  const HomePage({super.key, required this.scaffoldKey});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(

      height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Responsive.isMobile(context) ? 15 : 18),
          child: Column(
            children: [
              SizedBox(
                height: Responsive.isMobile(context) ? 5 : 18,
              ),
              Header(scaffoldKey: widget.scaffoldKey),
             // _height(context),
             SizedBox(height: 20,),
              ActivityDetailsCard(),
              //_height(context),
              //LineChartCard(),
              //_height(context),
              //BarGraphCard(),
              //_height(context),
            ],
          ),
        )
      )
    );
  }
}


    