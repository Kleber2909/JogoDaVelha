import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:jogo_da_velha/src/jogo/JogoController.dart';

class JogoHome extends StatefulWidget {
  JogoHome({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _JogoHome createState() => _JogoHome();
}

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

_positioned(double top, double left, double width, double height, double rotation){
  return  
    Positioned(
        top: top,
        left: left,
        width: width,
        height: height,
        child: RotationTransition(
          turns: AlwaysStoppedAnimation(rotation / 360),
          child: Container(color:  Colors.green),
        )
    );
}

class _JogoHome extends State<JogoHome> {
  JogoCotroller jogoCotroller = JogoCotroller();

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
                                    jogoCotroller.button1Action,
                                    jogoCotroller.icon1);
                              }),
                              Observer(builder: (_) {
                                return _gestureDetector(5, 5, 2,
                                    jogoCotroller.button2Action,
                                    jogoCotroller.icon2);
                              }),
                              Observer(builder: (_) {
                                return _gestureDetector(0, 5, 3,
                                    jogoCotroller.button3Action,
                                    jogoCotroller.icon3);
                              }),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Observer(builder: (_) {
                                return _gestureDetector(5, 5, 4,
                                    jogoCotroller.button4Action,
                                    jogoCotroller.icon4);
                              }),
                            Observer(builder: (_) {
                                return _gestureDetector(5, 5, 5,
                                    jogoCotroller.button5Action,
                                    jogoCotroller.icon5);
                              }),
                            Observer(builder: (_) {
                                return _gestureDetector(0, 5, 6,
                                    jogoCotroller.button6Action,
                                    jogoCotroller.icon6);
                              }),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Observer(builder: (_) {
                                return _gestureDetector(5, 0, 7,
                                    jogoCotroller.button7Action,
                                    jogoCotroller.icon7);
                              }),
                              Observer(builder: (_) {
                                return _gestureDetector(5, 0, 8,
                                    jogoCotroller.button8Action,
                                    jogoCotroller.icon8);
                              }),
                              Observer(builder: (_) {
                                return _gestureDetector(0, 0, 9,
                                    jogoCotroller.button9Action,
                                    jogoCotroller.icon9);
                              }),
                            ],
                          ),
                        
                        ],
                      ),
                    ),
                    
                    _positioned(52, 10, 300, 5, 0),
                    _positioned(158, 10, 300, 5, 0),
                    _positioned(262, 10, 300, 5, 0),

                    _positioned(10, 52, 5, 300, 0),
                    _positioned(10, 158, 5, 300, 0),
                    _positioned(10, 262, 5, 300, 0),

                    _positioned(158, null, 400, 5, 45),
                    _positioned(158, null, 400, 5, 135),

                  ],
                ),
                Padding(
                      padding: EdgeInsets.only(top: 10), 
                      child: _gestureDetector(0, 0, 0,
                          jogoCotroller.buttinClean,
                          Icon(Icons.clear_all, size: 60,)),
                    ),
              ],
            ),
        ));
  }
}
