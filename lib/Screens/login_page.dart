import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/download.jpg"
            ),

            SizedBox(
              height: 20.0,
            ),

          Text(
            "Welcome",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),


        Padding(
          padding: const EdgeInsets.symmetric(vertical: 26,horizontal: 36 ),
          child: Column(children: [
             TextFormField(
            decoration: InputDecoration(
              hintText: "Enter username",
              labelText: "Username"
            ),
          ),

            TextFormField(
              obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter password",
              labelText: "Password",
            
              
            ),
          ),
          ],),
        ),
         SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
                child: Text("Login"),
                style: TextButton.styleFrom(),
                onPressed: () {
                    print("Hello world");
                },
            ),
        ],
      ),
    );
  }
}
