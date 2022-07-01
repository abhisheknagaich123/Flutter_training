import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class GroupButton extends StatefulWidget {
  const GroupButton({Key? key}) : super(key: key);

  @override
  State<GroupButton> createState() => _GroupButtonState();
}

class _GroupButtonState extends State<GroupButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Scaffold(
      appBar: AppBar(title: Text("Group button")),
      body: Column(
        children: [
          CheckboxGroup(labels: 
          [
            'onion',
            'black olive',
            'musrooms',
            'corn',
            'soya'
          ]
          )
        ],
      ),
     ),
    );
  }
}