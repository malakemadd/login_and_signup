import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed:(){
          print("menu button");
        },
         icon: Icon(Icons.menu,)),
        title: Text(
          'First app',
        ),
        actions: [
          IconButton(onPressed: (){
            print("Hello");
          }, icon: Icon(Icons.notification_add)),
          Icon(
              Icons.search,
          ),
          IconButton(onPressed: (){
            print("hello from icon 2");
          }, icon: Icon(Icons.account_balance_wallet)),
        ],

    ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children:
                  [
                    Image(
        image: NetworkImage('https://th.bing.com/th/id/R.cfc0a740b952d1b32eef93704c29a1d5?rik=%2b7uCyIQsKB0nug&pid=ImgRaw&r=0'),
        height: 300,
        width: 300,
        fit: BoxFit.cover,
      ),
                    Container(
                      width: 300,
                      color: Colors.red,
                      child: Text('Flower',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,


                      ),
                      ),
                    ),

        ]

            ),
            // Expanded(
            //   child: Container(
            //     child: Text(
            //       'First Text',
            //       style: TextStyle(
            //         fontSize: 35.0,
            //         backgroundColor: Colors.amber,
            //       ),
            //     ),
            //   ),
            // ),

            // Expanded(
            //   flex: 2, // byzwd 7agm ta2semto
            //
            //   child: Container(
            //       child: Text('Third text',
            //         style: TextStyle(
            //           fontSize: 35.0,
            //           backgroundColor:Colors.blueAccent,
            //         ),
            //       )
            //   ),
            // ),
          ],
        ),
      ),
    );

    throw UnimplementedError();
  }

}

