import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Day12 extends StatelessWidget {
  const Day12({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold
    (body: SafeArea
    (child: Column
    (children: 
    [
      Row(
    children: const [
      Icon(Icons.tap_and_play,size: 50,color:Colors.blue),
    Text('Go to connection settings')],
     ),
     Row(
    children: const [
      Icon(Icons.volume_up,size: 50,color:Colors.blue),
    Text('sounds and vibration')],
     ),
     Row(
    children: const [
      Icon(Icons.display_settings,size: 50,color:Colors.blue),
    Text('Go to display settings')],
     ),
     Row(
    children: const [
      Icon(Icons.apps ,size: 50,color:Colors.blue),
    Text('Go to Apps settings')],
     )
     ,Row(
    children: const [
      Icon(Icons.fingerprint,size: 50,color:Colors.blue),
    Text('Go to fingerprint settings')],
     )
     ],)),),);
    
  }
}