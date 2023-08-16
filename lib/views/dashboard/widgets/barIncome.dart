import 'package:flutter/material.dart';

class BarGraphIncome extends StatefulWidget {
  const BarGraphIncome({super.key});

  @override
  State<BarGraphIncome> createState() => _BarGraphIncomeState();
}

class _BarGraphIncomeState extends State<BarGraphIncome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Text('Income Statistics'),
        ]
        
      ),
    );
  }
}