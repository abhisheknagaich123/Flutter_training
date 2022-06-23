import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Day12 extends StatelessWidget {
  const Day12({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(appBar: AppBar(),
    body: SafeArea(
      child: Container
      ( height: 300,width: 400,color: Colors.amberAccent, margin:EdgeInsets.all(40),padding: EdgeInsets.all(20),
        child: Center(child: Text('This is abhishek', style:TextStyle(backgroundColor: Colors.black26),))),
    ),),
    );
    
  }
}