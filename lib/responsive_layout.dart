import 'package:flutter/material.dart';
import 'Screens/login/login_large_screen.dart';
// import 'Screens/login/login_medium_screen.dart';
import 'Screens/login/login_small_screen.dart';
import 'widgets/responsiveness.dart';


class ResponsiveLayout extends StatefulWidget {

  ResponsiveLayout({super.key});

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}




class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveWidget(
      LargeScreen: LoginLargeScreen(),
      MediumScreen: LoginLargeScreen(),
      SmallScreen: LoginSmallScreen(),
      ),
    );
  }
}