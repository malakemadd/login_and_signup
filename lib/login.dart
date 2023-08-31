import 'package:firstfllutterapp/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login extends StatelessWidget {
   var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Login',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,

                ) ,
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                    border: OutlineInputBorder(),

                  ),


                ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: passwordController,
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(
                  Icons.lock,
                ),
                suffixIcon: Icon(
                    Icons.remove_red_eye,
                ),
                border: OutlineInputBorder(),

              ),
            ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: MaterialButton(onPressed: (
                      ){
                    print(passwordController.text);
                    print(emailController.text);
                  },
                  child: Text('Login',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment : MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account?',),
                   TextButton(onPressed: (){
                     Navigator.push(context,
                         MaterialPageRoute(builder: (_) =>  signup()));
                   }
                       , child: Text('Sign up',)
                   )
                  ],

                ),

              ],
            ),
          ),
        ),
      ),

    );
  }
}
