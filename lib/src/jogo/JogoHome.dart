import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:jogo_da_velha/src/jogo/JogoController.dart';
import 'package:jogo_da_velha/src/jogo/Scoreboard.dart';
import 'package:jogo_da_velha/src/jogo/SelectPlayers.dart';

import 'ButtonNewPlayer.dart';

class JogoHome extends StatefulWidget {
  JogoHome({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _JogoHome createState() => _JogoHome();
}

class _JogoHome extends State<JogoHome> {
  final _jogoController = GetIt.I.get<JogoCotroller>();


  _gestureDetector(double right, double bottom, int index, Function onTap, Icon icon) {
  return (GestureDetector(
    onTap: onTap,
    child: Container(
      height: 100,
      width: 100,
      color: Colors.lightBlueAccent,//Color(0xFF40C4FF),
      child: icon,
      margin: EdgeInsets.only(right: right, bottom: bottom),
    ),
  ));
}

_positioned(double top, double left, double width, double height, double rotation, bool animate){
  return  
    Positioned(
          top: top,
          left: left,
          width: animate ? width : 0,
          height: height,
          child: RotationTransition(
            turns: AlwaysStoppedAnimation(rotation / 360),
            child: Container(color:  Colors.green),
          )
      );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[50],
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Scoreboard(),
                    Stack(
                      alignment: Alignment.center,
                      children: <Widget>[

                        Container(
                          height: 320,
                          width: 320,
                          color: Colors.black45,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Observer(builder: (_) {
                                    return _gestureDetector(5,5,1,
                                        _jogoController.button1Action,
                                        _jogoController.icon1);
                                  }),
                                  Observer(builder: (_) {
                                    return _gestureDetector(5, 5, 2,
                                        _jogoController.button2Action,
                                        _jogoController.icon2);
                                  }),
                                  Observer(builder: (_) {
                                    return _gestureDetector(0, 5, 3,
                                        _jogoController.button3Action,
                                        _jogoController.icon3);
                                  }),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Observer(builder: (_) {
                                    return _gestureDetector(5, 5, 4,
                                        _jogoController.button4Action,
                                        _jogoController.icon4);
                                  }),
                                Observer(builder: (_) {
                                    return _gestureDetector(5, 5, 5,
                                        _jogoController.button5Action,
                                        _jogoController.icon5);
                                  }),
                                Observer(builder: (_) {
                                    return _gestureDetector(0, 5, 6,
                                        _jogoController.button6Action,
                                        _jogoController.icon6);
                                  }),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Observer(builder: (_) {
                                    return _gestureDetector(5, 0, 7,
                                        _jogoController.button7Action,
                                        _jogoController.icon7);
                                  }),
                                  Observer(builder: (_) {
                                    return _gestureDetector(5, 0, 8,
                                        _jogoController.button8Action,
                                        _jogoController.icon8);
                                  }),
                                  Observer(builder: (_) {
                                    return _gestureDetector(0, 0, 9,
                                        _jogoController.button9Action,
                                        _jogoController.icon9);
                                  }),
                                ],
                              ),
                            
                            ],
                          ),
                        ),
                        
                         Observer(builder: (_) {
                          return _positioned(52, 10, 300, 5, 0, _jogoController.animateLine1.value);
                         }),
                         Observer(builder: (_) {
                          return _positioned(158, 10, 300, 5, 0, _jogoController.animateLine2.value);
                         }),
                         Observer(builder: (_) {
                          return _positioned(262, 10, 300, 5, 0, _jogoController.animateLine3.value);
                         }),

                         Observer(builder: (_) {
                          return _positioned(10, 52, 5, 300, 0, _jogoController.animateColum1.value);
                         }),
                         Observer(builder: (_) {
                          return _positioned(10, 158, 5, 300, 0, _jogoController.animateColum2.value);
                         }),
                         Observer(builder: (_) {
                          return _positioned(10, 262, 5, 300, 0, _jogoController.animateColum3.value);
                         }),

                         Observer(builder: (_) {
                          return _positioned(158, null, 400, 5, 45, _jogoController.animateDiag1.value);
                         }),
                         Observer(builder: (_) {
                          return _positioned(158, null, 400, 5, 135, _jogoController.animateDiag2.value);
                         }),
                      ],
                    ),
                ButtonNewPlayer(),
                SelectPlayers(),
              ],
            ),
        ));
  }
}
