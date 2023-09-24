import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/homePage/homePage.dart';
import 'package:flutter_application_1/loginSignin/loginPage.dart';
// import 'infoPage/infoPage.dart';
import 'package:flutter_application_1/properties/prop.dart' as prop;
import 'package:google_fonts/google_fonts.dart';

class personalInfo extends StatefulWidget {
  const personalInfo({super.key});
  @override
  State<personalInfo> createState() => _personalInfoState();
}

class _personalInfoState extends State<personalInfo> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: prop.rang1,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Align(
                alignment: Alignment(0, 0),
                child: Container(
                  height: screenheight * 0.78,
                  width: screenWidth * 0.9,
                  decoration: BoxDecoration(
                    color: prop.rang1,
                    // borderRadius: BorderRadius.all(
                    //   Radius.circular(20),
                    // ),
                    boxShadow: [
                      BoxShadow(
                        color: prop.rang6,
                        offset: const Offset(
                          0.0,
                          0.0,
                        ),
                        blurRadius: 0,
                        spreadRadius: 0,
                      ), //BoxShadow
                      BoxShadow(
                        color: prop.rang5,
                        offset: const Offset(0, 4),
                        blurRadius: 3,
                        spreadRadius: -2,
                      ), //BoxShadow
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: ListView(children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 0, left: 10, bottom: 50),
                          child: Text(
                            "Your Medical \nDetails",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth / 15,
                              color: prop.rang5,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 15),
                          child: Row(
                            children: [
                              Text(
                                "Blood Group:",
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.bold,
                                  fontSize: screenWidth / 20,
                                  color: prop.rang5,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 30,
                                  ),
                                  child: Container(
                                    // height: screenheight * 0.1,
                                    width: screenWidth * 0.4,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        // enabledBorder: OutlineInputBorder(
                                        //   borderSide: BorderSide(
                                        //     width: 0,
                                        //     color: prop.rang5,
                                        //   ),
                                        // ),
                                        fillColor: prop.rang1,
                                        focusColor: prop.rang2,
                                        labelText: '',
                                        helperText: '',
                                        // filled: true,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 15),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "Height:",
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.bold,
                                  fontSize: screenWidth / 20,
                                  color: prop.rang5,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 90,
                                  ),
                                  child: Container(
                                    // height: screenheight * 0.1,
                                    width: screenWidth * 0.4,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        // enabledBorder: OutlineInputBorder(
                                        //   borderSide: BorderSide(
                                        //     width: 0,
                                        //     color: prop.rang5,
                                        //   ),
                                        // ),
                                        fillColor: prop.rang1,
                                        focusColor: prop.rang2,
                                        labelText: '',
                                        helperText: '',
                                        // filled: true,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 15),
                          child: Row(
                            children: [
                              Text(
                                "Weight:",
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.bold,
                                  fontSize: screenWidth / 20,
                                  color: prop.rang5,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 80,
                                  ),
                                  child: Container(
                                    // height: screenheight * 0.1,
                                    width: screenWidth * 0.4,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        // enabledBorder: OutlineInputBorder(
                                        //   borderSide: BorderSide(
                                        //     width: 0,
                                        //     color: prop.rang5,
                                        //   ),
                                        // ),
                                        fillColor: prop.rang1,
                                        focusColor: prop.rang2,
                                        labelText: '',
                                        helperText: '',
                                        // filled: true,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, bottom: 20, top: 25),
                          child: Row(
                            children: [
                              Text(
                                "Write any medical Conditions\n you could have here",
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.bold,
                                  fontSize: screenWidth / 20,
                                  color: prop.rang5,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: prop.rang2,
                          child: TextField(
                            // minLines: 3, // Set this
                            maxLines: 6, // and this
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 0,
                                  color: prop.rang5,
                                ),
                              ),
                              fillColor: prop.rang1,
                              focusColor: prop.rang2,
                              labelText: '',
                              helperText: '',
                              // filled: true,
                            ),
                          ),
                        )
                      ],
                    ),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  // decoration: BoxDecoration(
                  //   // color: prop.rang5,
                  //   border: Border.all(color: prop.rang5),
                  //   // boxShadow: [
                  //   //   BoxShadow(
                  //   //     color: prop.rang5,
                  //   //     offset: const Offset(
                  //   //       0.0,
                  //   //       0.0,
                  //   //     ),
                  //   //     blurRadius: 2.0,
                  //   //     spreadRadius: 1.0,
                  //   //   ), //BoxShadow
                  //   //   BoxShadow(
                  //   //     color: prop.rang5,
                  //   //     offset: const Offset(0.0, 0.0),
                  //   //     blurRadius: 0.0,
                  //   //     spreadRadius: 0.0,
                  //   //   ), //BoxShadow
                  //   // ],
                  //   // borderRadius: BorderRadius.all(Radius.circular(10)),
                  // ),
                  height: screenheight * 0.07,
                  width: screenWidth * 0.5,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: prop.rang1,
                      foregroundColor: prop.rang1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 6,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => homePage(),
                        ),
                      );
                    },
                    child: Text(
                      "Submit",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth / 17,
                        color: prop.rang5,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
