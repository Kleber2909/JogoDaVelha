import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'JogoController.dart';

class SelectPlayers extends StatelessWidget {
  final _jogoController = GetIt.I.get<JogoCotroller>();
  

  //SingingCharacter _character = SingingCharacter.lafayette;
  @override
  Widget build(BuildContext context) {
        
    return Container(
              padding: EdgeInsets.only(top: 5), 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[              
                  Text("2 Jogadores"),
                  Observer(builder: (_) {
                    return Checkbox(

                      value: _jogoController.twoPayers.value,
                      onChanged: (value) => _jogoController.setTwoPayers(),
                    );}
                  ),
                ],
              )
            );
  }

}