// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_application_1/Editing/Edit_viewModel.dart';

// class Editing extends StatefulWidget {
//   final String selectedImage;
  
//   const Editing({Key? key, required this.selectedImage}) : super(key: key);

//   @override
//   State<Editing> createState() => _EditingState();
// }

// class _EditingState extends viewModel{
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Image.file(
//           File(widget.selectedImage),
//         ),
//       ),
//       floatingActionButton: _addtext,
//     );
//   }

//   @override
//   // TODO: implement widget
//   Widget get _addtext => FloatingActionButton(
//         onPressed: () =>addNewDialog(context),
//         backgroundColor: Colors.white,
//         tooltip:'Add text',
//         child: const Icon(Icons.edit,
//         color: Colors.black,),

//       );
// }
