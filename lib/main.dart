import 'package:flutter/material.dart';
import 'package:jogo_da_velha/src/jogo/JogoHome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final title = 'Jogo da velha';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: JogoHome(title: title),
    );
  }
}
