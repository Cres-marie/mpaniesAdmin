import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../shared/responsive.dart';
import '../../../shared/utils.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(appPadding),
          child: Stack(
            children: [
              Icon(
                Icons.notifications,
                //height: 25,
                color: textColor.withOpacity(0.8),
              ),
              Positioned(
                right: 0,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: red,
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 6),
          padding: EdgeInsets.symmetric(
            horizontal: 6,
            vertical: appPadding / 2,
          ),
          child: Row(
            children: [
              ClipRRect(
                child: Image.asset(
                  'assets/images/photo3.jpg',
                  height: 38,
                  width: 38,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              if(!Responsive.isMobile(context))
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: appPadding / 2),
                child: Text('Hii, Theo',style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w800,
                ),),
              )
            ],
          ),
        )
      ],
    );
  }
}
