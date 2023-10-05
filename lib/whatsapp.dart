import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class whatsapp extends StatelessWidget {
  const whatsapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Whatsapp',
        style: TextStyle(
          fontSize: 28,
        ),
        ),
        actions: [
          IconButton(onPressed: (){
            print("hello from camera");
    },
        icon:Icon(Icons.camera_alt) ),
          IconButton(onPressed: (){
            print("hello from search");
          },
              icon: Icon(Icons.search) ),
          IconButton(onPressed: (){
            print("hello from more options");
          },
              icon: Icon(Icons.more_vert) ),
        ],

      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,
            ),
            Expanded(
              child: Container(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context,index){
                  return buildscreen();
                },
                  separatorBuilder: (context,index) => SizedBox( height: 15,),
                itemCount: 10,
                ),
              ),
            )
           



          ],
        ),

      ),




    );


  }
  Widget buildscreen() =>   Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CircleAvatar(
        radius: 32,
        backgroundImage: NetworkImage('https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/341329624_1602004423647138_507214984031264044_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=a2f6c7&_nc_eui2=AeGx3hYCJ3SM08jgcbujYJ7vI2uX9Y5gec8ja5f1jmB5z3PeGWwnNYoURlV6FsNGuqm5bNB8XvozCuvYMej_LfMs&_nc_ohc=xIJQ3ekwbAgAX9CEFY7&_nc_ht=scontent-hbe1-1.xx&oh=00_AfBHdqfNvkQyAOOUGE-FnHR-_B0wMZaxt2jwF1968tQLmg&oe=6522F6F5'),
      ),
      SizedBox(
        width: 15,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('Malak Emad',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(
                width: 80,
              ),
              Text('Yesterday'),
            ],
          ),
          Text('Masa2 el fol',
            style: TextStyle(
                fontSize: 18
            ),
          ),
          SizedBox(
            height: 20,
          ),


        ],
      ),
    ],
  );

}
