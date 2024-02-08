import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/homePage/homePage.dart';
import 'package:flutter_application_1/loginSignin/signupPage.dart';
import 'package:flutter_application_1/personalInfo/personalInfo.dart';
import 'package:flutter_application_1/properties/prop.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/properties/prop.dart' as prop;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class loginPage extends StatefulWidget {
  loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  // variable

  // text controllers
  var phoneNumberController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // size variable
    double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    // register
    void login() async {
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
      } on FirebaseAuthException catch (e) {
        if (e.code == "user-not-found") {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => homePage(),
            ),
          );
        }
      }
    }

    // signout
    // void signUserOut() async {
    //   FirebaseAuth.instance.signOut();
    // }

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: rang1,
      body: Container(
        height: screenheight,
        width: screenWidth,
        child: Center(
          child: ListView(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: screenheight * 0.05, bottom: screenheight * 0.05),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        AppLocalizations.of(context).login,
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth * 0.1,
                          color: prop.rang5,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: screenheight * 0.04,
                          left: 20,
                          right: 20,
                        ),
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 0,
                                color: prop.rang5,
                              ),
                            ),
                            fillColor: prop.rang1,
                            focusColor: prop.rang2,
                            labelText: AppLocalizations.of(context).email,
                            helperText: '',
                            filled: true,
                          ),
                          style: GoogleFonts.montserrat(
                            // fontWeight: FontWeight.bold,
                            fontSize: screenWidth * 0.05,
                            color: rang5,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                          right: 20,
                        ),
                        child: TextField(
                          obscureText: true,
                          controller: passwordController,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 0,
                                color: prop.rang5,
                              ),
                            ),
                            fillColor: prop.rang1,
                            focusColor: prop.rang2,
                            labelText: AppLocalizations.of(context).password,
                            helperText: '',
                            // filled: true,
                          ),
                          style: GoogleFonts.montserrat(
                            // fontWeight: FontWeight.bold,
                            fontSize: screenWidth * 0.05,
                            color: rang5,
                          ),
                        ),
                      ),
                      Container(
                        height: screenWidth * 0.15,
                        width: screenWidth * 0.9,
                        decoration: BoxDecoration(
                          color: rang5,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextButton(
                          onPressed: () {
                            login();
                            Navigator.pop(context);
                          },
                          child: Text(
                            AppLocalizations.of(context).login,
                            style: GoogleFonts.montserrat(
                              // fontWeight: FontWeight.bold,
                              fontSize: screenWidth * 0.08,
                              color: rang1,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              AppLocalizations.of(context).no_acc,
                              style: GoogleFonts.montserrat(
                                // fontWeight: FontWeight.bold,
                                fontSize: screenWidth * 0.04,
                                color: rang5,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => signupPage(),
                                  ),
                                );
                              },
                              child: Text(
                                AppLocalizations.of(context).signup,
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.bold,
                                  fontSize: screenWidth * 0.05,
                                  color: rang5,
                                ),
                              ),
                            ),
                            Text(
                              AppLocalizations.of(context).here,
                              style: GoogleFonts.montserrat(
                                // fontWeight: FontWeight.bold,
                                fontSize: screenWidth * 0.04,
                                color: rang5,
                              ),
                            ),
                          ],
                        ),
                      ),
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
