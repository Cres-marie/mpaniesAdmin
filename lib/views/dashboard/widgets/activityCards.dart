import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mpanies_admin/models/cardItems.dart';

import '../../../shared/responsive.dart';


class ActivityCard extends StatelessWidget {
  ActivityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: cardItems.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: Responsive.isMobile(context) ? 2 : 4,
          crossAxisSpacing: !Responsive.isMobile(context) ? 15 : 12,
          mainAxisSpacing: 12.0,
          mainAxisExtent: 140 ,
      ),          
      itemBuilder: (context, i) {
        return CustomCard(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(cardItems[i].icon, width: 35, height: 35,),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 4),
                child: Text(
                  cardItems[i].value,
                  style: const TextStyle(
                      fontSize: 18,
                      //color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                cardItems[i].title,
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


class CustomCard extends StatelessWidget {
  final Widget child;
  final Color? color;
  final EdgeInsetsGeometry? padding;

  const CustomCard({super.key, this.color,this.padding, required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        color: Colors.white,
        elevation: 2,
          child: Padding(
            padding:EdgeInsets.all(4.0),
            child: child,
          )
      ),
    );
  }
}
