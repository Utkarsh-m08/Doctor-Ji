import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/homePage/homePage.dart';
import 'package:flutter_application_1/homePage/navBar/navBar.dart';
import 'package:flutter_application_1/infoPage/infoPage.dart';
import 'package:flutter_application_1/loginSignin/loginPage.dart';
import 'package:flutter_application_1/loginSignin/logout/logout.dart';
import 'package:flutter_application_1/personalInfo/personalInfo.dart';
import 'package:flutter_application_1/properties/prop.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/properties/prop.dart' as prop;
import 'package:google_nav_bar/google_nav_bar.dart';

class profile extends StatefulWidget {
  const profile({super.key});
  // signout

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    // signout
    void signUserOut() async {
      FirebaseAuth.instance.signOut();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => infoPage(),
        ),
      );
    }

    double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: prop.rang1,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 10, bottom: 10, right: 10),
            child: Row(
              children: [
                Container(
                  height: screenWidth * 0.4,
                  width: screenWidth * 0.4,
                  decoration: BoxDecoration(
                    color: prop.rang6,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: screenWidth * 0.4,
                    width: screenWidth * 0.5,
                    decoration: BoxDecoration(
                      color: prop.rang1,
                      // borderRadius: BorderRadius.all(
                      //   Radius.circular(30),
                      // ),
                    ),
                    child: ListView(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            user.email!,
                            style: GoogleFonts.montserrat(
                              // fontWeight: FontWeight.bold,
                              fontSize: screenheight / 25,
                              color: rang5,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Mobile:",
                            style: GoogleFonts.montserrat(
                              // fontWeight: FontWeight.bold,
                              fontSize: screenheight / 40,
                              color: rang5,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Email: " + user.email!,
                            style: GoogleFonts.montserrat(
                              // fontWeight: FontWeight.bold,
                              fontSize: screenheight / 40,
                              color: rang5,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Address: ",
                            style: GoogleFonts.montserrat(
                              // fontWeight: FontWeight.bold,
                              fontSize: screenheight / 40,
                              color: rang5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 190, right: 10, bottom: 50),
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => personalInfo(),
                  ),
                );
              },
              icon: Icon(
                Icons.edit,
                color: prop.rang1,
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: prop.rang4,
                foregroundColor: prop.rang4,
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(20),
                // ),
                elevation: 5,
              ),
              label: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "edit account details",
                  style: GoogleFonts.montserrat(
                    // fontWeight: FontWeight.bold,
                    fontSize: screenheight / 47,
                    color: rang1,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 3,
              width: screenWidth * 0.4,
              color: prop.rang3,
            ),
          ),
          Container(
            height: screenheight * 0.1,
            width: screenWidth * 0.5,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: ElevatedButton.icon(
                icon: Icon(
                  Icons.history,
                  color: prop.rang5,
                  size: 40,
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: prop.rang1,
                  foregroundColor: prop.rang1,
                  // shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.circular(20),
                  // ),
                  elevation: 0,
                ),
                onPressed: () {
                  // signUserOut();
                },
                label: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "    Appointment history",
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400,
                      fontSize: screenWidth / 22,
                      color: rang5,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 3,
              width: screenWidth * 0.4,
              color: prop.rang3,
            ),
          ),
          Container(
            height: screenheight * 0.1,
            width: screenWidth * 0.5,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: ElevatedButton.icon(
                icon: Icon(
                  Icons.book_outlined,
                  color: rang5,
                  size: 40,
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: prop.rang1,
                  foregroundColor: prop.rang1,
                  // shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.circular(20),
                  // ),
                  elevation: 0,
                ),
                onPressed: () {
                  // signUserOut();
                },
                label: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "   Prescriptions",
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400,
                      fontSize: screenWidth / 22,
                      color: rang5,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 3,
              width: screenWidth * 0.4,
              color: prop.rang3,
            ),
          ),
          Container(
            height: screenheight * 0.1,
            width: screenWidth * 0.5,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: ElevatedButton.icon(
                icon: Icon(
                  Icons.translate_outlined,
                  color: rang5,
                  size: 40,
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: prop.rang1,
                  foregroundColor: prop.rang1,
                  // shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.circular(20),
                  // ),
                  elevation: 0,
                ),
                onPressed: () {
                  // signUserOut();
                },
                label: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "   language",
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400,
                      fontSize: screenWidth / 22,
                      color: rang5,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 3,
              width: screenWidth * 0.4,
              color: prop.rang3,
            ),
          ),
          Container(
            height: screenheight * 0.1,
            width: screenWidth * 0.5,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: ElevatedButton.icon(
                icon: Icon(
                  Icons.login_outlined,
                  color: rang5,
                  size: 40,
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: prop.rang1,
                  foregroundColor: prop.rang1,
                  // shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.circular(20),
                  // ),
                  elevation: 0,
                ),
                onPressed: () {
                  signUserOut();
                },
                label: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "   Signout",
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400,
                      fontSize: screenWidth / 22,
                      color: rang5,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 3,
              width: screenWidth * 0.4,
              color: prop.rang3,
            ),
          ),
        ],
      ),
    );
  }
}
