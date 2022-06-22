
import 'package:flutter/material.dart';
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
       home: Scaffold(
        appBar: AppBar(title: const Text('Abhishek Nagaich\n2115990003'),
        backgroundColor: Color.fromARGB(255, 218, 176, 53),
        centerTitle: true,),
        body:Center(
          child: SafeArea(child: Column (mainAxisAlignment: MainAxisAlignment.center, children: const [
            Image(image: 
            AssetImage('images/google1.png'))
            ,Text('Google Search Engine',style: TextStyle(fontSize: 26 ),)
          ],)),
        )

        )
   );
    
  }
}
