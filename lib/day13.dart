// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Day13 extends StatelessWidget {
  const Day13({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(//appBar: AppBar(title: Text('this is a card')),
    body: SafeArea(child: ListView(
      children: [
        Card( shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),color: Colors.indigo,  child: Row(children:
         const [Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSH0aXK-P83T40dRoJKEiZhMq95csyMLxX_cA&usqp=CAU'),width: 100,height: 150,),
        SizedBox(width: 20,),
         // ignore: prefer_const_constructors
         Text('This is your puzz1a')],),),
         
        Card( shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),color: Colors.indigo,  child: Row(children:
         const [Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSH0aXK-P83T40dRoJKEiZhMq95csyMLxX_cA&usqp=CAU'),width: 100,height: 150,),
        SizedBox(width: 20,),
         // ignore: prefer_const_constructors
         Text('This is your puzz1a')],),),
         
        Card( shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),color: Colors.indigo,  child: Row(children:
         const [Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSH0aXK-P83T40dRoJKEiZhMq95csyMLxX_cA&usqp=CAU'),width: 100,height: 150,),
        SizedBox(width: 20,),
         // ignore: prefer_const_constructors
         Text('This is your puzz1a')],),),
         
        Card( shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),color: Colors.indigo,  child: Row(children:
         const [Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSH0aXK-P83T40dRoJKEiZhMq95csyMLxX_cA&usqp=CAU'),width: 100,height: 150,),
        SizedBox(width: 20,),
         // ignore: prefer_const_constructors
         Text('This is your puzz1a')],),),
         
        Card( shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),color: Colors.indigo,  child: Row(children:
         const [Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSH0aXK-P83T40dRoJKEiZhMq95csyMLxX_cA&usqp=CAU'),width: 100,height: 150,),
        SizedBox(width: 20,),
         // ignore: prefer_const_constructors
         Text('This is your puzz1a')],),)
         ,
        Card( shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),color: Colors.indigo,  child: Row(children:
         const [Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSH0aXK-P83T40dRoJKEiZhMq95csyMLxX_cA&usqp=CAU'),width: 100,height: 150,),
        SizedBox(width: 20,),
         // ignore: prefer_const_constructors
         Text('This is your puzz1a')],),)
      ],
    )),),);
  }
}