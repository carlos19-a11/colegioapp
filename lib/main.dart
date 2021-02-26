import 'package:flutter/material.dart';
import 'package:flutter_application_1/pantallaInicio.dart';
import 'package:flutter_application_1/pantallaInicio.dart';





void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: pantallaInicio() 
    );
  }
}

