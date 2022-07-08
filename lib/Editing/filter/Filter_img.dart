import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Filter'),
        backgroundColor: Color.fromARGB(255, 109, 146, 146),
      ),
      backgroundColor: Colors.black26,
      body: Center(
          child: Container(

        constraints:
            BoxConstraints(maxHeight: size.width, maxWidth: size.width),

            child: PageView.builder(
              itemCount:4 ,
              itemBuilder: (context,index){
              return Image.asset('images/rupee.png',width: size.width,fit: BoxFit.cover,);

            }) 
      ),
      ),
    );
  }
}
