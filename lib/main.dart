// @dart=2.9
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/Bottomnavbar.dart';
import 'package:flutter_application_1/CURDApp.dart';
import 'package:flutter_application_1/Day11.dart';
import 'package:flutter_application_1/Day12.dart';
import 'package:flutter_application_1/Day14.dart';
import 'package:flutter_application_1/Dropdownmenu.dart';
import 'package:flutter_application_1/GroupButton.dart';
import 'package:flutter_application_1/Insta_clone/Login.dart';
import 'package:flutter_application_1/Insta_clone/SignupScreen.dart';
import 'package:flutter_application_1/SI_Calculator.dart';
import 'package:flutter_application_1/User_Login.dart';
import 'package:flutter_application_1/day13.dart';
import 'package:flutter_application_1/screens/Trainig.dart';
import 'package:flutter_application_1/screens/mainscreen.dart';
import 'package:flutter_application_1/screens/screen0.dart';
import 'package:flutter_application_1/screens/screen1.dart';
import 'package:flutter_application_1/screens/screen2.dart';
import 'package:flutter_application_1/webview.dart';
import 'package:flutter_application_1/whatssapp.dart';
import 'package:flutter_application_1/get_start.dart';


import 'App.dart';
import 'Insta_clone/colors.dart';
import 'Test.dart';
void main()async {
  WidgetsFlutterBinding();
 await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
        title: 'Instagram Clone',
     theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: mobileBackgroundColor),
    home:SignupScreen()
  ));
}
//User_Login.dart
//get_start.dart
//main.dart