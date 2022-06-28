import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

// class whatssapp extends StatefulWidget {
//   const whatssapp({Key? key}) : super(key: key);

//   @override
//   State<whatssapp> createState() => _whatssappState();
// }

// class _whatssappState extends State<whatssapp> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(title: Text('Whatssapp'),
//         bottom: const TabBar(tabs: [
//           Tab(icon: Icon(Icons.camera),
//           )
//         ]),
//         ),
//       ),
//     );
//   }
// }
var choices=["Aligarh","Login","logout"];
class whatssapp extends StatelessWidget {
  const whatssapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar( backgroundColor: Color.fromARGB(255, 4, 69, 37), title: Text('Whats app'),
        actions: [
            IconButton(
                onPressed: () {
                  print("Helped Icon Clicked");
                },
                icon: Icon(Icons.search)),
            
            PopupMenuButton(onSelected: (String? newItem) {
              print(newItem);
            }, itemBuilder: (BuildContext context) {
              return choices.map((String myChoice) {
                return PopupMenuItem(
                  child: Text(myChoice),
                  value: myChoice,
                );
              }).toList();
            })
          ],

        bottom: const TabBar( tabs: [
          Tab(
                  icon: Icon(Icons.photo_camera),
                ),
          Tab(
                  text: "Chat",
                ),
                Tab(
                  text: "Status",
                ),
                Tab(
                  text: "Calls",
                ),

        ]),
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                child: TabBarView(children: [
                  Center(child: Text("this is camera"),),
                   Center(child: Text("this is chat"),),
                    Center(child: Text("this is status"),),
                     Center(child: Text("this is Calls"),)
                  
                ]),
              ),
            ),
          ],
        ),

        
         floatingActionButton: FloatingActionButton( backgroundColor: Color.fromARGB(255, 4, 69, 37),
          onPressed: () {
            print("FLoating Action Button Clicked");
          },
          child: Icon(Icons.add),
        ),

      ),
      
    );
  }
  
}