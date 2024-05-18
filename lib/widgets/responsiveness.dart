import 'package:flutter/material.dart';

import '../constants/page_dimensions.dart';


class ResponsiveWidget extends StatelessWidget {
  final Widget LargeScreen;
  final Widget MediumScreen;
  final Widget SmallScreen;

  const ResponsiveWidget(
      {super.key,
      required this.LargeScreen,
      required this.MediumScreen,
      required this.SmallScreen});


  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= largeScreenSize;

  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= mediumScreenSize &&
      MediaQuery.of(context).size.width < largeScreenSize;

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < smallScreenSize;
      
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double _width = constraints.maxWidth;
        if (_width >= largeScreenSize) {
          // return homeLargeScreen
          return LargeScreen;
        } else if (_width < largeScreenSize && _width >= mediumScreenSize) {
          // return homeMediumScreen
          return MediumScreen;
        } else {
          // return homeSmallScreen
          return SmallScreen;
        }
      },
    );
  }
}
