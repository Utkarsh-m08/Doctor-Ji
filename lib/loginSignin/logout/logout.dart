import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/personalInfo/personalInfo.dart';
import 'package:flutter_application_1/properties/prop.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/properties/prop.dart' as prop;

class logout extends StatefulWidget {
  const logout({super.key});

  @override
  State<logout> createState() => _logoutState();
}

class _logoutState extends State<logout> {
  // signout
  void signUserOut() async {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
