import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class counter extends StatefulWidget {
  @override
  State<counter> createState() => _counterState();
}

class _counterState extends State<counter> {
  int count = 0;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Container(

             color: Colors.blue[300],
             child: TextButton(onPressed: () {
               setState(() {
                 count--;
                 print(count);
               });

             }, child:
             Text('MINUS', style: TextStyle(color:Colors.black,fontSize: 30, fontWeight: FontWeight.w400),),
             ),
           ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text('$count',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
              ),
            ),
            Container(
              color: Colors.blue[300],
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child:TextButton(onPressed: (){
                  setState(() {
                    count++;
                    print(count);
                  });

                },
                    child: Text('PLUS',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
