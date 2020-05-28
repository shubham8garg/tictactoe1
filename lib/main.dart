import 'package:flutter/material.dart';
import 'package:tictactoe1/home_page.dart';

void main()=> runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black),
      title: 'Tic Tac Toe',
      home: HomePage(),
    );
  }
}