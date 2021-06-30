import 'package:flutter/material.dart';

void main() {
  runApp(MyCoolApp());
}

class MyCoolApp extends StatelessWidget {
  const MyCoolApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: Text("This is my first login page"),
          ),
        ),
      ),
    );
  }
}


