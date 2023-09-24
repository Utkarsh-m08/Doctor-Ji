import 'package:flutter/material.dart';
import 'package:flutter_application_1/homePage/homePage.dart';
import 'package:flutter_application_1/homePage/navBar/navBar.dart';
import 'package:flutter_application_1/homePage/profile.dart';
import 'package:flutter_application_1/personalInfo/personalInfo.dart';
import 'package:flutter_application_1/properties/prop.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/properties/prop.dart' as prop;
import 'package:google_nav_bar/google_nav_bar.dart';

class doctorJiPage extends StatefulWidget {
  const doctorJiPage({super.key});

  @override
  State<doctorJiPage> createState() => _doctorJiPageState();
}

class _doctorJiPageState extends State<doctorJiPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Scaffold(
        body: ListView(children: [
          Align(
            alignment: Alignment(0, 0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: prop.rang1,
                      borderRadius: BorderRadius.only(
                          // bottomLeft: Radius.circular(50),
                          // bottomRight: Radius.circular(50),
                          ),
                    ),
                    height: screenheight * (0.35),
                    width: screenWidth,
                    child: PageView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: screenheight * (0.35),
                            width: screenWidth, // scroll veiw start from here
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                  opacity: 50,
                                  image: AssetImage(
                                      "assets/images/clay-banks-cEzMOp5FtV4-unsplash.jpg"),
                                  fit: BoxFit.cover),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Align(
                                alignment: Alignment(0.5, -0.3),
                                child: Text(
                                  "book an apointmemnmt \n                   with Doctor ji",
                                  style: GoogleFonts.montserrat(
                                    fontSize: screenWidth / 18,
                                    fontWeight: FontWeight.bold,
                                    color: prop.rang1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: screenheight * (0.35),
                            width: screenWidth, // scroll veiw start from here
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                  opacity: 40,
                                  image: AssetImage(
                                      "assets/images/national-cancer-institute-701-FJcjLAQ-unsplash.jpg"),
                                  fit: BoxFit.cover),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(screenWidth / 20),
                              child: Align(
                                alignment: Alignment(0, 1.2),
                                child: Text(
                                  "Find Hospitals Nearby",
                                  style: GoogleFonts.montserrat(
                                    fontSize: screenWidth / 18,
                                    fontWeight: FontWeight.bold,
                                    color: prop.rang5,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: screenheight * (0.35),
                            width: screenWidth, // scroll veiw start from here
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                  opacity: 20,
                                  image: AssetImage(
                                      "assets/images/jesse-orrico-Us3AQvyOP-o-unsplash.jpg"),
                                  fit: BoxFit.cover),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(screenWidth / 20),
                              child: Align(
                                alignment: Alignment(0.9, -0.2),
                                child: Text(
                                  "Get help with SOS\n    Button",
                                  style: GoogleFonts.montserrat(
                                    fontSize: screenWidth / 18,
                                    fontWeight: FontWeight.bold,
                                    color: prop.rang5,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 50, right: 10),
                          child: Container(
                            height: screenWidth * 0.35,
                            width: screenWidth * 0.35,
                            decoration: BoxDecoration(
                              color: prop.rang3,
                              borderRadius: BorderRadius.all(
                                Radius.circular(100),
                              ),
                            ),
                            child: ElevatedButton.icon(
                              icon: Icon(
                                Icons.health_and_safety_outlined,
                                color: prop.rang5,
                              ),
                              style: ElevatedButton.styleFrom(
                                elevation: 5,
                                backgroundColor: prop.rang1,
                                foregroundColor: prop.rang1Text,
                              ),
                              onPressed: () {},
                              label: Text(
                                "Find nearest    hospital",
                                style: GoogleFonts.montserrat(
                                  // fontWeight: FontWeight.bold,
                                  fontSize: screenheight / 45,
                                  color: rang5,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 50),
                          child: Container(
                            height: screenWidth * 0.35,
                            width: screenWidth * 0.35,
                            decoration: BoxDecoration(
                              color: prop.rang3,
                              borderRadius: BorderRadius.all(
                                Radius.circular(100),
                              ),
                            ),
                            child: ElevatedButton.icon(
                              icon: Icon(
                                Icons.emergency_outlined,
                                color: prop.rang5,
                              ),
                              style: ElevatedButton.styleFrom(
                                elevation: 5,
                                backgroundColor: prop.rang1,
                                foregroundColor: prop.rang1Text,
                              ),
                              onPressed: () {},
                              label: Text(
                                "Emergency\n       SOS",
                                style: GoogleFonts.montserrat(
                                  // fontWeight: FontWeight.bold,
                                  fontSize: screenheight / 50,
                                  color: rang5,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Container(
                      height: screenheight * 0.25,
                      width: screenWidth * 0.95,
                      decoration: BoxDecoration(
                        color: prop.rang3,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: ListView(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: prop.rang5,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Doctor Ji:   How can I help You Today",
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold,
                                      fontSize: screenheight / 40,
                                      color: rang1,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: prop.rang3,
                              child: TextField(
                                // minLines: 3, // Set this
                                maxLines: 6, // and this
                                keyboardType: TextInputType.multiline,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 0,
                                      color: prop.rang2,
                                    ),
                                  ),
                                  fillColor: prop.rang1,
                                  focusColor: prop.rang2,
                                  labelText: '',
                                  helperText: '',
                                  // filled: true,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
