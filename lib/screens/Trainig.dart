import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Trainig extends StatefulWidget {
  const Trainig({Key? key}) : super(key: key);

  @override
  State<Trainig> createState() => _TrainigState();
}

class _TrainigState extends State<Trainig> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Hi ,Abhishek Nagaich',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Image(
                image: NetworkImage(
                    'https://media.istockphoto.com/vectors/elegant-blue-and-gold-diploma-certificate-template-vector-id1128426035'),
                width: 400,
                height: 400,
              ),
            ),
            Text(
                'You Have succesfuly complete  Hybrid mobile App development  cuorse.'),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Text('INSTRUCTOR NAME',style: TextStyle(fontWeight: FontWeight. bold),),
              subtitle: Text('Pankaj Kapoor'),
            ),
            Text('Date: 2-7-2022', textDirection: TextDirection.rtl,
)
          ],
        ),
      ),
    );
  }
}
