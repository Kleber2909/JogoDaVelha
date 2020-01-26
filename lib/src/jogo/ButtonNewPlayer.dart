import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'JogoController.dart';


class ButtonNewPlayer extends StatelessWidget {
  final _jogoController = GetIt.I.get<JogoCotroller>();

  @override
  Widget build(BuildContext context) {
  
    return Padding(
      padding: EdgeInsets.only(top: 10), 
      child: InkWell(
        onTap: _jogoController.buttonClean,
        child: Container(
          height: 35,
          width: 120,
          decoration: BoxDecoration(
            border: Border.all(
              width: 3,
              color: Colors.black45,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.add_circle_outline, color: Colors.green,),
              SizedBox(width: 5,),
              Text("Novo jogo", 
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ), 
              )
            ],
          ),
        ),
      )
    );
  }

}