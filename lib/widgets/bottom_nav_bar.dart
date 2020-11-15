import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 70,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavigation(
            title: 'Today',
            svgSrc: 'assets/icons/calendar.svg',
            press: () {},
          ),
          BottomNavigation(
            title: 'All Exercises',
            svgSrc: 'assets/icons/gym.svg',
            press: () {},
            isActive: true,
          ),
          BottomNavigation(
            title: 'Settings',
            svgSrc: 'assets/icons/Settings.svg',
            press: () {},
          ),
        ],
      ),
    );
  }
}

class BottomNavigation extends StatelessWidget {
  final String svgSrc;
  final String title;
  final Function press;
  final bool isActive;
  const BottomNavigation({
    Key key,
    this.svgSrc,
    this.title,
    this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(svgSrc
            ,color: isActive ? kActiveIconColor :kTextColor,
          ),
          Text(
            title,
            style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),
          )
        ],
      ),
    );
  }
}