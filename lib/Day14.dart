import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Day14 extends StatelessWidget {
  const Day14({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: 
    Scaffold(appBar: AppBar(title: Text('Button navigatior'),),
    body: Center(child: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.download,size:(24.0)), label: Text('download'))),)
    
  
  );
  }
}