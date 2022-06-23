import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Day11 extends StatelessWidget {
  const Day11({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: Text("hello world"),
      ),
      body: const Text('Ram Ram sa'),)
      
       );
  }
}