

// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_application_1/Editing/Editing.dart';
// import 'package:image_picker/image_picker.dart';

// class Img extends StatelessWidget {
  
//   const Img({Key? key, } ) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: IconButton(
//           icon: const Icon(
//             Icons.upload_file,
//           ),
//           onPressed: () async {
//             XFile? file = await ImagePicker().pickImage(
//               source: ImageSource.gallery,
//             );
//             if (file != null) {
//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (context) => Editing(
//                     selectedImage: file.path,
//                   ),
//                 ),
//               );
//             }
//           },
//         ),
//       ),
//     );

//   }
// }