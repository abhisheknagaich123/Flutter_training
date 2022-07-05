import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class User_Login extends StatefulWidget {
  const User_Login({Key? key}) : super(key: key);

  @override
  State<User_Login> createState() => _User_LoginState();
}

class _User_LoginState extends State<User_Login> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
   final firebase = FirebaseFirestore.instance;

   void create() async {
    try {
      await firebase.collection("user").doc(name.text).set({
        "name": name.text,
        "email": email.text,
      });
    } catch (e) {
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text('Please Login')),
      body:  Padding(
        padding: const EdgeInsets.all(40.0),
        child: ListView(
          children: [
             SizedBox(
              height: 60,
            ),
            Text('Login',style: TextStyle(fontSize: 40,fontWeight: FontWeight. bold),),
            SizedBox(
              height: 40,
            ),
            TextField(
             
              controller: name,
              decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: "Student Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
            
              controller: email,
              decoration: InputDecoration(
                  icon: Icon(Icons.email),
                  hintText: "Enter Email Address",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 20,
            ),
            
         ElevatedButton(onPressed: (){
                     create();
                      name.clear();
                      email.clear();

         }, child: Text('Login'))

          ],
        ),
      ),
    ); 
  }
}