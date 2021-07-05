import 'package:flutter/material.dart';
import 'package:loginn_page/utils/routes.dart';

class LoginPage extends StatefulWidget {     // jab bhi present UI mei kuch change krwana ho mtlb koe static text change kwana ho toh hum yeh cheez use krenge
                        
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/download.jpg"),

          SizedBox(
            height: 20.0,
          ),

          Text(
            "Welcome $name",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 26, horizontal: 36),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter username", labelText: "Username"),
                  onChanged: (value) {   //yeh ek call back dega mtlb jo bhi change hoga woh iss value mei aajagea
                   
                    setState(() {
                      name = value;  //yeh jaise hi call hota hai toh UI ko change krdeta hai mtlb build mthod ko vapis change krdta kuc bhi change krwana hai state mei toh yeh cheez jarur likhni hai
                    });
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter password",
                    labelText: "Password",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),

          InkWell(   //agr koe bhi widget clickable mtlb onlick lgwana ahi toh yeh use krenge
            
            onTap: () async {   //onclick listener   (async use kra hai because handler class jaise use krenge)
            
              await Future.delayed(Duration(seconds: 12));    //handler class jaisa hota hai ye
               Navigator.pushNamed(context, MyRoutes.homeRoute);  //2 sec baad yeh cheez chlegi
            },
            child: Container(   //agar khud ka koe widget banana hai toh conainer use krenge
              
              width: 150,
              alignment: Alignment.center,
              height: 40,
              child: changeButton
                  ? Icon(
                      Icons.done,
                      color: Colors.white,
                    )
                  : Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
              decoration: BoxDecoration(   //isme decorations use krte to decorate container
                  
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8)),
            ),
          ),

          // ElevatedButton(
          //     child: Text("Login"),
          //     style: TextButton.styleFrom(minimumSize: Size(150, 30)),
          //     onPressed: () {
          //         Navigator.pushNamed(context, MyRoutes.homeRoute);
          //     },
          // ),
        ],
      ),
    );
  }
}
