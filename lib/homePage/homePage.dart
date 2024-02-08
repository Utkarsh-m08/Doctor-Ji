import 'package:flutter/material.dart';
import 'package:flutter_application_1/homePage/doctorJiPage.dart';
import 'package:flutter_application_1/homePage/navBar/navBar.dart';
import 'package:flutter_application_1/homePage/profile.dart';
import 'package:flutter_application_1/personalInfo/personalInfo.dart';
import 'package:flutter_application_1/properties/prop.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/properties/prop.dart' as prop;
import 'package:google_nav_bar/google_nav_bar.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    doctorJiPage(),
    Text(
      'Search',
    ),
    profile(),
    personalInfo(),
    Text(
      'Likes',
    ),
    Text(
      'Search',
    ),
    Text(
      'Profile',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: rang1,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(screenWidth * 0.005),
        child: Container(
          clipBehavior: Clip.none,
          // height: screenheight * 0.15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            // color: rang1,
          ),
          child: Padding(
            padding: EdgeInsets.all(screenWidth * 0.02),
            child: GNav(
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(
                    () {
                      _selectedIndex = index;
                    },
                  );
                },
                tabBorderRadius: 20,
                textSize: screenheight * 0.50,
                rippleColor: prop.rang1, // tab button ripple color when pressed
                hoverColor: prop.rang1, // tab button hover color
                haptic: true, // haptic feedback
                tabActiveBorder: Border.all(
                  color: prop.rang5,
                  width: 1,
                ), // tab button border
                // tabBorder:
                //     Border.all(color: prop.rang5, width: 1), // tab button border
                // tabShadow: [
                //   BoxShadow(color: prop.rang1, blurRadius: 2)
                // ], // tab button shadow
                // curve: Curves.easeOutExpo, // tab animation curves
                // duration: Duration(milliseconds: 10), // tab animation duration
                gap: 2, // the tab button gap between icon and text
                // color: prop.rang6, // unselected icon color
                // activeColor: prop.rang1, // selected icon and text color
                // iconSize: 35, // tab button icon size
                // tabBackgroundColor: prop.rang3, // selected tab background color
                // iconSize: screenWidth ,
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.06,
                  vertical: screenWidth * 0.03,
                ), // navigation bar padding
                tabs: [
                  GButton(
                    icon: Icons.local_hospital_outlined,
                    text: 'Doctor JI',
                    textSize: screenheight,
                  ),
                  GButton(
                    icon: Icons.access_time,
                    text: 'Appointment',
                    textSize: screenheight,
                  ),
                  GButton(
                    icon: Icons.account_circle_outlined,
                    text: 'Profile',
                    textSize: screenheight,
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
