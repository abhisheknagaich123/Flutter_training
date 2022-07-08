// @dart=2.9
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/Bottomnavbar.dart';
import 'package:flutter_application_1/CURDApp.dart';
import 'package:flutter_application_1/Day11.dart';
import 'package:flutter_application_1/Day12.dart';
import 'package:flutter_application_1/Day14.dart';
import 'package:flutter_application_1/Dropdownmenu.dart';
import 'package:flutter_application_1/Editing/Img_upload.dart';
import 'package:flutter_application_1/Editing/filter/Filter_img.dart';
import 'package:flutter_application_1/GroupButton.dart';
import 'package:flutter_application_1/Insta_clone/SignupScreen.dart';
import 'package:flutter_application_1/SI_Calculator.dart';
import 'package:flutter_application_1/Signup2.dart';
import 'package:flutter_application_1/Signup_or_Login/Login.dart';
import 'package:flutter_application_1/User_Login.dart';
import 'package:flutter_application_1/day13.dart';
import 'package:flutter_application_1/pages.dart';
import 'package:flutter_application_1/screens/Trainig.dart';
import 'package:flutter_application_1/screens/mainscreen.dart';
import 'package:flutter_application_1/screens/screen0.dart';
import 'package:flutter_application_1/screens/screen1.dart';
import 'package:flutter_application_1/screens/screen2.dart';
import 'package:flutter_application_1/webview.dart';
import 'package:flutter_application_1/whatssapp.dart';
import 'package:flutter_application_1/get_start.dart';
import 'package:flutter_application_1/Signup_or_Login/Home.dart';

import 'App.dart';
import 'Insta_clone/colors.dart';
import 'Test.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          // Check for Errors
          if (snapshot.hasError) {
            print("Something Went Wrong");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          return MaterialApp(
            title: 'Flutter Firebase EMail Password Auth',
            theme: ThemeData(
              primarySwatch: Colors.deepPurple,
            ),
            debugShowCheckedModeBanner: false,
            home:Filter() ,
          );
        });
  }
}
