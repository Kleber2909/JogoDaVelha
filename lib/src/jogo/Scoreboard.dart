import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import 'JogoController.dart';


class Scoreboard extends StatelessWidget {
  final _jogoController = GetIt.I.get<JogoCotroller>();

  @override
  Widget build(BuildContext context) {
  
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: Column(
          children: <Widget>[
            Row( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.clear, 
                  color: Colors.greenAccent,
                  size: 50,
                ), 
                Observer(builder: (_) {
                  return Text(_jogoController.player1.value.toString(), style: TextStyle(fontSize: 30, ),);
                }),          
                SizedBox(width: 15,),
                Text("vs", style: TextStyle(fontSize: 20, ),),
                SizedBox(width: 15,),
                Observer(builder: (_){
                  return Text(_jogoController.player2.value.toString(), style: TextStyle(fontSize: 30, ),);
                }),
                SizedBox(width: 5,),
                Icon( Icons.radio_button_unchecked,
                  color: Colors.redAccent,
                  size: 47,
                )
              ],
            ),
            InkWell(
                    onTap: _jogoController.cleanScoreboard,
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
                          Icon(Icons.clear_all, color: Colors.green,),
                          SizedBox(width: 5,),
                          Text("Zerar placar", 
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ), 
                          )
                        ],
                      ),
                    ),
                  )
          ],
      )
    );
  }

}