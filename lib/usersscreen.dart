import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 class UserModel{
   final int id;
   final String name, phone;
   UserModel({
     required this.id,
     required this.phone,
     required this.name,
   }
   );

 }
class usersscreen extends StatelessWidget {
   List<UserModel> users = [
     UserModel(id: 1, phone:'0111111' , name:'Ahmed Mohamed' ),
     UserModel(id: 2, phone:'022222' , name:'Mohamed Hamed' ),
     UserModel(id: 3, phone:'0123141' , name:'Abdo Mohsen' ),
     UserModel(id: 4, phone:'01563463' , name:'Waleed Reda' ),
     UserModel(id: 1, phone:'0111111' , name:'Ahmed Mohamed' ),
     UserModel(id: 2, phone:'022222' , name:'Mohamed Hamed' ),
     UserModel(id: 3, phone:'0123141' , name:'Abdo Mohsen' ),
     UserModel(id: 4, phone:'01563463' , name:'Waleed Reda' ),







   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'users',
        ),
      ),
      body:ListView.separated(itemBuilder: (context, index) => buildUserItem(users[index]),
          separatorBuilder: (context,index) => Container(
            width: double.infinity,
            height: 1,
            color: Colors.blue[300],
          ), itemCount: users.length) ,
    );
  }
  Widget buildUserItem(UserModel user) => Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25,
          child: Text(
            '${user.id}',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),

        ),
        SizedBox(
          width: 20,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${user.name}',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${user.phone}',
              style: TextStyle(
                color: Colors.grey,
              ),
            )
          ],
        )
      ],
    ),
  );
}
