import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/pages.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({Key? key}) : super(key: key);

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  int selectitem=0;
  var _page=[home(),about(),app()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(appBar: AppBar(title: Text('bottom nav bar'),
      )
     , body: Center(child: Container(child:_page[selectitem] )),
     bottomNavigationBar: BottomNavigationBar( backgroundColor: Color.fromARGB(255, 33, 114, 35),fixedColor: Colors.white,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
         BottomNavigationBarItem(icon: Icon(Icons.home),label: "Setting"),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "App")
      ]
     , currentIndex: selectitem,
     onTap: (setValue21){
      setState(() {
        selectitem=setValue21;
      });
     },

      ),
      
     )
       ,);
    
  }
}