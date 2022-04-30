import 'package:flutter/material.dart';
import 'package:whatsappclone/HomeScreen.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "OpenSans",
        primaryColor: Color(0xFF075E54),
          colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: Color(0xFF128C7E),),
      ),
      home: HomeScreen(),
    );
  }
}