// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Dropdownmenu extends StatefulWidget {
  const Dropdownmenu({Key? key}) : super(key: key);

  @override
  State<Dropdownmenu> createState() => _DropdownmenuState();
}

class _DropdownmenuState extends State<Dropdownmenu> {
  var cities=["delhi","noida"," UP","aligarh","jaipur"];
  var f1="delhi";
   var choices = ["Inbox", "Sent Items", "Junk-mails", "SignOut", "Help"];

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(title: Text('Drop down menu'),
        actions: [
            IconButton(
                onPressed: () {
                  print("Helped Icon Clicked");
                },
                icon: Icon(Icons.help)),
            TextButton(
                onPressed: () {
                  print("Login Button Clicked");
                },
                // ignore: prefer_const_constructors
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                )),
            PopupMenuButton(onSelected: (String? newItem) {
              print(newItem);
            }, itemBuilder: (BuildContext context) {
              return choices.map((String myChoice) {
                return PopupMenuItem(
                  child: Text(myChoice),
                  value: myChoice,
                );
              }).toList();
            })
          ],

        
        ),
        body: Center(
          child: Column(children: [
            Text('dropdown',style: TextStyle(fontSize: 20,color: Colors.blue),
            ),
            DropdownButton(items: cities.map((String menuitem){
              return DropdownMenuItem(child: Text(menuitem,
              style: TextStyle(fontSize: 20,color: (f1==menuitem)?Colors.green:Colors.black),),
              value: menuitem,);
            }).toList(),onChanged: (String? newiteam){
              setState(() {
                f1=newiteam!;
              });
            },value:f1 ,
            )


          ],),
        ), ),
    );

    
  }
}