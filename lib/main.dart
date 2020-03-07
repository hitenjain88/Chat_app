import 'package:chat_app/screens/home_screen.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Flutter Chat UI",
    home: HomeScreen(),
    theme: ThemeData(
      primaryColor: Colors.red,
      accentColor: Color(0xFFFEF9EB)
    ),
  ));
}