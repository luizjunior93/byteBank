import 'package:byteBankTwo/screns/Dashdoard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ByteBankTwoApp());

  //findAll().then((contacts) => debugPrint(contacts.toString()));
}

class ByteBankTwoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Dashboard(),
    );
  }
}