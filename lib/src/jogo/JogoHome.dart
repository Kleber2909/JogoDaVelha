import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:jogo_da_velha/src/jogo/JogoController.dart';

class JogoHome extends StatefulWidget {
  JogoHome({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _JogoHome createState() => _JogoHome();
}

class _JogoHome extends State<JogoHome> {
  JogoCotroller _jogoCotroller = JogoCotroller();


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
                                        _jogoCotroller.button1Action,
                                        _jogoCotroller.icon1);
                                  }),
                                  Observer(builder: (_) {
                                    return _gestureDetector(5, 5, 2,
                                        _jogoCotroller.button2Action,
                                        _jogoCotroller.icon2);
                                  }),
                                  Observer(builder: (_) {
                                    return _gestureDetector(0, 5, 3,
                                        _jogoCotroller.button3Action,
                                        _jogoCotroller.icon3);
                                  }),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Observer(builder: (_) {
                                    return _gestureDetector(5, 5, 4,
                                        _jogoCotroller.button4Action,
                                        _jogoCotroller.icon4);
                                  }),
                                Observer(builder: (_) {
                                    return _gestureDetector(5, 5, 5,
                                        _jogoCotroller.button5Action,
                                        _jogoCotroller.icon5);
                                  }),
                                Observer(builder: (_) {
                                    return _gestureDetector(0, 5, 6,
                                        _jogoCotroller.button6Action,
                                        _jogoCotroller.icon6);
                                  }),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Observer(builder: (_) {
                                    return _gestureDetector(5, 0, 7,
                                        _jogoCotroller.button7Action,
                                        _jogoCotroller.icon7);
                                  }),
                                  Observer(builder: (_) {
                                    return _gestureDetector(5, 0, 8,
                                        _jogoCotroller.button8Action,
                                        _jogoCotroller.icon8);
                                  }),
                                  Observer(builder: (_) {
                                    return _gestureDetector(0, 0, 9,
                                        _jogoCotroller.button9Action,
                                        _jogoCotroller.icon9);
                                  }),
                                ],
                              ),
                            
                            ],
                          ),
                        ),
                        
                         Observer(builder: (_) {
                          return _positioned(52, 10, 300, 5, 0, _jogoCotroller.animateLine1.value);
                         }),
                         Observer(builder: (_) {
                          return _positioned(158, 10, 300, 5, 0, _jogoCotroller.animateLine2.value);
                         }),
                         Observer(builder: (_) {
                          return _positioned(262, 10, 300, 5, 0, _jogoCotroller.animateLine3.value);
                         }),

                         Observer(builder: (_) {
                          return _positioned(10, 52, 5, 300, 0, _jogoCotroller.animateColum1.value);
                         }),
                         Observer(builder: (_) {
                          return _positioned(10, 158, 5, 300, 0, _jogoCotroller.animateColum2.value);
                         }),
                         Observer(builder: (_) {
                          return _positioned(10, 262, 5, 300, 0, _jogoCotroller.animateColum3.value);
                         }),

                         Observer(builder: (_) {
                          return _positioned(158, null, 400, 5, 45, _jogoCotroller.animateDiag1.value);
                         }),
                         Observer(builder: (_) {
                          return _positioned(158, null, 400, 5, 135, _jogoCotroller.animateDiag2.value);
                         }),
                      ],
                    ),
                    
                Padding(
                  padding: EdgeInsets.only(top: 10), 
                  child: _gestureDetector(0, 0, 0,
                      _jogoCotroller.buttonClean,
                      Icon(Icons.clear_all, size: 60,)),
                ),
              ],
            ),
        ));
  }
}
