import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SI_Calculator extends StatefulWidget {
  const SI_Calculator({Key? key}) : super(key: key);

  @override
  State<SI_Calculator> createState() => _SI_CalculatorState();
}

class _SI_CalculatorState extends State<SI_Calculator> {
  TextEditingController _principal=TextEditingController();
   TextEditingController _rate=TextEditingController();
    TextEditingController _year=TextEditingController();
    String displayResult = "";


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("SI Calculator"),),
    body: Container(
      margin: EdgeInsets.all(20),
      
          child: ListView(
            children: [
             Center(
                child:Image(image: AssetImage('images/rupee.png'),width: 100,height: 150,),
             )

              ,SizedBox(
                height: 20,
              ),

              TextField(
            
               controller:_principal,
               
                decoration: InputDecoration(
                 
                  labelText: "Princaple",
                  
                  labelStyle: TextStyle(fontSize: 24, color: Colors.red),
                 border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  

                ),
                keyboardType: TextInputType.number,

              ),
              SizedBox(
                height: 20,
              ),

              TextField(
              controller:_rate,
               
                decoration: InputDecoration(
                 
                  labelText: "Rate",
                  
                  labelStyle: TextStyle(fontSize: 24, color: Colors.red),
                 border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),

                ),
                keyboardType: TextInputType.number,

              ),
              SizedBox(
                height: 20,
              ),

              TextField(
               controller: _year,
               
                decoration: InputDecoration(
                 
                  labelText: "Time",
                  
                  labelStyle: TextStyle(fontSize: 24, color: Colors.red),
                 border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),

                ),
                keyboardType: TextInputType.number,

              ),
              SizedBox(
                height: 40,
              ),
             Row(
              
              children: [

                
                 Expanded(
                   child: ElevatedButton(onPressed: (){
                             setState(() {
                               displayResult=_cal();
                             });
                               }, child: Text('Calculate')),
                 )
              
             
 ,           SizedBox(
              width: 20,
              ),
              Expanded(
                child: ElevatedButton(onPressed: (){
                  setState(() {
                    _principal.text='';
                    _rate.text='';
                    _year.text='';
                  });
                }, child: Text('RESET')),
              )
            ,
              ],
             )
             , SizedBox(height: 20,)
             ,Text(displayResult, style: TextStyle(fontWeight: FontWeight.bold),)
           
            ]
   )

       )
     )
      );
  }



String _cal(){
  double P=double.parse(_principal.text);
  double r=double.parse(_rate.text);
  double t=double.parse(_year.text);
double Total= P+((P*r*t)/100);
 String result =
        'After $t  years, Your Investment will be worth $Total Rupees';

return  result;
}
}