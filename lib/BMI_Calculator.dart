import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMI_Calculator extends StatefulWidget {
  const BMI_Calculator({Key? key}) : super(key: key);

  @override
  State<BMI_Calculator> createState() => _BMI_CalculatorState();
}

class _BMI_CalculatorState extends State<BMI_Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
            child: Text('BMI Calculator')),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
               children: [
                 Expanded(
                   child: Container(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Icon(Icons.male, size: 80,),
                         SizedBox(
                           height: 20,
                         ),
                         Text('MALE',
                         style: TextStyle(fontSize: 30, color: Colors.white),
                         )
                       ],
                     ),
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15,),
                       color: Colors.indigo[600],
                     ),
                   ),
                 ),
                 SizedBox(width: 20,),
                 Expanded(
                   child: Container(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Icon(Icons.female, size: 80,),
                         SizedBox(
                           height: 20,
                         ),
                         Text('FEMALE',
                           style: TextStyle(fontSize: 30, color: Colors.white),
                         )
                       ],
                     ),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15,),
                       color: Colors.indigo[600],
                     ),
                   ),
                 ),

               ],
              ),
            ),
          ),
          SizedBox(height: 25,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('Height',
                  style: TextStyle(fontSize: 40,
                  color: Colors.white,
                  ),),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text('180',
                        style: TextStyle(fontSize: 35,
                        color: Colors.white
                        ),
                        ),
                        Text('cm',
                          style: TextStyle(fontSize: 20,
                          color: Colors.white,
                          ),),

                      ],
                    ),
                    Slider(value: 150,
                        min: 100,
                        max: 200,
                        onChanged: (value){
                          print(value.round());
                        }),

                  ],

                ),
                decoration: BoxDecoration(color: Colors.indigo[600],
                    borderRadius: BorderRadius.circular(15)),

              ),
            ),
          ),
          SizedBox(height: 25,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                      color: Colors.indigo[600]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Weight',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),),
                          Text('60',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              FloatingActionButton(onPressed: (){},
                              mini: true,
                              child: Icon(Icons.remove) ,),
                              SizedBox(
                                width: 15,
                              ),
                              FloatingActionButton(onPressed: (){},
                              mini: true,
                               child: Icon(Icons.add),)
                            ]
                          ),


                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 40,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                      color: Colors.indigo[600]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Text('Age',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),),
                          Text('60',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: (){},
                                mini: true,
                                child: Icon(Icons.remove,),
                              ),
                              SizedBox(width: 15,),
                              FloatingActionButton(onPressed: (){},
                              mini: true,
                                child: Icon(Icons.add),
                              )
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ],

              ),
            ),
          ),

          Container(
            width: double.infinity,
            child: MaterialButton(onPressed: (){},
            child: Text('Calculate',
            style: TextStyle(fontSize: 30
            ,
            color: Colors.white),),
              height: 55,
              color: Colors.indigo[600],
            ),
          ),


        ],
      ),
    );
  }
}
