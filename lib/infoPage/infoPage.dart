import 'package:flutter/material.dart';
import 'package:flutter_application_1/infoPage/languageSelect.dart';
import 'package:flutter_application_1/loginSignin/loginPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/properties/prop.dart' as prop;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class infoPage extends StatefulWidget {
  const infoPage({super.key});

  @override
  State<infoPage> createState() => _infoPageState();
}

class _infoPageState extends State<infoPage> {
  @override
  Widget build(BuildContext context) {
    // variable
    // size variable
    double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: prop.rang1,
      body: SingleChildScrollView(
        child: Container(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: prop.rang1,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  height: screenheight * (0.85),
                  width: screenWidth, // scroll veiw start from here
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 5, right: 5, bottom: 40),
                        child: Container(
                          height: screenheight * (2 / 3),
                          width: screenWidth * (3 / 3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50),
                            ),
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/Doctor_Ji__2_-removebg-preview.png"),
                                fit: BoxFit.contain),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 5, right: 5, bottom: 40),
                        child: Container(
                          height: screenheight * (2 / 3),
                          width: screenWidth * (3 / 3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50),
                            ),
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/El Doctor Macizo existe en la vida real - COSMO.jpeg"),
                                fit: BoxFit.cover),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(screenWidth / 20),
                            child: Align(
                              alignment: Alignment(-0.6, 0.55),
                              child: Text(
                                AppLocalizations.of(context).infoPage1,
                                style: GoogleFonts.montserrat(
                                  fontSize: screenWidth / 12,
                                  fontWeight: FontWeight.bold,
                                  color: prop.rang1Text,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 5, right: 5, bottom: 40),
                        child: Container(
                          height: screenheight * (2 / 3),
                          width: screenWidth * (3 / 3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50),
                            ),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/clay-banks-cEzMOp5FtV4-unsplash.jpg",
                                ),
                                fit: BoxFit.cover),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Align(
                              alignment: Alignment(0.5, -0.5),
                              child: Text(
                                "Your Health Superpower: \nAppointments, \nEmergencies, \nHealing",
                                style: GoogleFonts.montserrat(
                                    fontSize: screenWidth / 12,
                                    fontWeight: FontWeight.bold,
                                    color: prop.rang1Text),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: prop.rang1,
                      foregroundColor: prop.rang1,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      elevation: 4),
                  onPressed: () {
                    showModalBottomSheet(
                      backgroundColor: prop.rang5,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      elevation: 10,
                      context: context,
                      builder: (BuildContext context) {
                        return loginPage();
                      },
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      AppLocalizations.of(context).login,
                      style: GoogleFonts.montserrat(
                        fontSize: screenWidth / 15,
                        fontWeight: FontWeight.bold,
                        color: prop.rang5,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40, right: 10),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          DialogRoute(
                            context: context,
                            builder: (context) => languageSelect(),
                          ),
                        );
                      },
                      child: Text(
                        "Eng/हा",
                        style: GoogleFonts.montserrat(
                          // fontWeight: FontWeight.bold,
                          fontSize: screenheight / 35,
                          color: prop.rang5,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
