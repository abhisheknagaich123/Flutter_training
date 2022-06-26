import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/screen1.dart';

class screen0 extends StatelessWidget {
  String? title='';
   screen0({Key? key,this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title!),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton
          (onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: 
           (context){
            return screen1();
           }
          )
            );
          }, child: Text('go to screen1')),),
      ),
    );
  }
}