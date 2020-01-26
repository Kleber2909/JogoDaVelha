import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:jogo_da_velha/src/jogo/JogoController.dart';
import 'package:jogo_da_velha/src/jogo/JogoHome.dart';

void main() {
  GetIt getIt = GetIt.I;
  getIt.registerSingleton<JogoCotroller>(JogoCotroller());

  runApp(MyApp());
} 

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
