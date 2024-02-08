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
    return Dialog(
      backgroundColor: prop.rang1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      insetPadding: EdgeInsets.all(10),
      child: Container(
        height: screenheight * 0.3,
        width: screenWidth * 0.95,
        decoration: BoxDecoration(
          color: prop.rang1,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(screenWidth * 0.03),
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
                      fontSize: screenWidth * 0.07,
                      color: prop.rang5,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: screenWidth * .02,
                      bottom: screenWidth * 0.02,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: screenWidth * 0.26,
                            width: screenWidth * 0.26,
                            color: prop.rang1,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                                locale:
                                Locale('en');
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
                                  fontWeight: FontWeight.w500,
                                  fontSize: screenWidth * 0.04,
                                  color: prop.rang5,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: screenWidth * 0.26,
                            width: screenWidth * 0.26,
                            color: prop.rang1,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                                locale:
                                Locale('hi');
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
                                  fontWeight: FontWeight.w500,
                                  fontSize: screenWidth * 0.04,
                                  color: prop.rang5,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: screenWidth * 0.26,
                            width: screenWidth * 0.26,
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
                                  fontWeight: FontWeight.w500,
                                  fontSize: screenWidth * 0.04,
                                  color: prop.rang5,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
