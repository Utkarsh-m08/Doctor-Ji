import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/homePage/homePage.dart';
import 'package:flutter_application_1/infoPage/infoPage.dart';
import 'package:flutter_application_1/loginSignin/loginPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/properties/prop.dart' as prop;

class languageSelect extends StatefulWidget {
  const languageSelect({super.key});

  @override
  State<languageSelect> createState() => _languageSelectState();
}

class _languageSelectState extends State<languageSelect> {
  @override
  Widget build(BuildContext context) {
    // size variable
    double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Column(
            children: [
              Icon(
                Icons.translate,
                size: 60,
              ),
              Text(
                "Choose you language",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  fontSize: screenheight / 30,
                  color: prop.rang5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: screenWidth * 0.25,
                          width: screenWidth * 0.25,
                          color: prop.rang1,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: prop.rang1,
                              foregroundColor: prop.rang1,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              elevation: 6,
                            ),
                            child: Text(
                              "English",
                              style: GoogleFonts.montserrat(
                                // fontWeight: FontWeight.bold,
                                fontSize: screenheight / 40,
                                color: prop.rang5,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: screenWidth * 0.25,
                          width: screenWidth * 0.25,
                          color: prop.rang1,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: prop.rang1,
                                foregroundColor: prop.rang1,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                elevation: 6,
                              ),
                              child: Text(
                                "Hindi",
                                style: GoogleFonts.montserrat(
                                  // fontWeight: FontWeight.bold,
                                  fontSize: screenheight / 40,
                                  color: prop.rang5,
                                ),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: screenWidth * 0.25,
                          width: screenWidth * 0.25,
                          color: prop.rang1,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: prop.rang1,
                                foregroundColor: prop.rang1,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                elevation: 6,
                              ),
                              child: Text(
                                "Pahadi",
                                style: GoogleFonts.montserrat(
                                  // fontWeight: FontWeight.bold,
                                  fontSize: screenheight / 40,
                                  color: prop.rang5,
                                ),
                              )),
                        ),
                      )
                    ],
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
