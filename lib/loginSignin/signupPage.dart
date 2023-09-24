import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/homePage/homePage.dart';
import 'package:flutter_application_1/loginSignin/loginPage.dart';
import 'package:flutter_application_1/personalInfo/personalInfo.dart';
import 'package:flutter_application_1/properties/prop.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/properties/prop.dart' as prop;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class signupPage extends StatefulWidget {
  signupPage({super.key});

  @override
  State<signupPage> createState() => _signupPageState();
}

class _signupPageState extends State<signupPage> {
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
    void register() async {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
      } on FirebaseAuthException catch (e) {
        if (e.code == "user-not-found") {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => homePage(),
            ),
            (e) => false,
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
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Align(
              alignment: Alignment(0, -0.2),
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Column(
                  children: [
                    Text(
                      AppLocalizations.of(context).if_new,
                      style: GoogleFonts.montserrat(
                        fontSize: screenWidth / 18,
                        // fontWeight: FontWeight.bold,
                        color: prop.rang5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 20,
                        bottom: 20,
                      ),
                      child: Text(
                        AppLocalizations.of(context).register,
                        style: GoogleFonts.montserrat(
                          fontSize: screenWidth / 12,
                          fontWeight: FontWeight.bold,
                          color: prop.rang5,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 5, bottom: 0),
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
                          fontSize: screenWidth / 20,
                          color: rang5,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 5,
                        bottom: 0,
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
                          fontSize: screenWidth / 20,
                          color: rang5,
                        ),
                      ),
                    ),
                    Container(
                      height: screenWidth / 7,
                      width: screenWidth * 0.9,
                      decoration: BoxDecoration(
                          color: rang5, borderRadius: BorderRadius.circular(5)),
                      child: TextButton(
                        onPressed: () {
                          register();
                          Navigator.pop(context);
                        },
                        child: Text(
                          AppLocalizations.of(context).signup,
                          style: GoogleFonts.montserrat(
                            // fontWeight: FontWeight.bold,
                            fontSize: screenWidth / 15,
                            color: rang1,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 45, right: 20),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          children: [
                            Text(
                              AppLocalizations.of(context)
                                  .already_have_an_account,
                              style: GoogleFonts.montserrat(
                                // fontWeight: FontWeight.bold,
                                fontSize: screenheight / 40,
                                color: rang5,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => loginPage(),
                                  ),
                                );
                              },
                              child: Text(
                                AppLocalizations.of(context).login,
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.bold,
                                  fontSize: screenheight / 35,
                                  color: rang5,
                                ),
                              ),
                            ),
                            Text(
                              AppLocalizations.of(context).here,
                              style: GoogleFonts.montserrat(
                                // fontWeight: FontWeight.bold,
                                fontSize: screenheight / 40,
                                color: rang5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
