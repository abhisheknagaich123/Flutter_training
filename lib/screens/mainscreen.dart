import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class mainscreen extends StatelessWidget {
  const mainscreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('this is mainscreen'),
      ),
      body: 
 Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'S0');
              },
              child: Text("Screen 0"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'S1');
              },
              child: Text("Screen 1"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'S2');
              },
              child: Text("Screen 2"),
            ),
          ],
        ),
      ),

    );
  }
}