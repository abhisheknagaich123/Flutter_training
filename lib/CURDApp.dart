 import 'package:flutter/material.dart';
class CURDApp extends StatefulWidget {
  const CURDApp({Key? key}) : super(key: key);

  @override
  State<CURDApp> createState() => _CURDAppState();
}

class _CURDAppState extends State<CURDApp> 
{
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
 
  void create() {
    try {
      print(name.text);
      print(email.text);
    } catch (e) {
      print(e);
    }
  }
 
  void update() {
    try {
      print("Update Button Pressed");
    } catch (e) {
      print(e);
    }
  }
 
  void delete() {
    try {
      print("Delete Button Pressed");
    } catch (e) {
      print(e);
    }
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Firebase Crud App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: Column(
            children: [
              TextField(
                controller: name,
                decoration: InputDecoration(
                    labelText: "Name",
                    hintText: "Enter Your name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Enter Your Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        create();
                        name.clear();
                        email.clear();
                      },
                      child: Text(
                        "Create",
                        style: TextStyle(fontSize: 18),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        update();
                      },
                      child: Text(
                        "Update",
                        style: TextStyle(fontSize: 18),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        delete();
                      },
                      child: Text(
                        "Delete",
                        style: TextStyle(fontSize: 18),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}