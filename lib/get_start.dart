import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Test.dart';
import 'package:flutter_application_1/User_Login.dart';

class get_start extends StatelessWidget {
  const get_start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Let GEts Started')),
        body: Container(
            margin: EdgeInsets.all(20),
            child: ListView(children: [
              Center(
                child: Image(
                  image: NetworkImage('https://image.shutterstock.com/image-vector/flat-colorful-design-concept-training-260nw-1271540350.jpg'),
                  width: 400,
                  height: 600,
                ),
              ),
              SizedBox(
                height: 20,
              ),
             ElevatedButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: 
           (context){
            return (User_Login());
           }
          )
            );
             }, child: Text('Get Strat'))
            ]
            )));
  }
}
