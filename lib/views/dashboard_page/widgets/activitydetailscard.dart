import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../shared/responsive.dart';
import 'customCard.dart';

class ActivityDetailsCard extends StatelessWidget {
  ActivityDetailsCard({super.key});

  final List<Map<String , String >> healthDetails = 
  [
    {'icon': 'assets/svg/categories-2.svg', 'value': "305", 'title': "Categories"},
    {'icon': 'assets/svg/product-2.svg', 'value': "10,983", 'title': "Products"},
    {'icon': 'assets/svg/all-orders-2.svg', 'value': "7000", 'title': "Orders"},
    {'icon': 'assets/svg/person-2.svg', 'value': "8003", 'title': "Users"},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: healthDetails.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: Responsive.isMobile(context) ? 2 : 4,
          crossAxisSpacing: !Responsive.isMobile(context) ? 15 : 12,
          mainAxisSpacing: 12.0),
      itemBuilder: (context, i) {
        return CustomCard(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(healthDetails[i]['icon']!, width: 35, height: 35,),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 4),
                child: Text(
                  healthDetails[i]['value']!,
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                healthDetails[i]['title']!,
                style: const TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
        );
      },
    );
  }
}
