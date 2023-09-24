import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/homePage/homePage.dart';
import 'package:flutter_application_1/infoPage/infoPage.dart';
import 'package:flutter_application_1/loginSignin/loginPage.dart';

class auth extends StatelessWidget {
  const auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // check if user logged in
          if (snapshot.hasData) {
            return homePage();
            // Navigator.pop(context);
          }

          // user is not logged in
          else {
            return infoPage();
          }
        },
      ),
    );
  }
}
