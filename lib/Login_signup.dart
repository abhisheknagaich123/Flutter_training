import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login_signup extends StatefulWidget {
  const Login_signup({Key? key}) : super(key: key);

  @override
  State<Login_signup> createState() => _Login_signupState();
}

class _Login_signupState extends State<Login_signup> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
home: Scaffold(appBar: AppBar(title: Text('This is login button'),)),
    );
  }
}