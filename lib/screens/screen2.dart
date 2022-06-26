import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class screen2 extends StatelessWidget {
  String? title;
   screen2 ({Key? key,this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title!),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton
          (onPressed: (){
            Navigator.pop(context);
          }, child: Text('go to screen0')),),
      ),
    );
  }
}