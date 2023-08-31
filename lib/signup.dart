import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class signup extends StatelessWidget {
  signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Sign up',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,

              ),

              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText:'Email Address' ,
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                    border: OutlineInputBorder(),

                ),

              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'User name',
                  prefixIcon: Icon(
                    Icons.person,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Mobile Number',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.phone,
                  )

                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                  )

                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Repeat password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.lock
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              )
              ,
              Container(
                width: double.infinity,
                color: Colors.blue,
                child: MaterialButton(onPressed: (){},
                  child: Text('Sign up',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),

                ),
              ),

            ],

          ),
        ),
      ),
    );

  }
}
